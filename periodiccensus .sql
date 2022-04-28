-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2022 at 04:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `periodiccensus`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `SSN_Officer` int(11) NOT NULL,
  `LOcation` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dataofadmin`
--

CREATE TABLE `dataofadmin` (
  `A_SSN` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `lastName` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataofadmin`
--

INSERT INTO `dataofadmin` (`A_SSN`, `FirstName`, `lastName`) VALUES
(1, 'mohamed', 'Talaat');

-- --------------------------------------------------------

--
-- Table structure for table `dataoffamily`
--

CREATE TABLE `dataoffamily` (
  `F_SSN` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `SSN_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `dataofofficer`
--

CREATE TABLE `dataofofficer` (
  `O_SSN` int(11) NOT NULL,
  `FirstName` varchar(100) NOT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `AD_SSN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataofofficer`
--

INSERT INTO `dataofofficer` (`O_SSN`, `FirstName`, `lastName`, `AD_SSN`) VALUES
(123456, 'hisham', 'anwar', 123);

-- --------------------------------------------------------

--
-- Table structure for table `dataofuser`
--

CREATE TABLE `dataofuser` (
  `U_SSN` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `MaritalStatus` varchar(50) DEFAULT NULL,
  `Address` varchar(150) DEFAULT NULL,
  `MobileNum` int(11) DEFAULT NULL,
  `Sex` varchar(50) DEFAULT NULL,
  `CheckState` int(11) DEFAULT 0,
  `SSN_OFF` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataofuser`
--

INSERT INTO `dataofuser` (`U_SSN`, `Name`, `Age`, `MaritalStatus`, `Address`, `MobileNum`, `Sex`, `CheckState`, `SSN_OFF`) VALUES
(258741, 'hisham', 33, 'single', 'dewrqa', 4785, 'male', 0, 456781),
(123456789, 'mo', 22, 'single', 'sadaf', 100, 'male', 0, 123);

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `ID_admin` int(11) NOT NULL,
  `ID_Officer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`SSN_Officer`);

--
-- Indexes for table `dataoffamily`
--
ALTER TABLE `dataoffamily`
  ADD PRIMARY KEY (`F_SSN`,`SSN_USER`);

--
-- Indexes for table `dataofofficer`
--
ALTER TABLE `dataofofficer`
  ADD PRIMARY KEY (`O_SSN`);

--
-- Indexes for table `dataofuser`
--
ALTER TABLE `dataofuser`
  ADD PRIMARY KEY (`U_SSN`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`ID_admin`,`ID_Officer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
