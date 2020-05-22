-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2019 at 03:23 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bhi_doctor_directory`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_building`
--

CREATE TABLE `tbl_building` (
  `PK_building_ID` bigint(20) NOT NULL,
  `building_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `building_abbr` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `building_color` varchar(7) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_building`
--

INSERT INTO `tbl_building` (`PK_building_ID`, `building_name`, `building_abbr`, `building_color`) VALUES
(1, 'North Annex Building', 'NAB', '#527500'),
(2, 'South Annex Building', 'SAB', '#7e1618'),
(3, 'Northwing Building', 'NWB', '#171771');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_details`
--

CREATE TABLE `tbl_clinic_details` (
  `PK_clinic_details_ID` bigint(20) NOT NULL,
  `FK_building_ID` bigint(20) NOT NULL,
  `FK_doctor_ID` bigint(20) NOT NULL,
  `clinic_room_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_clinic_details`
--

INSERT INTO `tbl_clinic_details` (`PK_clinic_details_ID`, `FK_building_ID`, `FK_doctor_ID`, `clinic_room_no`) VALUES
(1, 1, 1, 2201),
(2, 1, 2, 2207),
(3, 2, 3, 149),
(4, 0, 4, 0),
(5, 1, 5, 1),
(6, 2, 6, 142),
(7, 1, 7, 107);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_clinic_schedule`
--

CREATE TABLE `tbl_clinic_schedule` (
  `PK_clinic_schedule_ID` bigint(20) NOT NULL,
  `sched_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sched_time_start` time NOT NULL,
  `sched_time_end` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_clinic_schedule`
--

INSERT INTO `tbl_clinic_schedule` (`PK_clinic_schedule_ID`, `sched_day`, `sched_time_start`, `sched_time_end`) VALUES
(1, '2', '10:00:00', '12:00:00'),
(2, '3', '10:00:00', '12:00:00'),
(3, '4', '10:00:00', '12:00:00'),
(4, '5', '10:00:00', '12:00:00'),
(5, '6', '10:00:00', '12:00:00'),
(6, '7', '10:00:00', '12:00:00'),
(7, '2', '08:00:00', '10:00:00'),
(8, '2', '15:00:00', '18:00:00'),
(9, '3', '08:00:00', '10:00:00'),
(10, '3', '15:00:00', '18:00:00'),
(11, '4', '08:00:00', '10:00:00'),
(12, '4', '15:00:00', '18:00:00'),
(13, '5', '08:00:00', '10:00:00'),
(14, '5', '15:00:00', '18:00:00'),
(15, '6', '08:00:00', '10:00:00'),
(16, '6', '15:00:00', '18:00:00'),
(17, '7', '08:00:00', '22:00:00'),
(18, '2', '13:00:00', '17:00:00'),
(19, '3', '13:00:00', '17:00:00'),
(20, '4', '13:00:00', '17:00:00'),
(21, '5', '13:00:00', '17:00:00'),
(22, '6', '13:00:00', '17:00:00'),
(23, '1', '00:00:00', '00:00:00'),
(24, '1', '00:00:00', '00:00:00'),
(25, '2', '08:00:00', '12:00:00'),
(26, '2', '15:00:00', '17:00:00'),
(27, '3', '20:00:00', '12:00:00'),
(28, '3', '15:00:00', '17:00:00'),
(29, '4', '08:00:00', '12:00:00'),
(30, '4', '15:00:00', '17:00:00'),
(31, '5', '08:00:00', '12:00:00'),
(32, '5', '15:00:00', '17:00:00'),
(33, '6', '08:00:00', '12:00:00'),
(34, '6', '15:00:00', '17:00:00'),
(35, '7', '10:00:00', '12:00:00'),
(36, '2', '13:00:00', '17:00:00'),
(37, '4', '13:00:00', '17:00:00'),
(38, '6', '13:00:00', '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `PK_department_ID` bigint(20) NOT NULL,
  `FK_dept_head_ID` bigint(20) NOT NULL,
  `dept_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dept_color` varchar(7) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`PK_department_ID`, `FK_dept_head_ID`, `dept_name`, `dept_color`) VALUES
(1, 1, 'Surgery', '#de420e'),
(2, 0, 'Internal Medicine', '#117716'),
(3, 0, 'Pediatrics', '#060cd7'),
(4, 0, 'Obstetrics & Gynecology', '#893887'),
(5, 0, 'Radiology', '#393740'),
(6, 0, 'Anesthesiology', '#2f716f'),
(7, 0, 'Dermatology', '#7c3607'),
(8, 0, 'Pathology', '#000000'),
(9, 0, 'Rehabilitation Medicine', '#0fbcca');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_clinic`
--

CREATE TABLE `tbl_doctor_clinic` (
  `PK_doctor_clinic_ID` bigint(20) NOT NULL,
  `FK_doctor_ID` bigint(20) NOT NULL,
  `FK_clinic_schedule_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_doctor_clinic`
--

INSERT INTO `tbl_doctor_clinic` (`PK_doctor_clinic_ID`, `FK_doctor_ID`, `FK_clinic_schedule_ID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 2, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 3, 18),
(19, 3, 19),
(20, 3, 20),
(21, 3, 21),
(22, 3, 22),
(23, 4, 23),
(24, 5, 24),
(25, 6, 25),
(26, 6, 26),
(27, 6, 27),
(28, 6, 28),
(29, 6, 29),
(30, 6, 30),
(31, 6, 31),
(32, 6, 32),
(33, 6, 33),
(34, 6, 34),
(35, 6, 35),
(36, 7, 36),
(37, 7, 37),
(38, 7, 38);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_hmo`
--

CREATE TABLE `tbl_doctor_hmo` (
  `PK_doctor_hmo_ID` bigint(20) NOT NULL,
  `FK_doctor_ID` bigint(20) NOT NULL,
  `FK_hmo_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_doctor_hmo`
--

INSERT INTO `tbl_doctor_hmo` (`PK_doctor_hmo_ID`, `FK_doctor_ID`, `FK_hmo_ID`) VALUES
(1, 4, 3),
(2, 4, 2),
(3, 4, 6),
(4, 4, 5),
(5, 4, 4),
(6, 4, 7),
(7, 4, 1),
(8, 4, 8),
(9, 4, 10),
(10, 4, 11),
(11, 4, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_profile`
--

CREATE TABLE `tbl_doctor_profile` (
  `PK_doctor_ID` bigint(20) NOT NULL,
  `FK_department_ID` bigint(20) NOT NULL,
  `doc_LName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc_FName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc_MName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_NSuff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_fix_suff` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc_add_suff` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doc_status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `doc_availability` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `doc_avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_doctor_profile`
--

INSERT INTO `tbl_doctor_profile` (`PK_doctor_ID`, `FK_department_ID`, `doc_LName`, `doc_FName`, `doc_MName`, `doc_NSuff`, `doc_fix_suff`, `doc_add_suff`, `doc_status`, `doc_availability`, `doc_avatar`) VALUES
(1, 1, 'RIMANDO', 'NATHANIEL', 'V', '', ', MD', ', FPCS, FPSGS', 'active', 'available', '/uploads/doctor_images/RIMANDO_NATHANIEL/doctor_avatar_male.jpg'),
(2, 3, 'RIMORIN', 'LAWRENCE HERMES ANDREW', 'E.', '', ', MD', ', FPPS', 'active', 'available', '/uploads/doctor_images/RIMORIN_LAWRENCE_HERMES_ANDREW/doctor_avatar_male.jpg'),
(3, 4, 'MONTEMAYOR', 'MARIA CIELO', 'M', '', ', MD', ', FPOGS', 'active', 'available', '/uploads/doctor_images/MONTEMAYOR_MARIA_CIELO/doctor_avatar_female.jpg'),
(4, 6, 'BUCCAT', 'MARY ANN', '', '', ', MD', ', DPBA', 'active', 'available', '/uploads/doctor_images/BUCCAT_MARY_ANN/doctor_avatar_female.jpg'),
(5, 5, 'DE GUZMAN', 'MENCHIE', 'L', '', ', MD', ', FPCR, FUSP, FCTMRISP', 'active', 'available', '/uploads/doctor_images/DE_GUZMAN_MENCHIE/doctor_avatar_female.jpg'),
(6, 2, 'SIBAYAN', 'GENOVEVA', '', '', ', MD', ', FPCP', 'active', 'available', '/uploads/doctor_images/SIBAYAN_GENOVEVA/doctor_avatar_female.jpg'),
(7, 1, 'CERENO', 'JOSE ANGELITO', 'NEVADO', '', ', MD', ', FPSGS, FICS, MPA', 'active', 'available', '/uploads/doctor_images/CERENO_JOSE_ANGELITO/18087.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_schedule`
--

CREATE TABLE `tbl_doctor_schedule` (
  `PK_doctor_schedule_ID` bigint(20) NOT NULL,
  `FK_doctor_ID` bigint(20) NOT NULL,
  `FK_schedule_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_doctor_specialty`
--

CREATE TABLE `tbl_doctor_specialty` (
  `PK_doctor_specialty_ID` bigint(20) NOT NULL,
  `FK_doctor_ID` bigint(20) NOT NULL,
  `FK_specialty_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_doctor_specialty`
--

INSERT INTO `tbl_doctor_specialty` (`PK_doctor_specialty_ID`, `FK_doctor_ID`, `FK_specialty_ID`) VALUES
(1, 7, 6),
(2, 7, 7),
(3, 7, 15);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hmo_list`
--

CREATE TABLE `tbl_hmo_list` (
  `PK_hmo_ID` bigint(20) NOT NULL,
  `hmo_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_hmo_list`
--

INSERT INTO `tbl_hmo_list` (`PK_hmo_ID`, `hmo_name`) VALUES
(1, 'MediCard Health Check'),
(2, 'Maxicare EReady'),
(3, 'Intellicare'),
(4, 'Avega'),
(5, 'I-Care'),
(6, 'Health Maintenance Inc.'),
(7, 'AsianLife'),
(8, 'Cocolife'),
(9, 'Life and Health'),
(10, 'Philcare'),
(11, 'Health Plan Philippines Inc.'),
(12, 'Eastwest');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specialty`
--

CREATE TABLE `tbl_specialty` (
  `PK_specialty_ID` bigint(20) NOT NULL,
  `FK_department_ID` bigint(20) NOT NULL,
  `specialty_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `specialty_color` varchar(7) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_specialty`
--

INSERT INTO `tbl_specialty` (`PK_specialty_ID`, `FK_department_ID`, `specialty_name`, `specialty_color`) VALUES
(1, 2, 'Cardiology', '#f97d33'),
(2, 4, 'Gynaecological Endoscopy', '#6d4161'),
(3, 1, 'Ear Nose & Throat', '#cc5813'),
(4, 2, 'Gastroenterology', '#c0c0c0'),
(5, 2, 'Infectious Diseases', '#574f46'),
(6, 1, 'Orthopedics', '#2c229f'),
(7, 1, 'Traumatology', '#a02141'),
(8, 2, 'Neurology', '#3ce851'),
(9, 2, 'Pulmonology', '#8d4148'),
(10, 3, 'Hematology', '#dd7120'),
(11, 2, 'Oncology', '#9a0c28'),
(12, 4, 'Sonology', '#c24ebf'),
(13, 2, 'Nephrology', '#154f4f'),
(14, 2, 'Psychiatry', '#3c2f53'),
(15, 1, 'General Surgery', '#ff151c'),
(16, 2, 'Endocrinology', '#138888'),
(17, 2, 'Diabetology', '#7c463f'),
(18, 4, 'Perinatology', '#9c877a'),
(19, 2, 'Urology', '#6b8171'),
(20, 1, 'Opthalmology', '#11aebb'),
(21, 2, 'Rheumatology', '#265e27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_systemlogs`
--

CREATE TABLE `tbl_systemlogs` (
  `PK_systemlogs_ID` bigint(20) NOT NULL,
  `FK_user_ID` bigint(20) NOT NULL,
  `log_ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `log_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `log_timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_systemlogs`
--

INSERT INTO `tbl_systemlogs` (`PK_systemlogs_ID`, `FK_user_ID`, `log_ip_address`, `log_description`, `log_timestamp`) VALUES
(1, 1, '192.168.0.125', 'Added New Building', '2019-10-21 15:23:09'),
(2, 1, '192.168.0.125', 'Added New Building', '2019-10-21 15:23:28'),
(3, 1, '192.168.0.125', 'Added New Building', '2019-10-21 15:23:49'),
(4, 1, '192.168.0.125', 'Updated Building[2]', '2019-10-21 15:23:58'),
(5, 1, '192.168.0.125', 'Added New Building', '2019-10-21 15:55:01'),
(6, 1, '192.168.0.125', 'Added New Building', '2019-10-21 16:01:53'),
(7, 1, '192.168.0.125', 'Added New Building', '2019-10-21 16:27:05'),
(8, 1, '192.168.0.125', 'Added New Building', '2019-10-21 16:29:28'),
(9, 1, '192.168.0.125', 'Added New Building', '2019-10-21 16:37:29'),
(10, 1, '192.168.0.125', 'Added New Building', '2019-10-21 16:45:19'),
(11, 1, '192.168.0.125', 'Added New HMO', '2019-10-21 17:01:47'),
(12, 1, '192.168.0.125', 'Added New HMO', '2019-10-21 17:02:09'),
(13, 1, '192.168.0.125', 'Added New HMO', '2019-10-21 17:02:56'),
(14, 1, '192.168.0.125', 'User-Login Authenticated [00000]', '2019-10-23 14:54:02'),
(15, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:54:18'),
(16, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:54:40'),
(17, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:54:59'),
(18, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:55:11'),
(19, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:55:23'),
(20, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:55:59'),
(21, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:56:21'),
(22, 1, '192.168.0.125', 'Added New HMO', '2019-10-23 14:56:38'),
(23, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:13'),
(24, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:22'),
(25, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:30'),
(26, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:34'),
(27, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:39'),
(28, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:44'),
(29, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:51'),
(30, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:57:56'),
(31, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:58:08'),
(32, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:58:12'),
(33, 1, '192.168.0.125', 'Added New Building', '2019-10-23 14:58:18'),
(34, 1, '192.168.0.125', 'Updated Department[1]', '2019-10-23 14:59:21'),
(35, 1, '192.168.0.125', 'Added New Building', '2019-10-23 15:36:09'),
(36, 1, '192.168.0.125', 'User-Login Authenticated [00000]', '2019-10-28 08:53:13'),
(37, 1, '192.168.0.125', 'User-Login Authenticated [00000]', '2019-10-28 14:32:02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_system_users`
--

CREATE TABLE `tbl_system_users` (
  `PK_user_ID` bigint(20) NOT NULL,
  `FK_user_role_ID` bigint(20) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_system_users`
--

INSERT INTO `tbl_system_users` (`PK_user_ID`, `FK_user_role_ID`, `user_name`, `user_title`, `user_username`, `user_password`, `user_avatar`, `user_status`) VALUES
(1, 0, 'Administrator', 'System Administrator', '00000', 'dd0f67d4084f127ce4f6f8cc5fd7c72c3b698e2e', 'uploads/defaults/sys_admin.png', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_roles`
--

CREATE TABLE `tbl_user_roles` (
  `PK_user_role_ID` bigint(20) NOT NULL,
  `role_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role_params` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_building`
--
ALTER TABLE `tbl_building`
  ADD PRIMARY KEY (`PK_building_ID`);

--
-- Indexes for table `tbl_clinic_details`
--
ALTER TABLE `tbl_clinic_details`
  ADD PRIMARY KEY (`PK_clinic_details_ID`);

--
-- Indexes for table `tbl_clinic_schedule`
--
ALTER TABLE `tbl_clinic_schedule`
  ADD PRIMARY KEY (`PK_clinic_schedule_ID`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`PK_department_ID`);

--
-- Indexes for table `tbl_doctor_clinic`
--
ALTER TABLE `tbl_doctor_clinic`
  ADD PRIMARY KEY (`PK_doctor_clinic_ID`);

--
-- Indexes for table `tbl_doctor_hmo`
--
ALTER TABLE `tbl_doctor_hmo`
  ADD PRIMARY KEY (`PK_doctor_hmo_ID`);

--
-- Indexes for table `tbl_doctor_profile`
--
ALTER TABLE `tbl_doctor_profile`
  ADD PRIMARY KEY (`PK_doctor_ID`);

--
-- Indexes for table `tbl_doctor_schedule`
--
ALTER TABLE `tbl_doctor_schedule`
  ADD PRIMARY KEY (`PK_doctor_schedule_ID`);

--
-- Indexes for table `tbl_doctor_specialty`
--
ALTER TABLE `tbl_doctor_specialty`
  ADD PRIMARY KEY (`PK_doctor_specialty_ID`);

--
-- Indexes for table `tbl_hmo_list`
--
ALTER TABLE `tbl_hmo_list`
  ADD PRIMARY KEY (`PK_hmo_ID`);

--
-- Indexes for table `tbl_specialty`
--
ALTER TABLE `tbl_specialty`
  ADD PRIMARY KEY (`PK_specialty_ID`);

--
-- Indexes for table `tbl_systemlogs`
--
ALTER TABLE `tbl_systemlogs`
  ADD PRIMARY KEY (`PK_systemlogs_ID`);

--
-- Indexes for table `tbl_system_users`
--
ALTER TABLE `tbl_system_users`
  ADD PRIMARY KEY (`PK_user_ID`);

--
-- Indexes for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
  ADD PRIMARY KEY (`PK_user_role_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_building`
--
ALTER TABLE `tbl_building`
  MODIFY `PK_building_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_clinic_details`
--
ALTER TABLE `tbl_clinic_details`
  MODIFY `PK_clinic_details_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_clinic_schedule`
--
ALTER TABLE `tbl_clinic_schedule`
  MODIFY `PK_clinic_schedule_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `PK_department_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_doctor_clinic`
--
ALTER TABLE `tbl_doctor_clinic`
  MODIFY `PK_doctor_clinic_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_doctor_hmo`
--
ALTER TABLE `tbl_doctor_hmo`
  MODIFY `PK_doctor_hmo_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_doctor_profile`
--
ALTER TABLE `tbl_doctor_profile`
  MODIFY `PK_doctor_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_doctor_schedule`
--
ALTER TABLE `tbl_doctor_schedule`
  MODIFY `PK_doctor_schedule_ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_doctor_specialty`
--
ALTER TABLE `tbl_doctor_specialty`
  MODIFY `PK_doctor_specialty_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_hmo_list`
--
ALTER TABLE `tbl_hmo_list`
  MODIFY `PK_hmo_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_specialty`
--
ALTER TABLE `tbl_specialty`
  MODIFY `PK_specialty_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_systemlogs`
--
ALTER TABLE `tbl_systemlogs`
  MODIFY `PK_systemlogs_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_system_users`
--
ALTER TABLE `tbl_system_users`
  MODIFY `PK_user_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user_roles`
--
ALTER TABLE `tbl_user_roles`
  MODIFY `PK_user_role_ID` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
