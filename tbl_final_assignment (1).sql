-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2025 at 07:32 PM
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
  `fa_course_year` int(50) NOT NULL,
  `fa_program_section` varchar(100) DEFAULT NULL,
  `fa_student_count` int(11) DEFAULT NULL,
  `fa_department` varchar(50) DEFAULT NULL,
  `fa_room_code` varchar(20) NOT NULL,
  `fa_day_abbr` varchar(10) NOT NULL,
  `fa_start_time` varchar(20) NOT NULL,
  `fa_end_time` varchar(20) NOT NULL,
  `fa_final_timeslot` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_final_assignment`
--

INSERT INTO `tbl_final_assignment` (`fa_course_section`, `fa_course_year`, `fa_program_section`, `fa_student_count`, `fa_department`, `fa_room_code`, `fa_day_abbr`, `fa_start_time`, `fa_end_time`, `fa_final_timeslot`) VALUES
('ABMBC200-1-A', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'BC204', 'MTh', '12:30 PM', '1:50 PM', NULL),
('ACADWRI-2-A', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'BC205', 'WS', '8:00 AM', '9:20 AM', NULL),
('ACADWRI-2-B', 2, 'AEET-2-A, BSBME-2-A', 32, 'CSITE', 'S301', 'TF', '2:00 PM', '3:20 PM', NULL),
('ACADWRI-2-C', 2, 'BSCE-2-A', 25, 'CSITE', 'S301', 'WS', '2:00 PM', '3:20 PM', NULL),
('ACADWRI-2-D', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'BC205', 'TF', '12:30 PM', '1:50 PM', NULL),
('ACADWRI-2-E', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'TF', '8:00 AM', '9:20 AM', NULL),
('ACADWRI-2-F', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC308', 'TF', '8:00 AM', '9:20 AM', NULL),
('ACADWRI-2-G', 2, 'BSNMCA-2-A', 6, 'CSITE', 'FEC311', 'MTh', '9:30 AM', '10:50 AM', NULL),
('ACCIST1-2-A', 2, 'BSMA-2-A', 21, 'SMA', 'BC204', 'WS', '12:30 PM', '1:50 PM', NULL),
('ACCLAW2-2-A', 2, 'BSMA-2-A', 21, 'SMA', 'BC204', 'WS', '2:00 PM', '3:20 PM', NULL),
('ACCTAX2-3-A', 3, 'BSMA-3-A', 20, 'SMA', 'BC307', 'TF', '11:00 AM', '12:20 PM', NULL),
('ADVACC1-2-A', 2, 'BSMA-2-A', 21, 'SMA', 'BC204', 'WS', '4:30 PM', '5:50 PM', NULL),
('ADVACC3-3-A', 3, 'BSMA-3-A', 20, 'SMA', 'BC307', 'TF', '12:30 PM', '1:50 PM', NULL),
('ARTAPP-1-A', 1, 'AEET-1-A', 15, 'CSITE', 'S303', 'MTh', '2:00 PM', '3:20 PM', NULL),
('ARTAPP-2-A', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'SEB302', 'TF', '12:30 PM', '1:50 PM', NULL),
('ARTAPP-2-B', 2, 'BSBME-2-A', 21, 'CSITE', 'S302', 'TF', '2:00 PM', '3:20 PM', NULL),
('ARTAPP-2-C', 2, 'BSCE-2-A', 25, 'CSITE', 'S301', 'WS', '12:30 PM', '1:50 PM', NULL),
('ARTAPP-2-D', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'BC205', 'TF', '9:30 AM', '10:50 AM', NULL),
('ARTAPP-2-E', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'MTh', '2:00 PM', '3:20 PM', NULL),
('ARTAPP-2-F', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC308', 'MTh', '9:30 AM', '10:50 AM', NULL),
('ARTAPP-2-G', 2, 'BSNMCA-2-A', 6, 'CSITE', 'FEC311', 'MTh', '8:00 AM', '9:20 AM', NULL),
('BROADP-1-3-A', 3, 'BACOMM-3-A', 9, 'SLA', 'C312A', 'MTh', '6:00 PM', '7:20 PM', NULL),
('BURMET1-4-A', 4, 'BSMA-4-A', 24, 'SMA', 'BC204', 'TF', '12:30 PM', '1:50 PM', NULL),
('BURMET2-4-A', 4, 'BSMA-4-A', 24, 'SMA', 'BC204', 'TF', '2:00 PM', '3:20 PM', NULL),
('BUSMAN201-1-A', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'BC204', 'MTh', '2:00 PM', '3:20 PM', NULL),
('BUSMAN202-1-A', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'BC204', 'MTh', '4:30 PM', '5:50 PM', NULL),
('BUSMAN209-3-A', 3, 'BSLM-3-A', 15, 'SMA', 'BC307', 'TF', '6:00 PM', '7:20 PM', NULL),
('BUSTRA1-4-A', 4, 'BSMA-4-A', 24, 'SMA', 'BC204', 'TF', '4:30 PM', '5:50 PM', NULL),
('BUSTRA2-4-A', 4, 'BSMA-4-A', 24, 'SMA', 'BC204', 'TF', '6:00 PM', '7:20 PM', NULL),
('COMASE-3-A', 3, 'BACOMM-3-A', 9, 'SLA', 'C312A', 'MTh', '11:00 AM', '12:20 PM', NULL),
('COMM198-4-A', 4, 'BACOMM-4-A', 16, 'SLA', 'BC307', 'MTh', '9:30 AM', '10:50 AM', NULL),
('COMMED-1-A', 1, 'BACOMM-1-A', 10, 'SLA', 'C312A', 'MTh', '8:00 AM', '9:20 AM', NULL),
('COMPLAN-4-A', 4, 'BACOMM-4-A', 16, 'SLA', 'BC307', 'MTh', '11:00 AM', '12:20 PM', NULL),
('COMTHEO-3-A', 3, 'BACOMM-3-A', 9, 'SLA', 'C312A', 'MTh', '12:30 PM', '1:50 PM', NULL),
('CONWOR-2-A', 2, 'BSMA-2-A', 21, 'SMA', 'S302', 'TF', '4:30 PM', '5:50 PM', NULL),
('CONWOR-2-B', 2, 'AEET-2-A', 11, 'CSITE', 'S303', 'TF', '9:30 AM', '10:50 AM', NULL),
('CONWOR-3-A', 3, 'BSN-3-A', 38, 'CON', 'BC205', 'WS', '4:30 PM', '5:50 PM', NULL),
('CONWOR-3-B', 3, 'BSN-3-B', 38, 'CON', 'BC205', 'WS', '6:00 PM', '7:20 PM', NULL),
('CONWOR-3-C', 3, 'BSN-3-C', 38, 'CON', 'BC206', 'MTh', '8:00 AM', '9:20 AM', NULL),
('CONWOR-3-D', 3, 'BSN-3-D', 38, 'CON', 'BC206', 'MTh', '9:30 AM', '10:50 AM', NULL),
('CONWOR-3-E', 3, 'BSN-3-E', 37, 'CON', 'BC304', 'MTh', '4:30 PM', '5:50 PM', NULL),
('CONWOR-3-F', 3, 'BSN-3-F', 37, 'CON', 'BC304', 'MTh', '6:00 PM', '7:20 PM', NULL),
('CONWOR-3-G', 3, 'BSN-3-G', 37, 'CON', 'BC304', 'TF', '8:00 AM', '9:20 AM', NULL),
('CONWOR-3-H', 3, 'BSN-3-H', 37, 'CON', 'BC304', 'TF', '9:30 AM', '10:50 AM', NULL),
('CONWOR-3-I', 3, 'BACOMM-3-A, BAELS-3-A, BAINDIS-3-A, BAINTS-3-A, BAPHILO-3-A', 39, 'SLA', 'BC205', 'TF', '4:30 PM', '5:50 PM', NULL),
('CONWOR-3-J', 3, 'BSMATH-3-A', 1, 'CSITE', 'FEC311', 'TF', '9:30 AM', '10:50 AM', NULL),
('COSMAN1-2-A', 2, 'BSMA-2-A', 21, 'SMA', 'BC204', 'WS', '6:00 PM', '7:20 PM', NULL),
('CREWRI-2-A', 2, 'BACOMM-2-A, BAELS-2-A', 13, 'SLA', 'BC307', 'TF', '8:00 AM', '9:20 AM', NULL),
('DEVCOM-4-A', 4, 'BACOMM-4-A', 16, 'SLA', 'BC307', 'MTh', '8:00 AM', '9:20 AM', NULL),
('DIGPUB-2-A', 2, 'BACOMM-2-A', 8, 'SLA', 'C312A', 'TF', '9:30 AM', '10:50 AM', NULL),
('ECON201-2-A', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'BC205', 'MTh', '11:00 AM', '12:20 PM', NULL),
('ECONMIC-2-A', 2, 'BAINDIS-2-A, BAINTS-2-A', 10, 'SLA', 'C312A', 'MTh', '9:30 AM', '10:50 AM', NULL),
('ELS01-1-A', 1, 'BAELS-1-A', 5, 'SLA', 'C312B', 'TF', '11:00 AM', '12:20 PM', NULL),
('ELS02-2-A', 2, 'BAELS-2-A', 5, 'SLA', 'C312B', 'TF', '12:30 PM', '1:50 PM', NULL),
('ELS03-2-A', 2, 'BAELS-2-A', 5, 'SLA', 'C312B', 'TF', '2:00 PM', '3:20 PM', NULL),
('ELS09-3-A', 3, 'BAELS-3-A', 1, 'SLA', 'FEC208', 'MTh', '2:00 PM', '3:20 PM', NULL),
('ELS10-2-A', 2, 'BAELS-2-A', 5, 'SLA', 'C312B', 'TF', '4:30 PM', '5:50 PM', NULL),
('ELS11-3-A', 3, 'BAELS-3-A', 1, 'SLA', 'FEC208', 'MTh', '4:30 PM', '5:50 PM', NULL),
('ELS15-3-A', 3, 'BAELS-3-A', 1, 'SLA', 'FEC208', 'MTh', '6:00 PM', '7:20 PM', NULL),
('ELS199-4-A', 4, 'BAELS-4-A', 1, 'SLA', 'FEC208', 'TF', '12:30 PM', '1:50 PM', NULL),
('ELS23-4-A', 4, 'BAELS-4-A', 1, 'SLA', 'FEC208', 'TF', '8:00 AM', '9:20 AM', NULL),
('ELSELECT-4-A', 4, 'BSLM-4-A', 14, 'SMA', 'S303', 'TF', '8:00 AM', '9:20 AM', NULL),
('ENTMIND-3-A', 3, 'BACOMM-3-A', 9, 'SLA', 'C312A', 'MTh', '2:00 PM', '3:20 PM', NULL),
('ENTMIND-4-A', 4, 'BAINDIS-4-A', 3, 'SLA', 'C312B', 'WS', '4:30 PM', '5:50 PM', NULL),
('ETHICS-1-A', 1, 'AEET-1-A', 15, 'CSITE', 'S303', 'MTh', '4:30 PM', '5:50 PM', NULL),
('ETHICS-3-A', 3, 'BSLM-3-A, BSMA-3-A', 35, 'SMA', 'S301', 'MTh', '4:30 PM', '5:50 PM', NULL),
('ETHICS-3-B', 3, 'BSOA-3-A', 9, 'SMA', 'FEC208', 'WS', '2:00 PM', '3:20 PM', NULL),
('ETHICS-3-C', 3, 'BSBME-3-A, BSCE-3-A', 38, 'CSITE', 'BC206', 'MTh', '11:00 AM', '12:20 PM', NULL),
('ETHICS-3-D', 3, 'BSCE-3-B', 24, 'CSITE', 'S302', 'MTh', '9:30 AM', '10:50 AM', NULL),
('ETHICS-3-E', 3, 'BSCS-3-A, BSECE-3-A', 31, 'CSITE', 'S301', 'TF', '6:00 PM', '7:20 PM', NULL),
('ETHICS-3-F', 3, 'BSIT-3-A, BSMATH-3-A, BSNMCA-3-A', 36, 'CSITE', 'BC308', 'MTh', '11:00 AM', '12:20 PM', NULL),
('ETHICS-4-A', 4, 'BSCPE-4-A', 21, 'CSITE', 'S302', 'TF', '6:00 PM', '7:20 PM', NULL),
('FFP1-1-A', 1, 'BSLM-1-A', 24, 'SMA', 'S301', 'WS', '6:00 PM', '7:20 PM', NULL),
('FFP1-1-B', 1, 'BSMA-1-A', 37, 'SMA', 'BC206', 'TF', '2:00 PM', '3:20 PM', NULL),
('FFP1-1-C', 1, 'BSOA-1-A', 5, 'SMA', 'FEC311', 'MTh', '12:30 PM', '1:50 PM', NULL),
('FFP1-1-D', 1, 'BEED-1-A', 22, 'SED', 'S302', 'MTh', '4:30 PM', '5:50 PM', NULL),
('FFP1-1-E', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'SEB302', 'WS', '11:00 AM', '12:20 PM', NULL),
('FFP1-1-F', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC206', 'TF', '4:30 PM', '5:50 PM', NULL),
('FFP1-1-G', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'S301', 'MTh', '9:30 AM', '10:50 AM', NULL),
('FFP1-1-H', 1, 'BSCE-1-A', 30, 'CSITE', 'SEB302', 'MTh', '2:00 PM', '3:20 PM', NULL),
('FFP1-1-I', 1, 'BSCE-1-B', 30, 'CSITE', 'SEB302', 'MTh', '4:30 PM', '5:50 PM', NULL),
('FFP1-1-J', 1, 'BSCPE-1-A', 20, 'CSITE', 'S302', 'WS', '8:00 AM', '9:20 AM', NULL),
('FFP1-1-K', 1, 'BSCS-1-A', 30, 'CSITE', 'SEB302', 'MTh', '6:00 PM', '7:20 PM', NULL),
('FFP1-1-L', 1, 'BSECE-1-A', 20, 'CSITE', 'S302', 'WS', '9:30 AM', '10:50 AM', NULL),
('FFP1-1-M', 1, 'BSIT-1-A', 40, 'CSITE', 'BC205', 'MTh', '4:30 PM', '5:50 PM', NULL),
('FFP1-1-N', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'S303', 'MTh', '8:00 AM', '9:20 AM', NULL),
('FFP1-1-O', 1, 'BSN-1-A', 37, 'CON', 'BC206', 'TF', '6:00 PM', '7:20 PM', NULL),
('FFP1-1-P', 1, 'BSN-1-B', 37, 'CON', 'BC206', 'WS', '8:00 AM', '9:20 AM', NULL),
('FFP1-1-Q', 1, 'BSN-1-C', 37, 'CON', 'BC206', 'WS', '9:30 AM', '10:50 AM', NULL),
('FFP1-1-R', 1, 'BSN-1-D', 37, 'CON', 'BC206', 'WS', '11:00 AM', '12:20 PM', NULL),
('FFP1-1-S', 1, 'BSN-1-E', 36, 'CON', 'BC305', 'WS', '11:00 AM', '12:20 PM', NULL),
('FFP1-1-T', 1, 'BSN-1-F', 36, 'CON', 'BC305', 'WS', '12:30 PM', '1:50 PM', NULL),
('FILMAPP-4-A', 4, 'BACOMM-4-A', 16, 'SLA', 'BC307', 'MTh', '12:30 PM', '1:50 PM', NULL),
('FINACC0-2-A', 2, 'BSLM-2-A', 26, 'SMA', 'BC204', 'MTh', '6:00 PM', '7:20 PM', NULL),
('FINACC1-1-A', 1, 'BSMA-1-A', 37, 'SMA', 'BC205', 'MTh', '8:00 AM', '10:50 AM', NULL),
('FINACC2-1-A', 1, 'BSMA-1-A', 37, 'SMA', 'BC205', 'MTh', '12:30 PM', '1:50 PM', NULL),
('FINACC4-2-A', 2, 'BSMA-2-A', 21, 'SMA', 'SEB302', 'MTh', '8:00 AM', '9:20 AM', NULL),
('FINACC6-3-A', 3, 'BSMA-3-A', 20, 'SMA', 'BC307', 'TF', '2:00 PM', '3:20 PM', NULL),
('FINMAN1-1-A', 1, 'BSMA-1-A', 37, 'SMA', 'BC205', 'MTh', '2:00 PM', '3:20 PM', NULL),
('FINMAN2-3-A', 3, 'BSLM-3-A, BSMA-3-A', 35, 'SMA', 'S301', 'MTh', '8:00 AM', '9:20 AM', NULL),
('FINMAN4-4-A', 4, 'BSMA-4-A', 24, 'SMA', 'BC204', 'WS', '8:00 AM', '9:20 AM', NULL),
('GEELECT-LM-3-A', 3, 'BSMA-3-A', 20, 'SMA', 'S302', 'WS', '6:00 PM', '7:20 PM', NULL),
('GEELECT-LM-3-B', 3, 'BSMATH-3-A', 1, 'CSITE', 'FEC311', 'TF', '11:00 AM', '12:20 PM', NULL),
('GEOPHY-3-A', 3, 'BSLM-3-A', 15, 'SMA', 'S303', 'MTh', '6:00 PM', '7:20 PM', NULL),
('GEOPOL-3-A', 3, 'BAINDIS-3-A, BAINTS-3-A', 22, 'SLA', 'BC204', 'MTh', '9:30 AM', '10:50 AM', NULL),
('GERMIC1-2-A', 2, 'BSMA-2-A', 21, 'SMA', 'SEB302', 'MTh', '9:30 AM', '10:50 AM', NULL),
('GMELECT-LM-3-A', 3, 'BSLM-3-A, BSOA-3-A', 24, 'SMA', 'S302', 'MTh', '2:00 PM', '3:20 PM', NULL),
('GOVCOM-2-A', 2, 'BAINTS-2-A', 8, 'SLA', 'C312A', 'TF', '11:00 AM', '12:20 PM', NULL),
('GOVCOMP-3-A', 3, 'BAINDIS-3-A', 7, 'SLA', 'C312B', 'MTh', '2:00 PM', '3:20 PM', NULL),
('GOVPUB-3-A', 3, 'BAINDIS-3-A', 7, 'SLA', 'C312A', 'WS', '11:00 AM', '12:20 PM', NULL),
('HIST-ME-2-A', 2, 'BAINDIS-2-A', 2, 'SLA', 'FEC208', 'MTh', '11:00 AM', '12:20 PM', NULL),
('HIST.1-1-A', 1, 'BAINDIS-1-A', 5, 'SLA', 'C312B', 'TF', '6:00 PM', '7:20 PM', NULL),
('HIST.1-2-A', 2, 'BAINTS-2-A', 8, 'SLA', 'C312A', 'TF', '12:30 PM', '1:50 PM', NULL),
('INDIS-198-4-A', 4, 'BAINDIS-4-A', 3, 'SLA', 'C312B', 'WS', '6:00 PM', '7:20 PM', NULL),
('INDIS-SPEC-2-A', 2, 'BAINDIS-2-A', 2, 'SLA', 'FEC208', 'MTh', '12:30 PM', '1:50 PM', NULL),
('INSMA-3-A', 3, 'BAELS-3-A', 1, 'SLA', 'FEC208', 'TF', '9:30 AM', '10:50 AM', NULL),
('INTFILM-3-A', 3, 'BACOMM-3-A', 9, 'SLA', 'C312A', 'MTh', '4:30 PM', '5:50 PM', NULL),
('INTLAW-3-A', 3, 'BAINDIS-3-A', 7, 'SLA', 'C312A', 'WS', '12:30 PM', '1:50 PM', NULL),
('INTS-CUL-2-A', 2, 'BAINTS-2-A', 8, 'SLA', 'C312A', 'TF', '2:00 PM', '3:20 PM', NULL),
('INTS-INTRO-1-A', 1, 'BAINTS-1-A', 12, 'SLA', 'BC307', 'TF', '9:30 AM', '10:50 AM', NULL),
('INTS-LAW-3-A', 3, 'BAINTS-3-A', 15, 'SLA', 'BC307', 'MTh', '4:30 PM', '5:50 PM', NULL),
('INTS-LEAD-4-A', 4, 'BAINTS-4-A', 6, 'SLA', 'C312B', 'MTh', '6:00 PM', '7:20 PM', NULL),
('INTS-RP-4-A', 4, 'BAINTS-4-A', 6, 'SLA', 'C312B', 'MTh', '4:30 PM', '5:50 PM', NULL),
('INTS-SEM1-3-A', 3, 'BAINTS-3-A', 15, 'SLA', 'BC307', 'MTh', '6:00 PM', '7:20 PM', NULL),
('INTS-SEM2-4-A', 4, 'BAINTS-4-A', 6, 'SLA', 'C312B', 'TF', '8:00 AM', '9:20 AM', NULL),
('INTTRADE-3-A', 3, 'BAINDIS-3-A, BAINTS-3-A', 22, 'SLA', 'BC204', 'MTh', '11:00 AM', '12:20 PM', NULL),
('JOURNP-1-2-A', 2, 'BACOMM-2-A', 8, 'SLA', 'C312A', 'TF', '4:30 PM', '5:50 PM', NULL),
('KOMFIL-3-A', 3, 'BACOMM-3-A, BAELS-3-A, BAINDIS-3-A, BAINTS-3-A, BAPHILO-3-A', 39, 'SLA', 'BC205', 'MTh', '8:00 AM', '9:20 AM', NULL),
('LANGPOL-4-A', 4, 'BAELS-4-A', 1, 'SLA', 'FEC208', 'TF', '2:00 PM', '3:20 PM', NULL),
('LANGPRO-4-A', 4, 'BAELS-4-A', 1, 'SLA', 'FEC208', 'TF', '4:30 PM', '5:50 PM', NULL),
('LAW01-3-A', 3, 'BSLM-3-A, BSOA-3-A', 24, 'SMA', 'BC204', 'TF', '9:30 AM', '10:50 AM', NULL),
('LAW400-4-A', 4, 'BSLM-4-A', 14, 'SMA', 'BC307', 'WS', '11:00 AM', '12:20 PM', NULL),
('LAW500-4-A', 4, 'BSLM-4-A', 14, 'SMA', 'BC307', 'WS', '12:30 PM', '1:50 PM', NULL),
('LAWELECT1-3-A', 3, 'BSLM-3-A', 15, 'SMA', 'BC307', 'WS', '8:00 AM', '9:20 AM', NULL),
('LAWELECT3-4-A', 4, 'BSLM-4-A', 14, 'SMA', 'BC307', 'WS', '4:30 PM', '5:50 PM', NULL),
('LITMIN-4-A', 4, 'BACOMM-4-A', 16, 'SLA', 'S303', 'MTh', '11:00 AM', '12:20 PM', NULL),
('LOGIC-2-A', 2, 'BAINDIS-2-A', 2, 'SLA', 'FEC208', 'MTh', '9:30 AM', '10:50 AM', NULL),
('MAELECT1-3-A', 3, 'BSMA-3-A', 20, 'SMA', 'BC307', 'TF', '4:30 PM', '5:50 PM', NULL),
('MAELECT3-4-A', 4, 'BSMA-4-A', 24, 'SMA', 'BC204', 'WS', '9:30 AM', '10:50 AM', NULL),
('MAELECT4-4-A', 4, 'BSMA-4-A', 24, 'SMA', 'BC204', 'WS', '11:00 AM', '12:20 PM', NULL),
('MAT106-2-A', 2, 'BSLM-2-A', 26, 'SMA', 'S301', 'WS', '9:30 AM', '10:50 AM', NULL),
('MATMOD-1-A', 1, 'BSLM-1-A', 24, 'SMA', 'S302', 'MTh', '11:00 AM', '12:20 PM', NULL),
('MATMOD-1-B', 1, 'BSMA-1-A', 37, 'SMA', 'BC304', 'TF', '11:00 AM', '12:20 PM', NULL),
('MATMOD-1-C', 1, 'BSOA-1-A', 5, 'SMA', 'FEC311', 'MTh', '4:30 PM', '5:50 PM', NULL),
('MATMOD-1-D', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'S301', 'MTh', '6:00 PM', '7:20 PM', NULL),
('MATMOD-1-E', 1, 'BSCE-1-A', 30, 'CSITE', 'SEB302', 'TF', '2:00 PM', '3:20 PM', NULL),
('MATMOD-1-F', 1, 'BSCE-1-B', 30, 'CSITE', 'SEB302', 'TF', '4:30 PM', '5:50 PM', NULL),
('MATMOD-1-G', 1, 'BSCPE-1-A', 20, 'CSITE', 'S302', 'WS', '2:00 PM', '3:20 PM', NULL),
('MATMOD-1-H', 1, 'BSCS-1-A', 30, 'CSITE', 'SEB302', 'TF', '6:00 PM', '7:20 PM', NULL),
('MATMOD-1-I', 1, 'BSECE-1-A', 20, 'CSITE', 'S302', 'WS', '4:30 PM', '5:50 PM', NULL),
('MATMOD-1-J', 1, 'BSIT-1-A', 40, 'CSITE', 'BC205', 'TF', '11:00 AM', '12:20 PM', NULL),
('MATMOD-1-K', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'S303', 'MTh', '12:30 PM', '1:50 PM', NULL),
('MIS1-2-A', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'BC205', 'MTh', '9:30 AM', '10:50 AM', NULL),
('MRKTGM201-2-A', 2, 'BSLM-2-A', 26, 'SMA', 'BC204', 'TF', '8:00 AM', '9:20 AM', NULL),
('NSTP1-1-A', 1, 'BSLM-1-A', 24, 'SMA', 'S302', 'MTh', '8:00 AM', '9:20 AM', NULL),
('NSTP1-1-B', 1, 'BSMA-1-A', 37, 'SMA', 'BC206', 'WS', '12:30 PM', '1:50 PM', NULL),
('NSTP1-1-C', 1, 'BSOA-1-A', 5, 'SMA', 'FEC311', 'MTh', '2:00 PM', '3:20 PM', NULL),
('NSTP1-1-D', 1, 'BEED-1-A', 22, 'SED', 'S302', 'MTh', '6:00 PM', '7:20 PM', NULL),
('NSTP1-1-E', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'SEB302', 'WS', '12:30 PM', '1:50 PM', NULL),
('NSTP1-1-F', 1, 'BACOMM-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 32, 'SLA', 'S301', 'TF', '12:30 PM', '1:50 PM', NULL),
('NSTP1-1-G', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'S301', 'MTh', '11:00 AM', '12:20 PM', NULL),
('NSTP1-1-H', 1, 'BSCE-1-A', 30, 'CSITE', 'SEB302', 'TF', '8:00 AM', '9:20 AM', NULL),
('NSTP1-1-I', 1, 'BSCE-1-B', 30, 'CSITE', 'SEB302', 'TF', '9:30 AM', '10:50 AM', NULL),
('NSTP1-1-J', 1, 'BSCPE-1-A', 20, 'CSITE', 'S302', 'WS', '11:00 AM', '12:20 PM', NULL),
('NSTP1-1-K', 1, 'BSCS-1-A', 30, 'CSITE', 'SEB302', 'TF', '11:00 AM', '12:20 PM', NULL),
('NSTP1-1-L', 1, 'BSECE-1-A', 20, 'CSITE', 'S302', 'WS', '12:30 PM', '1:50 PM', NULL),
('NSTP1-1-M', 1, 'BSIT-1-A', 40, 'CSITE', 'BC205', 'MTh', '6:00 PM', '7:20 PM', NULL),
('NSTP1-1-N', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'S303', 'MTh', '9:30 AM', '10:50 AM', NULL),
('NSTP1-1-O', 1, 'BSN-1-A', 37, 'CON', 'BC206', 'WS', '2:00 PM', '3:20 PM', NULL),
('NSTP1-1-P', 1, 'BSN-1-B', 37, 'CON', 'BC206', 'WS', '4:30 PM', '5:50 PM', NULL),
('NSTP1-1-Q', 1, 'BSN-1-C', 37, 'CON', 'BC206', 'WS', '6:00 PM', '7:20 PM', NULL),
('NSTP1-1-R', 1, 'BSN-1-D', 37, 'CON', 'BC304', 'MTh', '8:00 AM', '9:20 AM', NULL),
('NSTP1-1-S', 1, 'BSN-1-E', 36, 'CON', 'BC305', 'WS', '2:00 PM', '3:20 PM', NULL),
('NSTP1-1-T', 1, 'BSN-1-F', 36, 'CON', 'BC305', 'WS', '4:30 PM', '5:50 PM', NULL),
('NSTP101-1-A', 1, 'BAELS-1-A', 5, 'SLA', 'FEC311', 'TF', '8:00 AM', '9:20 AM', NULL),
('OACC200-1-A', 1, 'BSOA-1-A', 5, 'SMA', 'C312A', 'MTh', '8:00 AM', '10:50 AM', NULL),
('OACC203a-2-A', 2, 'BSOA-2-A', 13, 'SMA', 'SEB302', 'MTh', '12:30 PM', '1:50 PM', NULL),
('OACC204-2-A', 2, 'BSOA-2-A', 13, 'SMA', 'BC307', 'WS', '6:00 PM', '7:20 PM', NULL),
('OACC205-2-A', 2, 'BSOA-2-A', 13, 'SMA', 'SEB302', 'MTh', '11:00 AM', '12:20 PM', NULL),
('OACC207-3-A', 3, 'BSOA-3-A', 9, 'SMA', 'FEC208', 'TF', '6:00 PM', '7:20 PM', NULL),
('OACC209-3-A', 3, 'BSOA-3-A', 9, 'SMA', 'FEC208', 'WS', '8:00 AM', '9:20 AM', NULL),
('OACC214-4-A', 4, 'BSOA-4-A', 14, 'SMA', 'BC307', 'WS', '2:00 PM', '3:20 PM', NULL),
('PATHFIT1-1-A', 1, 'BSLM-1-A', 24, 'SMA', 'MPCC1B', 'T', '3:00 PM', '5:00 PM', NULL),
('PATHFIT1-1-B', 1, 'BSMA-1-A', 37, 'SMA', 'MPCC1A', 'T', '1:00 PM', '3:00 PM', NULL),
('PATHFIT1-1-C', 1, 'BSOA-1-A', 5, 'SMA', 'MPCC1B', 'Th', '1:00 PM', '3:00 PM', NULL),
('PATHFIT1-1-D', 1, 'BEED-1-A', 22, 'SED', 'MPCC1B', 'W', '8:00 AM', '10:00 AM', NULL),
('PATHFIT1-1-E', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'MPCC1B', 'T', '8:00 AM', '10:00 AM', NULL),
('PATHFIT1-1-F', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'MPCC1A', 'T', '3:00 PM', '5:00 PM', NULL),
('PATHFIT1-1-G', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'MPCC1A', 'S', '8:00 AM', '10:00 AM', NULL),
('PATHFIT1-1-H', 1, 'BSCE-1-A', 30, 'CSITE', 'MPCC1B', 'M', '8:00 AM', '10:00 AM', NULL),
('PATHFIT1-1-I', 1, 'BSCE-1-B', 30, 'CSITE', 'MPCC1B', 'M', '10:00 AM', '12:00 PM', NULL),
('PATHFIT1-1-J', 1, 'BSCPE-1-A', 20, 'CSITE', 'MPCC1B', 'W', '10:00 AM', '12:00 PM', NULL),
('PATHFIT1-1-K', 1, 'BSCS-1-A', 30, 'CSITE', 'MPCC1B', 'M', '1:00 PM', '3:00 PM', NULL),
('PATHFIT1-1-L', 1, 'BSECE-1-A', 20, 'CSITE', 'MPCC1B', 'W', '1:00 PM', '3:00 PM', NULL),
('PATHFIT1-1-M', 1, 'BSIT-1-A', 40, 'CSITE', 'MPCC1A', 'M', '8:00 AM', '10:00 AM', NULL),
('PATHFIT1-1-N', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'MPCC1B', 'W', '3:00 PM', '5:00 PM', NULL),
('PATHFIT1-1-O', 1, 'BSN-1-A', 37, 'CON', 'MPCC1A', 'W', '8:00 AM', '10:00 AM', NULL),
('PATHFIT1-1-P', 1, 'BSN-1-B', 37, 'CON', 'MPCC1A', 'W', '10:00 AM', '12:00 PM', NULL),
('PATHFIT1-1-Q', 1, 'BSN-1-C', 37, 'CON', 'MPCC1A', 'W', '1:00 PM', '3:00 PM', NULL),
('PATHFIT1-1-R', 1, 'BSN-1-D', 37, 'CON', 'MPCC1A', 'W', '3:00 PM', '5:00 PM', NULL),
('PATHFIT1-1-S', 1, 'BSN-1-E', 36, 'CON', 'MPCC1A', 'F', '10:00 AM', '12:00 PM', NULL),
('PATHFIT1-1-T', 1, 'BSN-1-F', 36, 'CON', 'MPCC1A', 'F', '1:00 PM', '3:00 PM', NULL),
('PATHFIT3-2-A', 2, 'BSLM-2-A', 26, 'SMA', 'MPCC1B', 'T', '10:00 AM', '12:00 PM', NULL),
('PATHFIT3-2-B', 2, 'BSMA-2-A, BSOA-2-A', 34, 'SMA', 'MPCC1A', 'S', '1:00 PM', '3:00 PM', NULL),
('PATHFIT3-2-C', 2, 'BEED-2-A, BPED-2-A', 10, 'SED', 'MPCC1B', 'Th', '8:00 AM', '10:00 AM', NULL),
('PATHFIT3-2-D', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'MPCC1B', 'M', '3:00 PM', '5:00 PM', NULL),
('PATHFIT3-2-E', 2, 'AEET-2-A, BSBME-2-A', 32, 'CSITE', 'MPCC1A', 'S', '3:00 PM', '5:00 PM', NULL),
('PATHFIT3-2-F', 2, 'BSCE-2-A', 25, 'CSITE', 'MPCC1B', 'T', '1:00 PM', '3:00 PM', NULL),
('PATHFIT3-2-G', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'MPCC1A', 'M', '10:00 AM', '12:00 PM', NULL),
('PATHFIT3-2-H', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'MPCC1A', 'S', '10:00 AM', '12:00 PM', NULL),
('PATHFIT3-2-I', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'MPCC1A', 'F', '3:00 PM', '5:00 PM', NULL),
('PATHFIT3-2-J', 2, 'BSNMCA-2-A', 6, 'CSITE', 'MPCC1B', 'Th', '10:00 AM', '12:00 PM', NULL),
('PATHFIT3-2-K', 2, 'BSN-2-A', 38, 'CON', 'MPCC1A', 'M', '1:00 PM', '3:00 PM', NULL),
('PATHFIT3-2-L', 2, 'BSN-2-B', 38, 'CON', 'MPCC1A', 'M', '3:00 PM', '5:00 PM', NULL),
('PATHFIT3-2-M', 2, 'BSN-2-C', 38, 'CON', 'MPCC1A', 'T', '8:00 AM', '10:00 AM', NULL),
('PATHFIT3-2-N', 2, 'BSN-2-D', 38, 'CON', 'MPCC1A', 'T', '10:00 AM', '12:00 PM', NULL),
('PATHFIT3-2-O', 2, 'BSN-2-E', 37, 'CON', 'MPCC1A', 'Th', '8:00 AM', '10:00 AM', NULL),
('PATHFIT3-2-P', 2, 'BSN-2-F', 37, 'CON', 'MPCC1A', 'Th', '10:00 AM', '12:00 PM', NULL),
('PATHFIT3-2-Q', 2, 'BSN-2-G', 37, 'CON', 'MPCC1A', 'Th', '1:00 PM', '3:00 PM', NULL),
('PATHFIT3-2-R', 2, 'BSN-2-H', 37, 'CON', 'MPCC1A', 'Th', '3:00 PM', '5:00 PM', NULL),
('PATHFIT3-2-S', 2, 'BSN-2-I', 37, 'CON', 'MPCC1A', 'F', '8:00 AM', '10:00 AM', NULL),
('PEACE-3-A', 3, 'BAINDIS-3-A, BAINTS-3-A', 22, 'SLA', 'BC204', 'MTh', '8:00 AM', '9:20 AM', NULL),
('PEACEJOURN-3-A', 3, 'BACOMM-3-A', 9, 'SLA', 'C312A', 'TF', '8:00 AM', '9:20 AM', NULL),
('PED1-1-A', 1, 'BAPHILO-1-A', 5, 'SLA', 'C312B', 'TF', '9:30 AM', '10:50 AM', NULL),
('PED4-2-A', 2, 'BAPHILO-2-A', 7, 'SLA', 'C312A', 'WS', '8:00 AM', '9:20 AM', NULL),
('PED8-3-A', 3, 'BAPHILO-3-A', 7, 'SLA', 'C312A', 'WS', '9:30 AM', '10:50 AM', NULL),
('PHI199-4-A', 4, 'BAPHILO-4-A', 4, 'SLA', 'C312B', 'WS', '8:00 AM', '9:20 AM', NULL),
('PHI202-2-A', 2, 'BAPHILO-2-A', 7, 'SLA', 'C312A', 'WS', '2:00 PM', '3:20 PM', NULL),
('PHI203-2-A', 2, 'BAPHILO-2-A', 7, 'SLA', 'C312A', 'WS', '4:30 PM', '5:50 PM', NULL),
('PHI301-3-A', 3, 'BAPHILO-3-A', 7, 'SLA', 'C312A', 'WS', '6:00 PM', '7:20 PM', NULL),
('PHI305-3-A', 3, 'BAPHILO-3-A', 7, 'SLA', 'C312B', 'MTh', '8:00 AM', '9:20 AM', NULL),
('PHI306-3-A', 3, 'BAPHILO-3-A', 7, 'SLA', 'C312B', 'MTh', '9:30 AM', '10:50 AM', NULL),
('PHI307-2-A', 2, 'BAPHILO-2-A', 7, 'SLA', 'C312B', 'MTh', '11:00 AM', '12:20 PM', NULL),
('PHI404-4-A', 4, 'BAPHILO-4-A', 4, 'SLA', 'C312B', 'WS', '9:30 AM', '10:50 AM', NULL),
('PHI406-3-A', 3, 'BAPHILO-3-A', 7, 'SLA', 'C312B', 'MTh', '12:30 PM', '1:50 PM', NULL),
('PHI407-4-A', 4, 'BAPHILO-4-A', 4, 'SLA', 'C312B', 'WS', '11:00 AM', '12:20 PM', NULL),
('PHI408-4-A', 4, 'BAPHILO-4-A', 4, 'SLA', 'C312B', 'WS', '12:30 PM', '1:50 PM', NULL),
('PHI409-4-A', 4, 'BAPHILO-4-A', 4, 'SLA', 'C312B', 'WS', '2:00 PM', '3:20 PM', NULL),
('PHIHIS-1-A', 1, 'BSLM-1-A', 24, 'SMA', 'S302', 'MTh', '12:30 PM', '1:50 PM', NULL),
('PHIHIS-1-B', 1, 'BSMA-1-A', 37, 'SMA', 'BC304', 'TF', '12:30 PM', '1:50 PM', NULL),
('PHIHIS-1-C', 1, 'BSOA-1-A', 5, 'SMA', 'FEC311', 'MTh', '6:00 PM', '7:20 PM', NULL),
('PHIHIS-1-D', 1, 'BEED-1-A', 22, 'SED', 'S302', 'TF', '8:00 AM', '9:20 AM', NULL),
('PHIHIS-1-E', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'SEB302', 'WS', '2:00 PM', '3:20 PM', NULL),
('PHIHIS-1-F', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC304', 'TF', '2:00 PM', '3:20 PM', NULL),
('PHIHUM-2-A', 2, 'BEED-2-A, BPED-2-A', 10, 'SED', 'FEC208', 'WS', '11:00 AM', '12:20 PM', NULL),
('PHIHUM-2-B', 2, 'BSN-2-A', 38, 'CON', 'BC206', 'MTh', '12:30 PM', '1:50 PM', NULL),
('PHIHUM-2-C', 2, 'BSN-2-B', 38, 'CON', 'BC206', 'MTh', '2:00 PM', '3:20 PM', NULL),
('PHIHUM-2-D', 2, 'BSN-2-C', 38, 'CON', 'BC206', 'MTh', '4:30 PM', '5:50 PM', NULL),
('PHIHUM-2-E', 2, 'BSN-2-D', 38, 'CON', 'BC206', 'MTh', '6:00 PM', '7:20 PM', NULL),
('PHIHUM-2-F', 2, 'BSN-2-E', 37, 'CON', 'BC304', 'TF', '4:30 PM', '5:50 PM', NULL),
('PHIHUM-2-G', 2, 'BSN-2-F', 37, 'CON', 'BC304', 'TF', '6:00 PM', '7:20 PM', NULL),
('PHIHUM-2-H', 2, 'BSN-2-G', 37, 'CON', 'BC304', 'WS', '8:00 AM', '9:20 AM', NULL),
('PHIHUM-2-I', 2, 'BSN-2-H', 37, 'CON', 'BC304', 'WS', '9:30 AM', '10:50 AM', NULL),
('PHIHUM-2-J', 2, 'BSN-2-I', 37, 'CON', 'BC304', 'WS', '11:00 AM', '12:20 PM', NULL),
('PHIHUM-2-K', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'SEB302', 'WS', '8:00 AM', '9:20 AM', NULL),
('PHOTOJOURN-2-A', 2, 'BACOMM-2-A', 8, 'SLA', 'C312A', 'TF', '6:00 PM', '7:20 PM', NULL),
('PROFELECT4-3-A', 3, 'BSOA-3-A', 9, 'SMA', 'FEC208', 'WS', '9:30 AM', '10:50 AM', NULL),
('PURCOM-1-A', 1, 'BEED-1-A', 22, 'SED', 'S302', 'TF', '9:30 AM', '10:50 AM', NULL),
('PURCOM-1-B', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'SEB302', 'WS', '4:30 PM', '5:50 PM', NULL),
('PURCOM-1-C', 1, 'BSN-1-A', 37, 'CON', 'BC304', 'WS', '12:30 PM', '1:50 PM', NULL),
('PURCOM-1-D', 1, 'BSN-1-B', 37, 'CON', 'BC304', 'WS', '2:00 PM', '3:20 PM', NULL),
('PURCOM-1-E', 1, 'BSN-1-C', 37, 'CON', 'BC304', 'WS', '4:30 PM', '5:50 PM', NULL),
('PURCOM-1-F', 1, 'BSN-1-D', 37, 'CON', 'BC304', 'WS', '6:00 PM', '7:20 PM', NULL),
('PURCOM-1-G', 1, 'BSN-1-E', 36, 'CON', 'BC308', 'MTh', '12:30 PM', '1:50 PM', NULL),
('PURCOM-1-H', 1, 'BSN-1-F', 36, 'CON', 'BC308', 'MTh', '2:00 PM', '3:20 PM', NULL),
('PURCOM-1-I', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC305', 'MTh', '8:00 AM', '9:20 AM', NULL),
('RISKCOM-4-A', 4, 'BACOMM-4-A', 16, 'SLA', 'BC307', 'MTh', '2:00 PM', '3:20 PM', NULL),
('RIZAL-2-A', 2, 'AEET-2-A, BSCE-2-A', 36, 'CSITE', 'BC305', 'WS', '6:00 PM', '7:20 PM', NULL),
('RIZAL-2-B', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'BC205', 'TF', '8:00 AM', '9:20 AM', NULL),
('RIZAL-2-C', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'MTh', '12:30 PM', '1:50 PM', NULL),
('RIZAL-2-D', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC308', 'MTh', '8:00 AM', '9:20 AM', NULL),
('RIZAL-2-E', 2, 'BSNMCA-2-A', 6, 'CSITE', 'FEC208', 'WS', '6:00 PM', '7:20 PM', NULL),
('RIZAL-3-A', 3, 'BSN-3-A', 38, 'CON', 'BC205', 'WS', '9:30 AM', '10:50 AM', NULL),
('RIZAL-3-B', 3, 'BSN-3-B', 38, 'CON', 'BC205', 'WS', '11:00 AM', '12:20 PM', NULL),
('RIZAL-3-C', 3, 'BSN-3-C', 38, 'CON', 'BC205', 'WS', '12:30 PM', '1:50 PM', NULL),
('RIZAL-3-D', 3, 'BSN-3-D', 38, 'CON', 'BC205', 'WS', '2:00 PM', '3:20 PM', NULL),
('RIZAL-3-E', 3, 'BSN-3-E', 37, 'CON', 'BC304', 'MTh', '9:30 AM', '10:50 AM', NULL),
('RIZAL-3-F', 3, 'BSN-3-F', 37, 'CON', 'BC304', 'MTh', '11:00 AM', '12:20 PM', NULL),
('RIZAL-3-G', 3, 'BSN-3-G', 37, 'CON', 'BC304', 'MTh', '12:30 PM', '1:50 PM', NULL),
('RIZAL-3-H', 3, 'BSN-3-H', 37, 'CON', 'BC304', 'MTh', '2:00 PM', '3:20 PM', NULL),
('RIZAL-4-A', 4, 'BSBME-4-A', 7, 'CSITE', 'FEC208', 'WS', '4:30 PM', '5:50 PM', NULL),
('SCIETECS-2-A', 2, 'BSCE-2-A', 25, 'CSITE', 'S301', 'WS', '4:30 PM', '5:50 PM', NULL),
('SCIETECS-2-B', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'BC205', 'TF', '2:00 PM', '3:20 PM', NULL),
('SCITECS-2-A', 2, 'BSLM-2-A', 26, 'SMA', 'S301', 'WS', '11:00 AM', '12:20 PM', NULL),
('SCITECS-2-B', 2, 'BSMA-2-A, BSOA-2-A', 34, 'SMA', 'S301', 'TF', '11:00 AM', '12:20 PM', NULL),
('SCITECS-2-C', 2, 'AEET-2-A, BSBME-2-A', 32, 'CSITE', 'S301', 'TF', '4:30 PM', '5:50 PM', NULL),
('SCITECS-2-D', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'TF', '9:30 AM', '10:50 AM', NULL),
('SCITECS-2-E', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC308', 'TF', '9:30 AM', '10:50 AM', NULL),
('SCITECS-2-F', 2, 'BSNMCA-2-A', 6, 'CSITE', 'FEC311', 'MTh', '11:00 AM', '12:20 PM', NULL),
('SCITECS-3-A', 3, 'BSN-3-A', 38, 'CON', 'BC206', 'TF', '8:00 AM', '9:20 AM', NULL),
('SCITECS-3-B', 3, 'BSN-3-B', 38, 'CON', 'BC206', 'TF', '9:30 AM', '10:50 AM', NULL),
('SCITECS-3-C', 3, 'BSN-3-C', 38, 'CON', 'BC206', 'TF', '11:00 AM', '12:20 PM', NULL),
('SCITECS-3-D', 3, 'BSN-3-D', 38, 'CON', 'BC206', 'TF', '12:30 PM', '1:50 PM', NULL),
('SCITECS-3-E', 3, 'BSN-3-E', 37, 'CON', 'BC305', 'TF', '8:00 AM', '9:20 AM', NULL),
('SCITECS-3-F', 3, 'BSN-3-F', 37, 'CON', 'BC305', 'TF', '9:30 AM', '10:50 AM', NULL),
('SCITECS-3-G', 3, 'BSN-3-G', 37, 'CON', 'BC305', 'TF', '11:00 AM', '12:20 PM', NULL),
('SCITECS-3-H', 3, 'BSN-3-H', 37, 'CON', 'BC305', 'TF', '12:30 PM', '1:50 PM', NULL),
('SOCSCI-ELECT4-4-A', 4, 'BAINDIS-4-A', 3, 'SLA', 'FEC208', 'MTh', '8:00 AM', '9:20 AM', NULL),
('SPIECO-1-A', 1, 'BSMA-1-A', 37, 'SMA', 'BC305', 'MTh', '9:30 AM', '10:50 AM', NULL),
('SPIECO-1-B', 1, 'BEED-1-A', 22, 'SED', 'S302', 'TF', '11:00 AM', '12:20 PM', NULL),
('SPIECO-1-C', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'SEB302', 'WS', '6:00 PM', '7:20 PM', NULL),
('SPIECO-1-D', 1, 'BSN-1-A', 37, 'CON', 'BC305', 'MTh', '11:00 AM', '12:20 PM', NULL),
('SPIECO-1-E', 1, 'BSN-1-B', 37, 'CON', 'BC305', 'MTh', '12:30 PM', '1:50 PM', NULL),
('SPIECO-1-F', 1, 'BSN-1-C', 37, 'CON', 'BC305', 'MTh', '2:00 PM', '3:20 PM', NULL),
('SPIECO-1-G', 1, 'BSN-1-D', 37, 'CON', 'BC305', 'MTh', '4:30 PM', '5:50 PM', NULL),
('SPIECO-1-H', 1, 'BSN-1-E', 36, 'CON', 'BC308', 'MTh', '4:30 PM', '5:50 PM', NULL),
('SPIECO-1-I', 1, 'BSN-1-F', 36, 'CON', 'BC308', 'MTh', '6:00 PM', '7:20 PM', NULL),
('SPIECO-1-J', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC305', 'MTh', '6:00 PM', '7:20 PM', NULL),
('SPIECO-2-A', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'BC205', 'TF', '6:00 PM', '7:20 PM', NULL),
('TAX01-3-A', 3, 'BSLM-3-A, BSOA-3-A', 24, 'SMA', 'BC204', 'TF', '11:00 AM', '12:20 PM', NULL),
('TAX3-4-A', 4, 'BSLM-4-A', 14, 'SMA', 'BC307', 'WS', '9:30 AM', '10:50 AM', NULL),
('TRANS-3-A', 3, 'BAELS-3-A', 1, 'SLA', 'FEC208', 'TF', '11:00 AM', '12:20 PM', NULL),
('UNDSELF-1-A', 1, 'BEED-1-A', 22, 'SED', 'S302', 'TF', '12:30 PM', '1:50 PM', NULL),
('UNDSELF-1-B', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'S301', 'WS', '8:00 AM', '9:20 AM', NULL),
('UNDSELF-1-C', 1, 'BSN-1-A', 37, 'CON', 'BC305', 'TF', '2:00 PM', '3:20 PM', NULL),
('UNDSELF-1-D', 1, 'BSN-1-B', 37, 'CON', 'BC305', 'TF', '4:30 PM', '5:50 PM', NULL),
('UNDSELF-1-E', 1, 'BSN-1-C', 37, 'CON', 'BC305', 'TF', '6:00 PM', '7:20 PM', NULL),
('UNDSELF-1-F', 1, 'BSN-1-D', 37, 'CON', 'BC305', 'WS', '8:00 AM', '9:20 AM', NULL),
('UNDSELF-1-G', 1, 'BSN-1-E', 36, 'CON', 'BC308', 'TF', '11:00 AM', '12:20 PM', NULL),
('UNDSELF-1-H', 1, 'BSN-1-F', 36, 'CON', 'BC308', 'TF', '12:30 PM', '1:50 PM', NULL),
('UNDSELF-1-I', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC305', 'WS', '9:30 AM', '10:50 AM', NULL),
('VOCMIS-2-A', 2, 'BEED-2-A, BPED-2-A', 10, 'SED', 'FEC208', 'WS', '12:30 PM', '1:50 PM', NULL),
('VOCMIS-2-B', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'SEB302', 'WS', '9:30 AM', '10:50 AM', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_final_assignment`
--
ALTER TABLE `tbl_final_assignment`
  ADD PRIMARY KEY (`fa_course_section`,`fa_room_code`,`fa_day_abbr`,`fa_start_time`,`fa_end_time`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
