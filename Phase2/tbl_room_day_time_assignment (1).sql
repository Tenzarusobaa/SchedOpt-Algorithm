-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2025 at 06:39 AM
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
-- Table structure for table `tbl_room_day_time_assignment`
--

CREATE TABLE `tbl_room_day_time_assignment` (
  `rdta_room_code` varchar(20) NOT NULL,
  `rdta_room_type` varchar(50) DEFAULT NULL,
  `rdta_room_function` varchar(100) DEFAULT NULL,
  `rdta_room_capacity` int(11) DEFAULT NULL,
  `rdta_day_abbr` varchar(10) NOT NULL,
  `rdta_ts_final` varchar(50) NOT NULL,
  `rdta_ts_duration` int(11) DEFAULT NULL,
  `rdta_assignment` varchar(150) GENERATED ALWAYS AS (concat(`rdta_room_code`,': ',`rdta_day_abbr`,', ',`rdta_ts_final`)) STORED
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_room_day_time_assignment`
--
ALTER TABLE `tbl_room_day_time_assignment`
  ADD PRIMARY KEY (`rdta_room_code`,`rdta_day_abbr`,`rdta_ts_final`),
  ADD KEY `fk_rdta_day` (`rdta_day_abbr`),
  ADD KEY `fk_rdta_time` (`rdta_ts_final`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_room_day_time_assignment`
--
ALTER TABLE `tbl_room_day_time_assignment`
  ADD CONSTRAINT `fk_rdta_day` FOREIGN KEY (`rdta_day_abbr`) REFERENCES `tbl_day_slot` (`ds_abbr`),
  ADD CONSTRAINT `fk_rdta_room` FOREIGN KEY (`rdta_room_code`) REFERENCES `tbl_room_data` (`rd_room_code`),
  ADD CONSTRAINT `fk_rdta_time` FOREIGN KEY (`rdta_ts_final`) REFERENCES `tbl_time_slot` (`ts_final`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
