-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 03:07 PM
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
-- Table structure for table `tbl_forecasted_enrolled`
--

CREATE TABLE `tbl_forecasted_enrolled` (
  `fe_program_abbr` varchar(10) NOT NULL,
  `fe_department` varchar(100) NOT NULL,
  `fe_year_level` int(11) NOT NULL,
  `fe_enrolled_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_forecasted_enrolled`
--

INSERT INTO `tbl_forecasted_enrolled` (`fe_program_abbr`, `fe_department`, `fe_year_level`, `fe_enrolled_count`) VALUES
('AEET', 'CSITE', 1, 15),
('AEET', 'CSITE', 2, 11),
('AEET', 'CSITE', 3, 9),
('BACOMM', 'SLA', 1, 10),
('BACOMM', 'SLA', 2, 8),
('BACOMM', 'SLA', 3, 9),
('BACOMM', 'SLA', 4, 16),
('BAELS', 'SLA', 1, 5),
('BAELS', 'SLA', 2, 5),
('BAELS', 'SLA', 3, 1),
('BAELS', 'SLA', 4, 1),
('BAINDIS', 'SLA', 1, 5),
('BAINDIS', 'SLA', 2, 2),
('BAINDIS', 'SLA', 3, 7),
('BAINDIS', 'SLA', 4, 3),
('BAINTS', 'SLA', 1, 12),
('BAINTS', 'SLA', 2, 8),
('BAINTS', 'SLA', 3, 15),
('BAINTS', 'SLA', 4, 6),
('BAPHILO', 'SLA', 1, 5),
('BAPHILO', 'SLA', 2, 7),
('BAPHILO', 'SLA', 3, 7),
('BAPHILO', 'SLA', 4, 4),
('BEED', 'SED', 1, 43),
('BEED', 'SED', 2, 4),
('BEED', 'SED', 3, 9),
('BEED', 'SED', 4, 13),
('BPED', 'SED', 1, 6),
('BPED', 'SED', 2, 6),
('BPED', 'SED', 3, 6),
('BPED', 'SED', 4, 9),
('BSAC', 'SMA', 1, 110),
('BSAC', 'SMA', 2, 94),
('BSAC', 'SMA', 3, 113),
('BSAC', 'SMA', 4, 68),
('BSBA', 'SMA', 1, 51),
('BSBA', 'SMA', 2, 68),
('BSBA', 'SMA', 3, 66),
('BSBA', 'SMA', 4, 72),
('BSBIO', 'CSITE', 1, 40),
('BSBIO', 'CSITE', 2, 42),
('BSBIO', 'CSITE', 3, 32),
('BSBIO', 'CSITE', 4, 16),
('BSBME', 'CSITE', 1, 20),
('BSBME', 'CSITE', 2, 21),
('BSBME', 'CSITE', 3, 13),
('BSBME', 'CSITE', 4, 7),
('BSCE', 'CSITE', 1, 60),
('BSCE', 'CSITE', 2, 49),
('BSCE', 'CSITE', 3, 49),
('BSCE', 'CSITE', 4, 49),
('BSCPE', 'CSITE', 1, 20),
('BSCPE', 'CSITE', 2, 16),
('BSCPE', 'CSITE', 3, 20),
('BSCPE', 'CSITE', 4, 21),
('BSCS', 'CSITE', 1, 30),
('BSCS', 'CSITE', 2, 26),
('BSCS', 'CSITE', 3, 21),
('BSCS', 'CSITE', 4, 11),
('BSECE', 'CSITE', 1, 20),
('BSECE', 'CSITE', 2, 9),
('BSECE', 'CSITE', 3, 10),
('BSECE', 'CSITE', 4, 7),
('BSED', 'SED', 1, 23),
('BSED', 'SED', 2, 23),
('BSED', 'SED', 3, 31),
('BSED', 'SED', 4, 26),
('BSIT', 'CSITE', 1, 40),
('BSIT', 'CSITE', 2, 33),
('BSIT', 'CSITE', 3, 22),
('BSIT', 'CSITE', 4, 36),
('BSLM', 'SMA', 1, 24),
('BSLM', 'SMA', 2, 26),
('BSLM', 'SMA', 3, 15),
('BSLM', 'SMA', 4, 14),
('BSMA', 'SMA', 1, 37),
('BSMA', 'SMA', 2, 21),
('BSMA', 'SMA', 3, 20),
('BSMA', 'SMA', 4, 24),
('BSMATH', 'CSITE', 1, 6),
('BSMATH', 'CSITE', 2, 3),
('BSMATH', 'CSITE', 3, 1),
('BSMATH', 'CSITE', 4, 1),
('BSN', 'CON', 1, 220),
('BSN', 'CON', 2, 337),
('BSN', 'CON', 3, 300),
('BSN', 'CON', 4, 309),
('BSNMCA', 'CSITE', 1, 10),
('BSNMCA', 'CSITE', 2, 6),
('BSNMCA', 'CSITE', 3, 13),
('BSNMCA', 'CSITE', 4, 12),
('BSOA', 'SMA', 1, 5),
('BSOA', 'SMA', 2, 13),
('BSOA', 'SMA', 3, 9),
('BSOA', 'SMA', 4, 14),
('BSPSY', 'SLA', 1, 65),
('BSPSY', 'SLA', 2, 65),
('BSPSY', 'SLA', 3, 57),
('BSPSY', 'SLA', 4, 46);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_forecasted_enrolled`
--
ALTER TABLE `tbl_forecasted_enrolled`
  ADD PRIMARY KEY (`fe_program_abbr`,`fe_year_level`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_forecasted_enrolled`
--
ALTER TABLE `tbl_forecasted_enrolled`
  ADD CONSTRAINT `tbl_forecasted_enrolled_ibfk_1` FOREIGN KEY (`fe_program_abbr`) REFERENCES `tbl_program_department` (`pd_program_abbr`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
