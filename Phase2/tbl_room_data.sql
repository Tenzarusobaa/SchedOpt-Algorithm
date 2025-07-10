-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 07:12 PM
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
-- Table structure for table `tbl_room_data`
--

CREATE TABLE `tbl_room_data` (
  `rd_room_code` varchar(20) NOT NULL,
  `rd_building` varchar(50) NOT NULL,
  `rd_capacity` int(11) DEFAULT NULL,
  `rd_size` varchar(50) DEFAULT NULL,
  `rd_type` varchar(50) DEFAULT NULL,
  `rd_function` varchar(100) DEFAULT NULL,
  `rd_department_owner` varchar(100) DEFAULT NULL,
  `rd_program_owner` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_room_data`
--

INSERT INTO `tbl_room_data` (`rd_room_code`, `rd_building`, `rd_capacity`, `rd_size`, `rd_type`, `rd_function`, `rd_department_owner`, `rd_program_owner`) VALUES
('ADVLAB', 'Canisius', 40, 'L', 'LAB', 'ADVLAB', 'CSITE', 'NONE'),
('AMPHI', 'Bellarmine-Campion', 40, 'L', 'LAB', 'AMPHI', 'CON', 'BSN'),
('BASICLAB', 'Canisius', 40, 'L', 'LAB', 'BASICLAB', 'CSITE', 'NONE'),
('BC203', 'Bellarmine-Campion', 60, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC204', 'Bellarmine-Campion', 30, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC205', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC206', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC304', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC305', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC307', 'Bellarmine-Campion', 20, 'M', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC308', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC401', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC402', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC403', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC405', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC406', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC407', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC408', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('BC409', 'Bellarmine-Campion', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('C108', 'Canisius', 40, 'L', 'LAB', 'BIOLAB', 'NONE', 'NONE'),
('C110', 'Canisius', 40, 'L', 'LAB', 'BIOLAB', 'NONE', 'NONE'),
('C205', 'Canisius', 25, 'M', 'LAB', 'ENGLAB', 'CSITE', 'BSECE'),
('C206', 'Canisius', 40, 'L', 'LAB', 'PHYSLAB', 'NONE', 'NONE'),
('C209', 'Canisius', 40, 'L', 'LAB', 'ANIMLAB', 'CSITE', 'BSNMCA'),
('C308', 'Canisius', 40, 'L', 'LAB', 'CHEMLAB', 'NONE', 'NONE'),
('C310', 'Canisius', 40, 'L', 'LAB', 'CHEMLAB', 'NONE', 'NONE'),
('C311', 'Canisius', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('C312A', 'Canisius', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('C312B', 'Canisius', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('C401', 'Canisius', 40, 'L', 'LAB', 'SPEECHLAB', 'SLA', 'NONE'),
('C403', 'Canisius', 40, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('C404', 'Canisius', 40, 'L', 'LAB', 'ECELAB', 'CSITE', 'BSECE'),
('C405', 'Canisius', 40, 'L', 'LAB', 'STATLAB', 'CSITE', 'BSMATH'),
('FEC204', 'LRC', 40, 'L', 'LAB', 'PSYCHLAB', 'SLA', 'BSPSY'),
('FEC208', 'LRC', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('FEC303A', 'LRC', 15, 'M', 'LAB', 'MASSCOMLAB', 'SLA', 'BACOMM'),
('FEC303D', 'LRC', 15, 'M', 'LAB', 'MASSCOMLAB', 'SLA', 'BACOMM'),
('FEC305', 'LRC', 10, 'S', 'LEC', 'LEC', 'SLA', 'BACOMM'),
('FEC311', 'LRC', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('MPCC1A', 'MPCC', 40, 'L', 'GYM', 'PATHFIT', 'NONE', 'NONE'),
('MPCC1B', 'MPCC', 40, 'L', 'GYM', 'PATHFIT', 'NONE', 'NONE'),
('MPCC1C', 'MPCC', 40, 'L', 'GYM', 'PATHFIT', 'NONE', 'NONE'),
('MPCC1D', 'MPCC', 40, 'L', 'GYM', 'PATHFIT', 'NONE', 'NONE'),
('NUTRILAB', 'Bellarmine-Campion', 40, 'L', 'LAB', 'NUTRILAB', 'CON', 'BSN'),
('S301', 'Sauras', 35, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('S302', 'Sauras', 35, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('S303', 'Sauras', 35, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('S304', 'Sauras', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('S305', 'Sauras', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('S401', 'Sauras', 35, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('S402', 'Sauras', 35, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('S403', 'Sauras', 35, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('S404', 'Sauras', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('SEB302', 'Sauras', 30, 'L', 'LEC', 'LEC', 'NONE', 'NONE'),
('SLA-ANNEX', 'Canisius', 15, 'M', 'ANNEX', 'SLA', 'SLA', 'NONE'),
('URO RM', 'LRC', 10, 'S', 'LEC', 'LEC', 'NONE', 'NONE'),
('XH105', 'Xavier Hall', 40, 'L', 'HE', 'SIM', 'SED', 'NONE'),
('XH106', 'Xavier Hall', 10, 'S', 'LEC', 'LEC', 'SMA', 'NONE'),
('XH201', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH202', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH203', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH204', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH205', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH301', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH302', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH303', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH304', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH305', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH401', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH402', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH403', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH404', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN'),
('XH405', 'Xavier Hall', 40, 'L', 'LEC', 'LEC', 'CON', 'BSN');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_room_data`
--
ALTER TABLE `tbl_room_data`
  ADD PRIMARY KEY (`rd_room_code`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
