-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 03:15 PM
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
-- Table structure for table `tbl_program_department`
--

CREATE TABLE `tbl_program_department` (
  `pd_program_abbr` varchar(10) NOT NULL,
  `pd_program_name` varchar(100) NOT NULL,
  `pd_department` varchar(100) NOT NULL,
  `pd_priority_index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_program_department`
--

INSERT INTO `tbl_program_department` (`pd_program_abbr`, `pd_program_name`, `pd_department`, `pd_priority_index`) VALUES
('AEET', 'Associate in Electronics Engineering Technology', 'CSITE', 5),
('BACOMM', 'Bachelor of Arts in Communication', 'SLA', 2),
('BAELS', 'Bachelor of Arts in English Language Studies', 'SLA', 2),
('BAINDIS', 'Bachelor of Arts in International Studies (Diplomacy and International Relations)', 'SLA', 2),
('BAINTS', 'Bachelor of Arts in International Studies (Japanese Studies)', 'SLA', 2),
('BAPHILO', 'Bachelor of Arts in Philosophy', 'SLA', 2),
('BEED', 'Bachelor of Elementary Education', 'SED', 4),
('BPED', 'Bachelor of Physical Education', 'SED', 4),
('BSAC', 'Bachelor of Science in Accountancy', 'SMA', 3),
('BSBA', 'Bachelor of Science in Business Administration', 'SMA', 3),
('BSBIO', 'Bachelor of Science in Biology', 'CSITE', 5),
('BSBME', 'Bachelor of Science in Biomedical Engineering', 'CSITE', 5),
('BSCE', 'Bachelor of Science in Civil Engineering', 'CSITE', 5),
('BSCPE', 'Bachelor of Science in Computer Engineering', 'CSITE', 5),
('BSCS', 'Bachelor of Science in Computer Science', 'CSITE', 5),
('BSECE', 'Bachelor of Science in Electronics Engineering', 'CSITE', 5),
('BSED', 'Bachelor of Secondary Education', 'SED', 4),
('BSIT', 'Bachelor of Science in Information Technology', 'CSITE', 5),
('BSLM', 'Bachelor of Science in Legal Management', 'SMA', 3),
('BSMA', 'Bachelor of Science in Management Accounting', 'SMA', 3),
('BSMATH', 'Bachelor of Science in Mathematics', 'CSITE', 5),
('BSN', 'Bachelor of Science in Nursing', 'CON', 1),
('BSNMCA', 'Bachelor of Science in New Media and Animation', 'CSITE', 5),
('BSOA', 'Bachelor of Science in Office Administration', 'SMA', 3),
('BSPSY', 'Bachelor of Science in Psychology', 'SLA', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_program_department`
--
ALTER TABLE `tbl_program_department`
  ADD PRIMARY KEY (`pd_program_abbr`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
