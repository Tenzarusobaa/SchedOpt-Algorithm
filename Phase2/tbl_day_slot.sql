-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 07:21 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schedopt_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_day_slot`
--

CREATE TABLE `tbl_day_slot` (
  `ds_key` int(11) NOT NULL,
  `ds_abbr` varchar(10) DEFAULT NULL,
  `ds_day` varchar(20) DEFAULT NULL,
  `ds_day_type` enum('Single','Pair') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_day_slot`
--

INSERT INTO `tbl_day_slot` (`ds_key`, `ds_abbr`, `ds_day`, `ds_day_type`) VALUES
(1, 'M', 'Monday', 'Single'),
(2, 'T', 'Tuesday', 'Single'),
(3, 'W', 'Wednesday', 'Single'),
(4, 'Th', 'Thursday', 'Single'),
(5, 'F', 'Friday', 'Single'),
(6, 'S', 'Saturday', 'Single'),
(7, 'MTh', 'Monday-Thursday', 'Pair'),
(8, 'TF', 'Tuesday-Friday', 'Pair'),
(9, 'WS', 'Wednesday-Saturday', 'Pair');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_day_slot`
--
ALTER TABLE `tbl_day_slot`
  ADD PRIMARY KEY (`ds_key`),
  ADD UNIQUE KEY `ds_day` (`ds_day`),
  ADD UNIQUE KEY `ds_abbr` (`ds_abbr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_day_slot`
--
ALTER TABLE `tbl_day_slot`
  MODIFY `ds_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
