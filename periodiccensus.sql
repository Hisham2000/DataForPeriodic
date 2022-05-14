-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2022 at 09:45 AM
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
  `Location` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`SSN_Officer`, `Location`) VALUES
(1911, 'Esmaily'),
(147963, 'Barcelona'),
(258741, 'Giza'),
(2583146, 'luxor');

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
  `Name` varchar(100) NOT NULL,
  `AD_SSN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dataofofficer`
--

INSERT INTO `dataofofficer` (`O_SSN`, `Name`, `AD_SSN`) VALUES
(123456, 'hisham', 1234556789),
(147963, 'Messi', 1234556789),
(258741, 'Farouk', 123),
(2583146, 'Ahmed', 123478852);

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
(23, 'msda', 123, 'asd', 'sadf', 124, 'sdaf', 1, 456781),
(25, 'Seed', 2000, 'in RelationShiop', 'Sohag', 147789, 'male', 0, 456781),
(23456, 'hishamAnwar', 258, 'single', 'sdfwer', 123654, 'female', 2, 456781),
(147852, 'hisham', 33, 'Married', 'sdfsdwa', 1223456789, 'male', 0, 145623),
(258741, 'farouk', 33, 'single', 'dewrqa', 4785, 'male', 0, 456781),
(258963, 'hayat', 33, 'single', 'sdqew', 147852, 'female', 0, 456781),
(2014853, 'MOShAna', 253, 'Single', 'swerqafd', 145623, 'Female', 0, 456781),
(2416878, 'MoSalah', 50, 'Sigle', 'Gharbia', 1247889665, 'Female', 0, 456781),
(123456789, 'mo', 35, 'single', 'sadaf', 200, 'male', 0, 123),
(124785693, 'Mahmod', 25, 'Married', 'swq', 174865, 'Male', 0, 456781),
(144562255, 'hitham', 32, 'single', 'sdwer', 124789653, 'male', 0, 456781),
(147253689, 'Fatakat', 21, 'married', 'sdqwe', 234561789, 'female', 0, 456781);

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
