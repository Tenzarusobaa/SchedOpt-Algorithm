-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 07:11 PM
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
-- Table structure for table `tbl_time_slot`
--

CREATE TABLE `tbl_time_slot` (
  `ts_key` int(11) NOT NULL,
  `ts_start_time` varchar(20) DEFAULT NULL,
  `ts_end_time` varchar(20) DEFAULT NULL,
  `ts_duration` int(11) DEFAULT NULL,
  `ts_final` varchar(50) GENERATED ALWAYS AS (concat(`ts_start_time`,' - ',`ts_end_time`)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_time_slot`
--

INSERT INTO `tbl_time_slot` (`ts_key`, `ts_start_time`, `ts_end_time`, `ts_duration`) VALUES
(1, '8:00 AM', '9:20 AM', 80),
(2, '8:00 AM', '10:00 AM', 120),
(3, '8:00 AM', '10:50 AM', 170),
(4, '9:30 AM', '10:50 AM', 80),
(5, '10:00 AM', '12:00 PM', 120),
(6, '11:00 AM', '12:20 PM', 80),
(7, '12:30 PM', '1:50 PM', 80),
(8, '12:30 PM', '3:20 PM', 170),
(9, '1:00 PM', '3:00 PM', 120),
(10, '2:00 PM', '3:20 PM', 80),
(11, '3:00 PM', '5:00 PM', 120),
(12, '4:30 PM', '5:50 PM', 80),
(13, '6:00 PM', '7:20 PM', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_time_slot`
--
ALTER TABLE `tbl_time_slot`
  ADD PRIMARY KEY (`ts_key`),
  ADD UNIQUE KEY `ts_final` (`ts_final`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_time_slot`
--
ALTER TABLE `tbl_time_slot`
  MODIFY `ts_key` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
