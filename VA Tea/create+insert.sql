-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2022 at 06:27 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vatea`
--

-- --------------------------------------------------------

--
-- Table structure for table `mscustomer`
--

CREATE TABLE `mscustomer` (
  `CustomerID` char(10) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `CustomerGender` varchar(255) NOT NULL,
  `CustomerAddress` varchar(255) NOT NULL,
  `CustomerEmail` varchar(255) NOT NULL,
  `CustomerDOB` date NOT NULL
) ;

--
-- Dumping data for table `mscustomer`
--

INSERT INTO `mscustomer` (`CustomerID`, `CustomerName`, `CustomerGender`, `CustomerAddress`, `CustomerEmail`, `CustomerDOB`) VALUES
('CU001', 'Holyvia Marcella', 'Female', '236 West Avenue Street', 'holyvia@email.com', '1999-03-04'),
('CU002', 'Gabriel Matthew Mintana', 'Male', '456 South Street', 'gabriel@email.com', '2000-09-05'),
('CU003', 'Gratia Honestha Patiung', 'Female', '554 Noble Avenue', 'gratia@email.com', '2003-08-05'),
('CU004', 'Anthony William Chandra', 'Male', '841 White Second Street', 'anthony@email.com', '2002-04-05'),
('CU005', 'Jeremy Loa', 'Male', '614 Green Milton Boulevard', 'jeremy@email.com', '2003-05-01'),
('CU006', 'Wiryahadi Gunawan', 'Male', '12 New Street', 'wiryahadi@email.com', '1998-03-18'),
('CU007', 'Vito Caris Untariady', 'Male', '269 Rocky Freeway', 'vito@email.com', '2004-02-25'),
('CU008', 'Renaldi Addison', 'Male', '657 West Second Avenue', 'renaldi@email.com', '2001-01-02'),
('CU009', 'Justine Winata Purwoko', 'Male', '56 North Old Road', 'tintin@email.com', '1999-04-09'),
('CU010', 'Jonathan Raine Wiranata', 'Male', '87 Milton Street', 'holyvia@email.com', '2002-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `msstaff`
--

CREATE TABLE `msstaff` (
  `StaffID` char(10) NOT NULL,
  `StaffName` varchar(255) NOT NULL,
  `StaffGender` varchar(255) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffSalary` int(10) NOT NULL
) ;

--
-- Dumping data for table `msstaff`
--

INSERT INTO `msstaff` (`StaffID`, `StaffName`, `StaffGender`, `StaffDOB`, `StaffSalary`) VALUES
('ST001', 'Jordy Wira Arta', 'Male', '1997-12-19', 2000000),
('ST002', 'Chelsey', 'Female', '1996-02-06', 5000000),
('ST003', 'Johevin Blesstowi', 'Male', '1993-03-17', 4000000),
('ST004', 'Jason', 'Male', '1996-08-19', 2750000),
('ST005', 'Cathy Belvanita', 'Female', '1994-01-13', 3500000),
('ST006', 'Budiman Wijaya', 'Male', '1995-08-01', 3750000),
('ST007', 'Tegar Abdullah', 'Male', '1999-11-04', 2500000),
('ST008', 'Karvin Nanda', 'Male', '1995-05-25', 3250000),
('ST009', 'Hady Gustianto', 'Male', '1998-08-13', 2250000),
('ST010', 'Chyntia Angelica', 'Female', '1992-10-11', 4750000);

-- --------------------------------------------------------

--
-- Table structure for table `mstea`
--

CREATE TABLE `mstea` (
  `TeaID` char(10) NOT NULL,
  `TeaName` varchar(255) NOT NULL,
  `TeaOrigin` varchar(255) NOT NULL,
  `TeaPrice` int(10) NOT NULL
) ;

--
-- Dumping data for table `mstea`
--

INSERT INTO `mstea` (`TeaID`, `TeaName`, `TeaOrigin`, `TeaPrice`) VALUES
('TA001', 'Black Tea', 'China', 5000),
('TA002', 'Green Tea', 'Japan', 10000),
('TA003', 'Jasmine Tea', 'China', 7500),
('TA004', 'Earl Grey Tea', 'Italy', 15000),
('TA005', 'Pu Erh Tea', 'China', 12500),
('TA006', 'White Tea', 'China', 10000),
('TA007', 'Oolong Tea', 'China', 12500),
('TA008', 'Purple Tea', 'India', 15000),
('TA009', 'Kudzu Tea', 'United States', 10000),
('TA010', 'Kombucha Tea', 'China', 7500);

-- --------------------------------------------------------

--
-- Table structure for table `transactiondetail`
--

CREATE TABLE `transactiondetail` (
  `TransactionID` char(10) NOT NULL,
  `TeaID` char(10) NOT NULL,
  `Quantity` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactiondetail`
--

INSERT INTO `transactiondetail` (`TransactionID`, `TeaID`, `Quantity`) VALUES
('TR001', 'TA002', '2'),
('TR001', 'TA003', '3'),
('TR001', 'TA006', '2'),
('TR002', 'TA003', '1'),
('TR002', 'TA004', '2'),
('TR003', 'TA002', '1'),
('TR004', 'TA003', '1'),
('TR005', 'TA008', '2'),
('TR006', 'TA008', '3'),
('TR007', 'TA009', '1'),
('TR008', 'TA001', '4'),
('TR009', 'TA001', '2'),
('TR010', 'TA002', '2'),
('TR011', 'TA004', '1'),
('TR012', 'TA004', '3'),
('TR012', 'TA005', '1'),
('TR013', 'TA002', '2'),
('TR014', 'TA001', '3'),
('TR014', 'TA009', '1'),
('TR015', 'TA010', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transactionheader`
--

CREATE TABLE `transactionheader` (
  `TransactionID` char(10) NOT NULL,
  `CustomerID` char(10) NOT NULL,
  `StaffID` char(10) NOT NULL,
  `TransactionDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionheader`
--

INSERT INTO `transactionheader` (`TransactionID`, `CustomerID`, `StaffID`, `TransactionDate`) VALUES
('TR001', 'CU001', 'ST002', '2021-04-08'),
('TR002', 'CU003', 'ST003', '2021-08-06'),
('TR003', 'CU004', 'ST004', '2021-08-14'),
('TR004', 'CU002', 'ST004', '2021-10-15'),
('TR005', 'CU003', 'ST005', '2021-10-25'),
('TR006', 'CU007', 'ST004', '2022-01-28'),
('TR007', 'CU006', 'ST006', '2022-02-14'),
('TR008', 'CU005', 'ST007', '2022-02-18'),
('TR009', 'CU006', 'ST008', '2022-03-04'),
('TR010', 'CU003', 'ST008', '2022-03-08'),
('TR011', 'CU009', 'ST009', '2022-03-16'),
('TR012', 'CU007', 'ST002', '2022-04-08'),
('TR013', 'CU010', 'ST005', '2022-06-11'),
('TR014', 'CU009', 'ST001', '2022-06-15'),
('TR015', 'CU010', 'ST004', '2022-07-01');

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
-- Indexes for table `mstea`
--
ALTER TABLE `mstea`
  ADD PRIMARY KEY (`TeaID`);

--
-- Indexes for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD PRIMARY KEY (`TransactionID`,`TeaID`),
  ADD KEY `detail_tea_id_foreign` (`TeaID`);

--
-- Indexes for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD PRIMARY KEY (`TransactionID`),
  ADD KEY `transaction_customer_id_foreign` (`CustomerID`),
  ADD KEY `transaction_staff_id_foreign` (`StaffID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactiondetail`
--
ALTER TABLE `transactiondetail`
  ADD CONSTRAINT `detail_tea_id_foreign` FOREIGN KEY (`TeaID`) REFERENCES `mstea` (`TeaID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaction_id_foreign` FOREIGN KEY (`TransactionID`) REFERENCES `transactionheader` (`TransactionID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transactionheader`
--
ALTER TABLE `transactionheader`
  ADD CONSTRAINT `transaction_customer_id_foreign` FOREIGN KEY (`CustomerID`) REFERENCES `mscustomer` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaction_staff_id_foreign` FOREIGN KEY (`StaffID`) REFERENCES `msstaff` (`StaffID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
