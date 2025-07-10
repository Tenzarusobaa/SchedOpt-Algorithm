-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2025 at 07:51 AM
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
-- Table structure for table `tbl_final_assignment`
--

CREATE TABLE `tbl_final_assignment` (
  `fa_course_section` varchar(50) NOT NULL,
  `fa_program_section` varchar(100) DEFAULT NULL,
  `fa_student_count` int(11) DEFAULT NULL,
  `fa_department` varchar(50) DEFAULT NULL,
  `fa_room_code` varchar(20) NOT NULL,
  `fa_day_abbr` varchar(10) NOT NULL,
  `fa_final_timeslot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_final_assignment`
--
ALTER TABLE `tbl_final_assignment`
  ADD PRIMARY KEY (`fa_course_section`,`fa_room_code`,`fa_day_abbr`,`fa_final_timeslot`),
  ADD KEY `fk_fa_room_day_time` (`fa_room_code`,`fa_day_abbr`,`fa_final_timeslot`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_final_assignment`
--
ALTER TABLE `tbl_final_assignment`
  ADD CONSTRAINT `fk_fa_course_section` FOREIGN KEY (`fa_course_section`) REFERENCES `tbl_course_section` (`cs_course_section`),
  ADD CONSTRAINT `fk_fa_room_day_time` FOREIGN KEY (`fa_room_code`,`fa_day_abbr`,`fa_final_timeslot`) REFERENCES `tbl_room_day_time_assignment` (`rdta_room_code`, `rdta_day_abbr`, `rdta_ts_final`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
