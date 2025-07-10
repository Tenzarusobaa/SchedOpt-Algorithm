-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2025 at 11:15 AM
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
  `fa_course_year` int(11) NOT NULL,
  `fa_program_section` varchar(100) DEFAULT NULL,
  `fa_student_count` int(11) DEFAULT NULL,
  `fa_department` varchar(50) DEFAULT NULL,
  `fa_room_code` varchar(20) NOT NULL,
  `fa_day_abbr` varchar(10) NOT NULL,
  `fa_final_timeslot` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_final_assignment`
--

INSERT INTO `tbl_final_assignment` (`fa_course_section`, `fa_course_year`, `fa_program_section`, `fa_student_count`, `fa_department`, `fa_room_code`, `fa_day_abbr`, `fa_final_timeslot`) VALUES
('ACADWRI-2-A', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'C311', 'WS', '6:00 PM - 7:20 PM'),
('ACADWRI-2-B', 2, 'AEET-2-A, BSBME-2-A', 32, 'CSITE', 'S301', 'WS', '4:30 PM - 5:50 PM'),
('ACADWRI-2-C', 2, 'BSCE-2-A', 25, 'CSITE', 'SEB302', 'TF', '8:00 AM - 9:20 AM'),
('ACADWRI-2-D', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'C311', 'TF', '9:30 AM - 10:50 AM'),
('ACADWRI-2-E', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'TF', '9:30 AM - 10:50 AM'),
('ACADWRI-2-F', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC206', 'MTh', '9:30 AM - 10:50 AM'),
('ACADWRI-2-G', 2, 'BSNMCA-2-A', 6, 'CSITE', 'S304', 'TF', '9:30 AM - 10:50 AM'),
('ARTAPP-1-A', 1, 'AEET-1-A', 15, 'CSITE', 'BC307', 'WS', '8:00 AM - 9:20 AM'),
('ARTAPP-2-A', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'BC204', 'TF', '11:00 AM - 12:20 PM'),
('ARTAPP-2-B', 2, 'BSBME-2-A', 21, 'CSITE', 'SEB302', 'MTh', '2:00 PM - 3:20 PM'),
('ARTAPP-2-C', 2, 'BSCE-2-A', 25, 'CSITE', 'SEB302', 'TF', '6:00 PM - 7:20 PM'),
('ARTAPP-2-D', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'C311', 'TF', '8:00 AM - 9:20 AM'),
('ARTAPP-2-E', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'TF', '8:00 AM - 9:20 AM'),
('ARTAPP-2-F', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC206', 'WS', '11:00 AM - 12:20 PM'),
('ARTAPP-2-G', 2, 'BSNMCA-2-A', 6, 'CSITE', 'S304', 'TF', '12:30 PM - 1:50 PM'),
('CONWOR-2-A', 2, 'AEET-2-A', 11, 'CSITE', 'BC307', 'MTh', '2:00 PM - 3:20 PM'),
('CONWOR-3-A', 3, 'BACOMM-3-A, BAELS-3-A, BAINDIS-3-A, BAINTS-3-A, BAPHILO-3-A', 39, 'SLA', 'C311', 'WS', '2:00 PM - 3:20 PM'),
('CONWOR-3-B', 3, 'BSN-3-A', 38, 'CON', 'C311', 'MTh', '4:30 PM - 5:50 PM'),
('CONWOR-3-C', 3, 'BSN-3-B', 38, 'CON', 'C311', 'MTh', '6:00 PM - 7:20 PM'),
('CONWOR-3-D', 3, 'BSN-3-C', 38, 'CON', 'C311', 'MTh', '8:00 AM - 9:20 AM'),
('CONWOR-3-E', 3, 'BSN-3-D', 38, 'CON', 'C311', 'MTh', '12:30 PM - 1:50 PM'),
('CONWOR-3-F', 3, 'BSN-3-E', 37, 'CON', 'C403', 'MTh', '11:00 AM - 12:20 PM'),
('CONWOR-3-G', 3, 'BSN-3-F', 37, 'CON', 'BC205', 'TF', '2:00 PM - 3:20 PM'),
('CONWOR-3-H', 3, 'BSN-3-G', 37, 'CON', 'BC205', 'TF', '4:30 PM - 5:50 PM'),
('CONWOR-3-I', 3, 'BSN-3-H', 37, 'CON', 'BC205', 'TF', '6:00 PM - 7:20 PM'),
('CONWOR-3-J', 3, 'BSMATH-3-A', 1, 'CSITE', 'S304', 'WS', '4:30 PM - 5:50 PM'),
('ELSELECT-4-A', 4, 'BSLM-4-A', 14, 'SMA', 'BC307', 'WS', '11:00 AM - 12:20 PM'),
('ETHICS-1-A', 1, 'AEET-1-A', 15, 'CSITE', 'BC307', 'WS', '12:30 PM - 1:50 PM'),
('ETHICS-3-A', 3, 'BSLM-3-A, BSOA-3-A', 24, 'SMA', 'SEB302', 'TF', '9:30 AM - 10:50 AM'),
('ETHICS-3-B', 3, 'BSBME-3-A, BSCE-3-A', 38, 'CSITE', 'C311', 'MTh', '9:30 AM - 10:50 AM'),
('ETHICS-3-C', 3, 'BSCE-3-B', 24, 'CSITE', 'SEB302', 'TF', '11:00 AM - 12:20 PM'),
('ETHICS-3-D', 3, 'BSCS-3-A, BSECE-3-A', 31, 'CSITE', 'S301', 'WS', '8:00 AM - 9:20 AM'),
('ETHICS-3-E', 3, 'BSIT-3-A, BSMATH-3-A, BSNMCA-3-A', 36, 'CSITE', 'BC206', 'MTh', '2:00 PM - 3:20 PM'),
('ETHICS-4-A', 4, 'BSCPE-4-A', 21, 'CSITE', 'SEB302', 'MTh', '4:30 PM - 5:50 PM'),
('FFP1-1-A', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'C403', 'WS', '2:00 PM - 3:20 PM'),
('FFP1-1-B', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'BC204', 'WS', '9:30 AM - 10:50 AM'),
('FFP1-1-C', 1, 'BSN-1-A', 37, 'CON', 'C403', 'WS', '4:30 PM - 5:50 PM'),
('FFP1-1-D', 1, 'BSN-1-B', 37, 'CON', 'C403', 'WS', '6:00 PM - 7:20 PM'),
('FFP1-1-E', 1, 'BSN-1-C', 37, 'CON', 'C403', 'WS', '8:00 AM - 9:20 AM'),
('FFP1-1-F', 1, 'BSN-1-D', 37, 'CON', 'C403', 'WS', '12:30 PM - 1:50 PM'),
('FFP1-1-G', 1, 'BSN-1-E', 36, 'CON', 'BC206', 'WS', '2:00 PM - 3:20 PM'),
('FFP1-1-H', 1, 'BSN-1-F', 36, 'CON', 'BC206', 'WS', '4:30 PM - 5:50 PM'),
('FFP1-1-I', 1, 'BEED-1-A', 22, 'SED', 'SEB302', 'WS', '4:30 PM - 5:50 PM'),
('FFP1-1-J', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'BC204', 'MTh', '6:00 PM - 7:20 PM'),
('FFP1-1-K', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'S301', 'TF', '2:00 PM - 3:20 PM'),
('FFP1-1-L', 1, 'BSCE-1-A', 30, 'CSITE', 'BC204', 'TF', '2:00 PM - 3:20 PM'),
('FFP1-1-M', 1, 'BSCE-1-B', 30, 'CSITE', 'BC204', 'TF', '4:30 PM - 5:50 PM'),
('FFP1-1-N', 1, 'BSCPE-1-A', 20, 'CSITE', 'BC307', 'TF', '2:00 PM - 3:20 PM'),
('FFP1-1-O', 1, 'BSCS-1-A', 30, 'CSITE', 'BC204', 'TF', '6:00 PM - 7:20 PM'),
('FFP1-1-P', 1, 'BSECE-1-A', 20, 'CSITE', 'BC307', 'TF', '4:30 PM - 5:50 PM'),
('FFP1-1-Q', 1, 'BSIT-1-A', 40, 'CSITE', 'C311', 'TF', '2:00 PM - 3:20 PM'),
('FFP1-1-R', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'BC307', 'TF', '11:00 AM - 12:20 PM'),
('GEELECT-LM-3-A', 3, 'BSMATH-3-A', 1, 'CSITE', 'S304', 'WS', '6:00 PM - 7:20 PM'),
('GEOPHY-3-A', 3, 'BSLM-3-A', 15, 'SMA', 'BC307', 'WS', '9:30 AM - 10:50 AM'),
('GMELECT-LM-3-A', 3, 'BSLM-3-A, BSOA-3-A', 24, 'SMA', 'SEB302', 'WS', '2:00 PM - 3:20 PM'),
('LITMIN-4-A', 4, 'BACOMM-4-A', 16, 'SLA', 'BC307', 'WS', '4:30 PM - 5:50 PM'),
('MAT106-2-A', 2, 'BSLM-2-A', 26, 'SMA', 'SEB302', 'TF', '4:30 PM - 5:50 PM'),
('MATMOD-1-A', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'BC204', 'MTh', '2:00 PM - 3:20 PM'),
('MATMOD-1-B', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'S301', 'TF', '12:30 PM - 1:50 PM'),
('MATMOD-1-C', 1, 'BSCE-1-A', 30, 'CSITE', 'BC204', 'WS', '2:00 PM - 3:20 PM'),
('MATMOD-1-D', 1, 'BSCE-1-B', 30, 'CSITE', 'BC204', 'WS', '4:30 PM - 5:50 PM'),
('MATMOD-1-E', 1, 'BSCPE-1-A', 20, 'CSITE', 'BC307', 'TF', '12:30 PM - 1:50 PM'),
('MATMOD-1-F', 1, 'BSCS-1-A', 30, 'CSITE', 'BC204', 'WS', '6:00 PM - 7:20 PM'),
('MATMOD-1-G', 1, 'BSECE-1-A', 20, 'CSITE', 'BC307', 'TF', '9:30 AM - 10:50 AM'),
('MATMOD-1-H', 1, 'BSIT-1-A', 40, 'CSITE', 'C311', 'TF', '12:30 PM - 1:50 PM'),
('MATMOD-1-I', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'BC307', 'WS', '6:00 PM - 7:20 PM'),
('NSTP1-1-A', 1, 'BACOMM-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 32, 'SLA', 'S301', 'WS', '2:00 PM - 3:20 PM'),
('NSTP1-1-B', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'BC204', 'WS', '11:00 AM - 12:20 PM'),
('NSTP1-1-C', 1, 'BSN-1-A', 37, 'CON', 'C403', 'WS', '9:30 AM - 10:50 AM'),
('NSTP1-1-D', 1, 'BSN-1-B', 37, 'CON', 'C403', 'WS', '11:00 AM - 12:20 PM'),
('NSTP1-1-E', 1, 'BSN-1-C', 37, 'CON', 'C403', 'MTh', '2:00 PM - 3:20 PM'),
('NSTP1-1-F', 1, 'BSN-1-D', 37, 'CON', 'C403', 'MTh', '4:30 PM - 5:50 PM'),
('NSTP1-1-G', 1, 'BSN-1-E', 36, 'CON', 'BC206', 'WS', '6:00 PM - 7:20 PM'),
('NSTP1-1-H', 1, 'BSN-1-F', 36, 'CON', 'BC206', 'WS', '8:00 AM - 9:20 AM'),
('NSTP1-1-I', 1, 'BEED-1-A', 22, 'SED', 'SEB302', 'WS', '6:00 PM - 7:20 PM'),
('NSTP1-1-J', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'BC204', 'MTh', '8:00 AM - 9:20 AM'),
('NSTP1-1-K', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'S301', 'TF', '4:30 PM - 5:50 PM'),
('NSTP1-1-L', 1, 'BSCE-1-A', 30, 'CSITE', 'BC204', 'TF', '8:00 AM - 9:20 AM'),
('NSTP1-1-M', 1, 'BSCE-1-B', 30, 'CSITE', 'BC204', 'TF', '12:30 PM - 1:50 PM'),
('NSTP1-1-N', 1, 'BSCPE-1-A', 20, 'CSITE', 'BC307', 'TF', '6:00 PM - 7:20 PM'),
('NSTP1-1-O', 1, 'BSCS-1-A', 30, 'CSITE', 'BC204', 'TF', '9:30 AM - 10:50 AM'),
('NSTP1-1-P', 1, 'BSECE-1-A', 20, 'CSITE', 'BC307', 'TF', '8:00 AM - 9:20 AM'),
('NSTP1-1-Q', 1, 'BSIT-1-A', 40, 'CSITE', 'C311', 'TF', '4:30 PM - 5:50 PM'),
('NSTP1-1-R', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'BC307', 'WS', '2:00 PM - 3:20 PM'),
('NSTP101-1-A', 1, 'BAELS-1-A', 5, 'SLA', 'S304', 'WS', '2:00 PM - 3:20 PM'),
('PATHFIT1-1-A', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'MPCC1C', 'Th', '8:00 AM - 10:00 AM'),
('PATHFIT1-1-B', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'MPCC1D', 'T', '8:00 AM - 10:00 AM'),
('PATHFIT1-1-C', 1, 'BSN-1-A', 37, 'CON', 'MPCC1C', 'W', '10:00 AM - 12:00 PM'),
('PATHFIT1-1-D', 1, 'BSN-1-B', 37, 'CON', 'MPCC1C', 'W', '1:00 PM - 3:00 PM'),
('PATHFIT1-1-E', 1, 'BSN-1-C', 37, 'CON', 'MPCC1C', 'W', '3:00 PM - 5:00 PM'),
('PATHFIT1-1-F', 1, 'BSN-1-D', 37, 'CON', 'MPCC1C', 'T', '10:00 AM - 12:00 PM'),
('PATHFIT1-1-G', 1, 'BSN-1-E', 36, 'CON', 'MPCC1C', 'M', '1:00 PM - 3:00 PM'),
('PATHFIT1-1-H', 1, 'BSN-1-F', 36, 'CON', 'MPCC1C', 'M', '3:00 PM - 5:00 PM'),
('PATHFIT1-1-I', 1, 'BEED-1-A', 22, 'SED', 'MPCC1D', 'Th', '3:00 PM - 5:00 PM'),
('PATHFIT1-1-J', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'MPCC1D', 'Th', '10:00 AM - 12:00 PM'),
('PATHFIT1-1-K', 1, 'AEET-1-A, BSBME-1-A', 35, 'CSITE', 'MPCC1C', 'S', '10:00 AM - 12:00 PM'),
('PATHFIT1-1-L', 1, 'BSCE-1-A', 30, 'CSITE', 'MPCC1C', 'W', '8:00 AM - 10:00 AM'),
('PATHFIT1-1-M', 1, 'BSCE-1-B', 30, 'CSITE', 'MPCC1D', 'F', '10:00 AM - 12:00 PM'),
('PATHFIT1-1-N', 1, 'BSCPE-1-A', 20, 'CSITE', 'MPCC1D', 'Th', '8:00 AM - 10:00 AM'),
('PATHFIT1-1-O', 1, 'BSCS-1-A', 30, 'CSITE', 'MPCC1D', 'T', '1:00 PM - 3:00 PM'),
('PATHFIT1-1-P', 1, 'BSECE-1-A', 20, 'CSITE', 'MPCC1D', 'W', '10:00 AM - 12:00 PM'),
('PATHFIT1-1-Q', 1, 'BSIT-1-A', 40, 'CSITE', 'MPCC1C', 'F', '10:00 AM - 12:00 PM'),
('PATHFIT1-1-R', 1, 'BSMATH-1-A, BSNMCA-1-A', 16, 'CSITE', 'MPCC1D', 'W', '1:00 PM - 3:00 PM'),
('PATHFIT3-2-A', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'MPCC1D', 'T', '3:00 PM - 5:00 PM'),
('PATHFIT3-2-B', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'MPCC1C', 'T', '3:00 PM - 5:00 PM'),
('PATHFIT3-2-C', 2, 'BSN-2-A', 38, 'CON', 'MPCC1C', 'T', '8:00 AM - 10:00 AM'),
('PATHFIT3-2-D', 2, 'BSN-2-B', 38, 'CON', 'MPCC1C', 'Th', '10:00 AM - 12:00 PM'),
('PATHFIT3-2-E', 2, 'BSN-2-C', 38, 'CON', 'MPCC1C', 'Th', '1:00 PM - 3:00 PM'),
('PATHFIT3-2-F', 2, 'BSN-2-D', 38, 'CON', 'MPCC1C', 'Th', '3:00 PM - 5:00 PM'),
('PATHFIT3-2-G', 2, 'BSN-2-E', 37, 'CON', 'MPCC1C', 'S', '8:00 AM - 10:00 AM'),
('PATHFIT3-2-H', 2, 'BSN-2-F', 37, 'CON', 'MPCC1C', 'F', '1:00 PM - 3:00 PM'),
('PATHFIT3-2-I', 2, 'BSN-2-G', 37, 'CON', 'MPCC1C', 'F', '3:00 PM - 5:00 PM'),
('PATHFIT3-2-J', 2, 'BSN-2-H', 37, 'CON', 'MPCC1C', 'F', '8:00 AM - 10:00 AM'),
('PATHFIT3-2-K', 2, 'BSN-2-I', 37, 'CON', 'MPCC1C', 'M', '10:00 AM - 12:00 PM'),
('PATHFIT3-2-L', 2, 'BEED-2-A, BPED-2-A', 10, 'SED', 'MPCC1D', 'W', '3:00 PM - 5:00 PM'),
('PATHFIT3-2-M', 2, 'AEET-2-A, BSBME-2-A', 32, 'CSITE', 'MPCC1C', 'S', '3:00 PM - 5:00 PM'),
('PATHFIT3-2-N', 2, 'BSCE-2-A', 25, 'CSITE', 'MPCC1D', 'Th', '1:00 PM - 3:00 PM'),
('PATHFIT3-2-O', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'MPCC1C', 'T', '1:00 PM - 3:00 PM'),
('PATHFIT3-2-P', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'MPCC1C', 'S', '1:00 PM - 3:00 PM'),
('PATHFIT3-2-Q', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'MPCC1C', 'M', '8:00 AM - 10:00 AM'),
('PATHFIT3-2-R', 2, 'BSNMCA-2-A', 6, 'CSITE', 'MPCC1D', 'T', '10:00 AM - 12:00 PM'),
('PHIHIS-1-A', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC205', 'TF', '8:00 AM - 9:20 AM'),
('PHIHIS-1-B', 1, 'BSLM-1-A, BSOA-1-A', 29, 'SMA', 'BC204', 'MTh', '4:30 PM - 5:50 PM'),
('PHIHIS-1-C', 1, 'BEED-1-A', 22, 'SED', 'SEB302', 'WS', '8:00 AM - 9:20 AM'),
('PHIHIS-1-D', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'BC204', 'MTh', '12:30 PM - 1:50 PM'),
('PHIHUM-2-A', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'BC204', 'WS', '8:00 AM - 9:20 AM'),
('PHIHUM-2-B', 2, 'BEED-2-A, BPED-2-A', 10, 'SED', 'S304', 'TF', '2:00 PM - 3:20 PM'),
('PHIHUM-2-C', 2, 'BSN-2-A', 38, 'CON', 'C311', 'MTh', '11:00 AM - 12:20 PM'),
('PHIHUM-2-D', 2, 'BSN-2-B', 38, 'CON', 'C403', 'TF', '2:00 PM - 3:20 PM'),
('PHIHUM-2-E', 2, 'BSN-2-C', 38, 'CON', 'C403', 'TF', '4:30 PM - 5:50 PM'),
('PHIHUM-2-F', 2, 'BSN-2-D', 38, 'CON', 'C403', 'TF', '6:00 PM - 7:20 PM'),
('PHIHUM-2-G', 2, 'BSN-2-E', 37, 'CON', 'BC205', 'TF', '12:30 PM - 1:50 PM'),
('PHIHUM-2-H', 2, 'BSN-2-F', 37, 'CON', 'BC205', 'TF', '9:30 AM - 10:50 AM'),
('PHIHUM-2-I', 2, 'BSN-2-G', 37, 'CON', 'BC205', 'TF', '11:00 AM - 12:20 PM'),
('PHIHUM-2-J', 2, 'BSN-2-H', 37, 'CON', 'BC205', 'WS', '2:00 PM - 3:20 PM'),
('PHIHUM-2-K', 2, 'BSN-2-I', 37, 'CON', 'BC205', 'WS', '4:30 PM - 5:50 PM'),
('PURCOM-1-A', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC205', 'WS', '6:00 PM - 7:20 PM'),
('PURCOM-1-B', 1, 'BEED-1-A', 22, 'SED', 'SEB302', 'WS', '12:30 PM - 1:50 PM'),
('PURCOM-1-C', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'BC204', 'MTh', '9:30 AM - 10:50 AM'),
('PURCOM-1-D', 1, 'BSN-1-A', 37, 'CON', 'BC205', 'WS', '8:00 AM - 9:20 AM'),
('PURCOM-1-E', 1, 'BSN-1-B', 37, 'CON', 'BC205', 'WS', '12:30 PM - 1:50 PM'),
('PURCOM-1-F', 1, 'BSN-1-C', 37, 'CON', 'BC205', 'WS', '9:30 AM - 10:50 AM'),
('PURCOM-1-G', 1, 'BSN-1-D', 37, 'CON', 'BC205', 'WS', '11:00 AM - 12:20 PM'),
('PURCOM-1-H', 1, 'BSN-1-E', 36, 'CON', 'BC206', 'MTh', '4:30 PM - 5:50 PM'),
('PURCOM-1-I', 1, 'BSN-1-F', 36, 'CON', 'BC206', 'MTh', '6:00 PM - 7:20 PM'),
('RIZAL-2-A', 2, 'AEET-2-A, BSCE-2-A', 36, 'CSITE', 'BC206', 'WS', '12:30 PM - 1:50 PM'),
('RIZAL-2-B', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'C311', 'TF', '6:00 PM - 7:20 PM'),
('RIZAL-2-C', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'TF', '6:00 PM - 7:20 PM'),
('RIZAL-2-D', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC206', 'WS', '9:30 AM - 10:50 AM'),
('RIZAL-2-E', 2, 'BSNMCA-2-A', 6, 'CSITE', 'S304', 'TF', '8:00 AM - 9:20 AM'),
('RIZAL-3-A', 3, 'BSN-3-A', 38, 'CON', 'C311', 'WS', '12:30 PM - 1:50 PM'),
('RIZAL-3-B', 3, 'BSN-3-B', 38, 'CON', 'C311', 'WS', '9:30 AM - 10:50 AM'),
('RIZAL-3-C', 3, 'BSN-3-C', 38, 'CON', 'C311', 'WS', '11:00 AM - 12:20 PM'),
('RIZAL-3-D', 3, 'BSN-3-D', 38, 'CON', 'C311', 'MTh', '2:00 PM - 3:20 PM'),
('RIZAL-3-E', 3, 'BSN-3-E', 37, 'CON', 'C403', 'MTh', '6:00 PM - 7:20 PM'),
('RIZAL-3-F', 3, 'BSN-3-F', 37, 'CON', 'C403', 'MTh', '8:00 AM - 9:20 AM'),
('RIZAL-3-G', 3, 'BSN-3-G', 37, 'CON', 'C403', 'MTh', '12:30 PM - 1:50 PM'),
('RIZAL-3-H', 3, 'BSN-3-H', 37, 'CON', 'C403', 'MTh', '9:30 AM - 10:50 AM'),
('RIZAL-4-A', 4, 'BSBME-4-A', 7, 'CSITE', 'S304', 'TF', '6:00 PM - 7:20 PM'),
('SCIETECS-2-A', 2, 'BSCE-2-A', 25, 'CSITE', 'SEB302', 'TF', '12:30 PM - 1:50 PM'),
('SCIETECS-2-B', 2, 'BSCE-2-B, BSCPE-2-A', 40, 'CSITE', 'C311', 'TF', '11:00 AM - 12:20 PM'),
('SCITECS-2-A', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'C311', 'WS', '8:00 AM - 9:20 AM'),
('SCITECS-2-B', 2, 'AEET-2-A, BSBME-2-A', 32, 'CSITE', 'S301', 'WS', '6:00 PM - 7:20 PM'),
('SCITECS-2-C', 2, 'BSCS-2-A, BSECE-2-A', 35, 'CSITE', 'S301', 'TF', '11:00 AM - 12:20 PM'),
('SCITECS-2-D', 2, 'BSIT-2-A, BSMATH-2-A', 36, 'CSITE', 'BC206', 'MTh', '11:00 AM - 12:20 PM'),
('SCITECS-2-E', 2, 'BSNMCA-2-A', 6, 'CSITE', 'S304', 'TF', '11:00 AM - 12:20 PM'),
('SCITECS-3-A', 3, 'BSN-3-A', 38, 'CON', 'C403', 'TF', '8:00 AM - 9:20 AM'),
('SCITECS-3-B', 3, 'BSN-3-B', 38, 'CON', 'C403', 'TF', '12:30 PM - 1:50 PM'),
('SCITECS-3-C', 3, 'BSN-3-C', 38, 'CON', 'C403', 'TF', '9:30 AM - 10:50 AM'),
('SCITECS-3-D', 3, 'BSN-3-D', 38, 'CON', 'C403', 'TF', '11:00 AM - 12:20 PM'),
('SCITECS-3-E', 3, 'BSN-3-E', 37, 'CON', 'BC205', 'MTh', '9:30 AM - 10:50 AM'),
('SCITECS-3-F', 3, 'BSN-3-F', 37, 'CON', 'BC205', 'MTh', '11:00 AM - 12:20 PM'),
('SCITECS-3-G', 3, 'BSN-3-G', 37, 'CON', 'BC206', 'TF', '2:00 PM - 3:20 PM'),
('SCITECS-3-H', 3, 'BSN-3-H', 37, 'CON', 'BC206', 'TF', '4:30 PM - 5:50 PM'),
('SPIECO-1-A', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC205', 'MTh', '2:00 PM - 3:20 PM'),
('SPIECO-1-B', 1, 'BEED-1-A', 22, 'SED', 'SEB302', 'WS', '9:30 AM - 10:50 AM'),
('SPIECO-1-C', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'BC204', 'MTh', '11:00 AM - 12:20 PM'),
('SPIECO-1-D', 1, 'BSN-1-A', 37, 'CON', 'BC205', 'MTh', '4:30 PM - 5:50 PM'),
('SPIECO-1-E', 1, 'BSN-1-B', 37, 'CON', 'BC205', 'MTh', '6:00 PM - 7:20 PM'),
('SPIECO-1-F', 1, 'BSN-1-C', 37, 'CON', 'BC205', 'MTh', '8:00 AM - 9:20 AM'),
('SPIECO-1-G', 1, 'BSN-1-D', 37, 'CON', 'BC205', 'MTh', '12:30 PM - 1:50 PM'),
('SPIECO-1-H', 1, 'BSN-1-E', 36, 'CON', 'BC206', 'MTh', '8:00 AM - 9:20 AM'),
('SPIECO-1-I', 1, 'BSN-1-F', 36, 'CON', 'BC206', 'MTh', '12:30 PM - 1:50 PM'),
('SPIECO-2-A', 2, 'BSLM-2-A, BSOA-2-A', 39, 'SMA', 'C311', 'WS', '4:30 PM - 5:50 PM'),
('UNDSELF-1-A', 1, 'BACOMM-1-A, BAELS-1-A, BAINDIS-1-A, BAINTS-1-A, BAPHILO-1-A', 37, 'SLA', 'BC206', 'TF', '6:00 PM - 7:20 PM'),
('UNDSELF-1-B', 1, 'BEED-1-A', 22, 'SED', 'SEB302', 'WS', '11:00 AM - 12:20 PM'),
('UNDSELF-1-C', 1, 'BEED-1-B, BPED-1-A', 27, 'SED', 'SEB302', 'TF', '2:00 PM - 3:20 PM'),
('UNDSELF-1-D', 1, 'BSN-1-A', 37, 'CON', 'BC206', 'TF', '8:00 AM - 9:20 AM'),
('UNDSELF-1-E', 1, 'BSN-1-B', 37, 'CON', 'BC206', 'TF', '12:30 PM - 1:50 PM'),
('UNDSELF-1-F', 1, 'BSN-1-C', 37, 'CON', 'BC206', 'TF', '9:30 AM - 10:50 AM'),
('UNDSELF-1-G', 1, 'BSN-1-D', 37, 'CON', 'BC206', 'TF', '11:00 AM - 12:20 PM'),
('UNDSELF-1-H', 1, 'BSN-1-E', 36, 'CON', 'BC304', 'TF', '2:00 PM - 3:20 PM'),
('UNDSELF-1-I', 1, 'BSN-1-F', 36, 'CON', 'BC304', 'TF', '4:30 PM - 5:50 PM'),
('VOCMIS-2-A', 2, 'BACOMM-2-A, BAELS-2-A, BAINDIS-2-A, BAINTS-2-A, BAPHILO-2-A', 30, 'SLA', 'BC204', 'WS', '12:30 PM - 1:50 PM'),
('VOCMIS-2-B', 2, 'BEED-2-A, BPED-2-A', 10, 'SED', 'S304', 'TF', '4:30 PM - 5:50 PM');

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
