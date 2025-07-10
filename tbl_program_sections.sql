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
-- Table structure for table `tbl_program_sections`
--

CREATE TABLE `tbl_program_sections` (
  `ps_program_abbr` varchar(10) NOT NULL,
  `ps_year_level` int(11) NOT NULL,
  `ps_section_group` char(1) NOT NULL,
  `ps_section_final` varchar(20) NOT NULL,
  `ps_section_population` int(11) NOT NULL,
  `ps_priority_index` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_program_sections`
--

INSERT INTO `tbl_program_sections` (`ps_program_abbr`, `ps_year_level`, `ps_section_group`, `ps_section_final`, `ps_section_population`, `ps_priority_index`) VALUES
('AEET', 1, 'A', 'AEET-1-A', 15, 5),
('AEET', 2, 'A', 'AEET-2-A', 11, 5),
('BACOMM', 1, 'A', 'BACOMM-1-A', 10, 2),
('BACOMM', 2, 'A', 'BACOMM-2-A', 8, 2),
('BACOMM', 3, 'A', 'BACOMM-3-A', 9, 2),
('BACOMM', 4, 'A', 'BACOMM-4-A', 16, 2),
('BAELS', 1, 'A', 'BAELS-1-A', 5, 2),
('BAELS', 2, 'A', 'BAELS-2-A', 5, 2),
('BAELS', 3, 'A', 'BAELS-3-A', 1, 2),
('BAELS', 4, 'A', 'BAELS-4-A', 1, 2),
('BAINDIS', 1, 'A', 'BAINDIS-1-A', 5, 2),
('BAINDIS', 2, 'A', 'BAINDIS-2-A', 2, 2),
('BAINDIS', 3, 'A', 'BAINDIS-3-A', 7, 2),
('BAINDIS', 4, 'A', 'BAINDIS-4-A', 3, 2),
('BAINTS', 1, 'A', 'BAINTS-1-A', 12, 2),
('BAINTS', 2, 'A', 'BAINTS-2-A', 8, 2),
('BAINTS', 3, 'A', 'BAINTS-3-A', 15, 2),
('BAINTS', 4, 'A', 'BAINTS-4-A', 6, 2),
('BAPHILO', 1, 'A', 'BAPHILO-1-A', 5, 2),
('BAPHILO', 2, 'A', 'BAPHILO-2-A', 7, 2),
('BAPHILO', 3, 'A', 'BAPHILO-3-A', 7, 2),
('BAPHILO', 4, 'A', 'BAPHILO-4-A', 4, 2),
('BEED', 1, 'A', 'BEED-1-A', 22, 4),
('BEED', 1, 'B', 'BEED-1-B', 21, 4),
('BEED', 2, 'A', 'BEED-2-A', 4, 4),
('BEED', 3, 'A', 'BEED-3-A', 9, 4),
('BEED', 4, 'A', 'BEED-4-A', 13, 4),
('BPED', 1, 'A', 'BPED-1-A', 6, 4),
('BPED', 2, 'A', 'BPED-2-A', 6, 4),
('BPED', 3, 'A', 'BPED-3-A', 6, 4),
('BPED', 4, 'A', 'BPED-4-A', 9, 4),
('BSAC', 1, 'A', 'BSAC-1-A', 37, 3),
('BSAC', 1, 'B', 'BSAC-1-B', 37, 3),
('BSAC', 1, 'C', 'BSAC-1-C', 36, 3),
('BSAC', 2, 'A', 'BSAC-2-A', 32, 3),
('BSAC', 2, 'B', 'BSAC-2-B', 31, 3),
('BSAC', 2, 'C', 'BSAC-2-C', 31, 3),
('BSAC', 3, 'A', 'BSAC-3-A', 38, 3),
('BSAC', 3, 'B', 'BSAC-3-B', 38, 3),
('BSAC', 3, 'C', 'BSAC-3-C', 37, 3),
('BSAC', 4, 'A', 'BSAC-4-A', 34, 3),
('BSAC', 4, 'B', 'BSAC-4-B', 34, 3),
('BSBA', 1, 'A', 'BSBA-1-A', 26, 3),
('BSBA', 1, 'B', 'BSBA-1-B', 25, 3),
('BSBA', 2, 'A', 'BSBA-2-A', 34, 3),
('BSBA', 2, 'B', 'BSBA-2-B', 34, 3),
('BSBA', 3, 'A', 'BSBA-3-A', 33, 3),
('BSBA', 3, 'B', 'BSBA-3-B', 33, 3),
('BSBA', 4, 'A', 'BSBA-4-A', 36, 3),
('BSBA', 4, 'B', 'BSBA-4-B', 36, 3),
('BSBIO', 1, 'A', 'BSBIO-1-A', 40, 5),
('BSBIO', 2, 'A', 'BSBIO-2-A', 21, 5),
('BSBIO', 2, 'B', 'BSBIO-2-B', 21, 5),
('BSBIO', 3, 'A', 'BSBIO-3-A', 32, 5),
('BSBIO', 4, 'A', 'BSBIO-4-A', 16, 5),
('BSBME', 1, 'A', 'BSBME-1-A', 20, 5),
('BSBME', 2, 'A', 'BSBME-2-A', 21, 5),
('BSBME', 3, 'A', 'BSBME-3-A', 13, 5),
('BSBME', 4, 'A', 'BSBME-4-A', 7, 5),
('BSCE', 1, 'A', 'BSCE-1-A', 30, 5),
('BSCE', 1, 'B', 'BSCE-1-B', 30, 5),
('BSCE', 2, 'A', 'BSCE-2-A', 25, 5),
('BSCE', 2, 'B', 'BSCE-2-B', 24, 5),
('BSCE', 3, 'A', 'BSCE-3-A', 25, 5),
('BSCE', 3, 'B', 'BSCE-3-B', 24, 5),
('BSCE', 4, 'A', 'BSCE-4-A', 25, 5),
('BSCE', 4, 'B', 'BSCE-4-B', 24, 5),
('BSCPE', 1, 'A', 'BSCPE-1-A', 20, 5),
('BSCPE', 2, 'A', 'BSCPE-2-A', 16, 5),
('BSCPE', 3, 'A', 'BSCPE-3-A', 20, 5),
('BSCPE', 4, 'A', 'BSCPE-4-A', 21, 5),
('BSCS', 1, 'A', 'BSCS-1-A', 30, 5),
('BSCS', 2, 'A', 'BSCS-2-A', 26, 5),
('BSCS', 3, 'A', 'BSCS-3-A', 21, 5),
('BSCS', 4, 'A', 'BSCS-4-A', 11, 5),
('BSECE', 1, 'A', 'BSECE-1-A', 20, 5),
('BSECE', 2, 'A', 'BSECE-2-A', 9, 5),
('BSECE', 3, 'A', 'BSECE-3-A', 10, 5),
('BSECE', 4, 'A', 'BSECE-4-A', 7, 5),
('BSED', 1, 'A', 'BSED-1-A', 23, 4),
('BSED', 2, 'A', 'BSED-2-A', 23, 4),
('BSED', 3, 'A', 'BSED-3-A', 31, 4),
('BSED', 4, 'A', 'BSED-4-A', 26, 4),
('BSIT', 1, 'A', 'BSIT-1-A', 40, 5),
('BSIT', 2, 'A', 'BSIT-2-A', 33, 5),
('BSIT', 3, 'A', 'BSIT-3-A', 22, 5),
('BSIT', 4, 'A', 'BSIT-4-A', 36, 5),
('BSLM', 1, 'A', 'BSLM-1-A', 24, 3),
('BSLM', 2, 'A', 'BSLM-2-A', 26, 3),
('BSLM', 3, 'A', 'BSLM-3-A', 15, 3),
('BSLM', 4, 'A', 'BSLM-4-A', 14, 3),
('BSMA', 1, 'A', 'BSMA-1-A', 37, 3),
('BSMA', 2, 'A', 'BSMA-2-A', 21, 3),
('BSMA', 3, 'A', 'BSMA-3-A', 20, 3),
('BSMA', 4, 'A', 'BSMA-4-A', 24, 3),
('BSMATH', 1, 'A', 'BSMATH-1-A', 6, 5),
('BSMATH', 2, 'A', 'BSMATH-2-A', 3, 5),
('BSMATH', 3, 'A', 'BSMATH-3-A', 1, 5),
('BSMATH', 4, 'A', 'BSMATH-4-A', 1, 5),
('BSN', 1, 'A', 'BSN-1-A', 37, 1),
('BSN', 1, 'B', 'BSN-1-B', 37, 1),
('BSN', 1, 'C', 'BSN-1-C', 37, 1),
('BSN', 1, 'D', 'BSN-1-D', 37, 1),
('BSN', 1, 'E', 'BSN-1-E', 36, 1),
('BSN', 1, 'F', 'BSN-1-F', 36, 1),
('BSN', 2, 'A', 'BSN-2-A', 38, 1),
('BSN', 2, 'B', 'BSN-2-B', 38, 1),
('BSN', 2, 'C', 'BSN-2-C', 38, 1),
('BSN', 2, 'D', 'BSN-2-D', 38, 1),
('BSN', 2, 'E', 'BSN-2-E', 37, 1),
('BSN', 2, 'F', 'BSN-2-F', 37, 1),
('BSN', 2, 'G', 'BSN-2-G', 37, 1),
('BSN', 2, 'H', 'BSN-2-H', 37, 1),
('BSN', 2, 'I', 'BSN-2-I', 37, 1),
('BSN', 3, 'A', 'BSN-3-A', 38, 1),
('BSN', 3, 'B', 'BSN-3-B', 38, 1),
('BSN', 3, 'C', 'BSN-3-C', 38, 1),
('BSN', 3, 'D', 'BSN-3-D', 38, 1),
('BSN', 3, 'E', 'BSN-3-E', 37, 1),
('BSN', 3, 'F', 'BSN-3-F', 37, 1),
('BSN', 3, 'G', 'BSN-3-G', 37, 1),
('BSN', 3, 'H', 'BSN-3-H', 37, 1),
('BSN', 4, 'A', 'BSN-4-A', 39, 1),
('BSN', 4, 'B', 'BSN-4-B', 39, 1),
('BSN', 4, 'C', 'BSN-4-C', 39, 1),
('BSN', 4, 'D', 'BSN-4-D', 39, 1),
('BSN', 4, 'E', 'BSN-4-E', 39, 1),
('BSN', 4, 'F', 'BSN-4-F', 38, 1),
('BSN', 4, 'G', 'BSN-4-G', 38, 1),
('BSN', 4, 'H', 'BSN-4-H', 38, 1),
('BSNMCA', 1, 'A', 'BSNMCA-1-A', 10, 5),
('BSNMCA', 2, 'A', 'BSNMCA-2-A', 6, 5),
('BSNMCA', 3, 'A', 'BSNMCA-3-A', 13, 5),
('BSNMCA', 4, 'A', 'BSNMCA-4-A', 12, 5),
('BSOA', 1, 'A', 'BSOA-1-A', 5, 3),
('BSOA', 2, 'A', 'BSOA-2-A', 13, 3),
('BSOA', 3, 'A', 'BSOA-3-A', 9, 3),
('BSOA', 4, 'A', 'BSOA-4-A', 14, 3),
('BSPSY', 1, 'A', 'BSPSY-1-A', 33, 2),
('BSPSY', 1, 'B', 'BSPSY-1-B', 32, 2),
('BSPSY', 2, 'A', 'BSPSY-2-A', 33, 2),
('BSPSY', 2, 'B', 'BSPSY-2-B', 32, 2),
('BSPSY', 3, 'A', 'BSPSY-3-A', 29, 2),
('BSPSY', 3, 'B', 'BSPSY-3-B', 28, 2),
('BSPSY', 4, 'A', 'BSPSY-4-A', 23, 2),
('BSPSY', 4, 'B', 'BSPSY-4-B', 23, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_program_sections`
--
ALTER TABLE `tbl_program_sections`
  ADD PRIMARY KEY (`ps_section_final`),
  ADD KEY `ps_program_abbr` (`ps_program_abbr`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_program_sections`
--
ALTER TABLE `tbl_program_sections`
  ADD CONSTRAINT `tbl_program_sections_ibfk_1` FOREIGN KEY (`ps_program_abbr`) REFERENCES `tbl_program_department` (`pd_program_abbr`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
