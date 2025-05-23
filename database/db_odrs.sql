-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2025 at 12:16 PM
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
-- Database: `db_odrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `advice`
--

CREATE TABLE `advice` (
  `id` int(11) NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `groom_id` int(11) DEFAULT NULL,
  `bride_id` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `place` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `advice_to` varchar(100) DEFAULT NULL,
  `to_marry` varchar(100) DEFAULT NULL,
  `prepared_by_id` int(11) DEFAULT NULL,
  `prepared_by` varchar(255) DEFAULT NULL,
  `prepared_by_date` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `birth`
--

CREATE TABLE `birth` (
  `id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `request_for` enum('BIRTH CERTIFICATE','AUTHENTICATION','CD/LI') DEFAULT NULL,
  `number_of_copies` int(11) DEFAULT NULL,
  `brn` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pob_province` varchar(100) DEFAULT NULL,
  `pob_city` varchar(100) DEFAULT NULL,
  `pob_country` varchar(100) DEFAULT NULL,
  `father_lname` varchar(100) DEFAULT NULL,
  `father_fname` varchar(100) DEFAULT NULL,
  `father_mname` varchar(100) DEFAULT NULL,
  `mother_lname` varchar(100) DEFAULT NULL,
  `mother_fname` varchar(100) DEFAULT NULL,
  `mother_mname` varchar(100) DEFAULT NULL,
  `authorization_letter` text DEFAULT NULL,
  `valid_id` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `owner_valid_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `birth`
--

INSERT INTO `birth` (`id`, `request_id`, `request_for`, `number_of_copies`, `brn`, `sex`, `lname`, `fname`, `mname`, `dob`, `pob_province`, `pob_city`, `pob_country`, `father_lname`, `father_fname`, `father_mname`, `mother_lname`, `mother_fname`, `mother_mname`, `authorization_letter`, `valid_id`, `date_created`, `owner_valid_id`) VALUES
(1, 1, 'BIRTH CERTIFICATE', 1, '', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'BUKIDNON', 'CABANGLASAN', NULL, 'Great Sr.', 'King Arthur', 'The', 'Byron', 'Ada', 'Wurtzbach', '', '/upload/valid_id/file_68147ce6b067f.png', '2025-05-02 08:05:58', NULL),
(2, 3, 'BIRTH CERTIFICATE', 1, 'Legend', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'BUKIDNON', 'CABANGLASAN', NULL, 'Great Sr.', 'King Arthur', 'The', 'Byron', 'Ada', 'Wurtzbach', '', '/upload/valid_id/file_681481f9bb2d0.png', '2025-05-02 08:27:37', NULL),
(3, 6, 'BIRTH CERTIFICATE', 1, 'Legend', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'BUKIDNON', 'CABANGLASAN', NULL, 'Great Sr.', 'King Arthur', 'The', 'Byron', 'Ada', 'Wurtzbach', '', '/upload/valid_id/file_681484d183525.png', '2025-05-02 08:39:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cenomar`
--

CREATE TABLE `cenomar` (
  `id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `number_of_copies` int(11) DEFAULT NULL,
  `brn` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pob_province` varchar(100) DEFAULT NULL,
  `pob_city` varchar(100) DEFAULT NULL,
  `pob_country` varchar(100) DEFAULT NULL,
  `father_lname` varchar(100) DEFAULT NULL,
  `father_fname` varchar(100) DEFAULT NULL,
  `father_mname` varchar(100) DEFAULT NULL,
  `mother_lname` varchar(100) DEFAULT NULL,
  `mother_fname` varchar(100) DEFAULT NULL,
  `mother_mname` varchar(100) DEFAULT NULL,
  `authorization_letter` text DEFAULT NULL,
  `valid_id` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `owner_valid_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cenomar`
--

INSERT INTO `cenomar` (`id`, `request_id`, `number_of_copies`, `brn`, `sex`, `lname`, `fname`, `mname`, `dob`, `pob_province`, `pob_city`, `pob_country`, `father_lname`, `father_fname`, `father_mname`, `mother_lname`, `mother_fname`, `mother_mname`, `authorization_letter`, `valid_id`, `date_created`, `owner_valid_id`) VALUES
(1, 2, 1, 'Legend', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'BUKIDNON', 'CABANGLASAN', NULL, 'Great Sr.', 'King Arthur', 'The', 'Byron', 'Ada', 'Wurtzbach', '', '/upload/valid_id/file_68147d197f40b.png', '2025-05-02 08:06:49', NULL),
(2, 5, 1, 'Legend', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'BUKIDNON', 'CABANGLASAN', NULL, 'Great Sr.', 'King Arthur', 'The', 'Byron', 'Ada', 'Wurtzbach', '', '/upload/valid_id/file_68148337eea56.png', '2025-05-02 08:32:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `mobile_number` varchar(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `user_type` varchar(255) DEFAULT 'Client',
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `mobile_number`, `email`, `address`, `username`, `password`, `user_type`, `status`, `date_created`) VALUES
(1, 'Sandara', 'Petallo', '09852296811', 'medlycassy@gmail.com', 'Camagong, Nasipit ADN', 'sandara', '$2y$10$OdlNdhXb8LvmR4xDHX8bEO0sIPRBNPIfPPdr6LNFFw9I8xoz1jy92', 'Client', 'Active', '2025-04-15 04:00:12'),
(2, 'Ajelda', 'Tudlasan', '09505394888', 'chenleeebdao45@gmail.com', 'Cubi-Cubi, Nasipit, ADN', 'ajelda', '$2y$10$tJeixQoQ3yChz4adN/W2Uuncd0nH.JLRZ.5uN2bEWIK4vqaaVgurq', 'Client', 'Active', '2025-04-15 04:03:32'),
(3, 'Danie ', 'Delfinado', '09505394535', 'djdelfinado@gmail.com', 'Amontay, Nasipit, Agusan del Norte', 'danie', '$2y$10$OqWIVvbFEYhW4XGKDjO.eOW58gaWcB9XMXQ1YjRFv9AdflL12eV.6', 'Client', 'Active', '2025-04-15 06:02:53'),
(4, 'King ', 'Arthur', '09628401084', 'djdelfinado174@gmail.com', 'america', 'kingarthur', '$2y$10$7BHzkj6DzNfg3mIL4Bjr3OZEDPrKxJcGeSXzTGbGAexYHCVNLQUL.', 'Client', 'Active', '2025-05-05 08:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `common`
--

CREATE TABLE `common` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `brn` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pob_province` varchar(100) DEFAULT NULL,
  `pob_city` varchar(100) DEFAULT NULL,
  `pob_country` varchar(100) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `common`
--

INSERT INTO `common` (`id`, `user_id`, `brn`, `sex`, `lname`, `fname`, `mname`, `dob`, `pob_province`, `pob_city`, `pob_country`, `date_created`) VALUES
(1, 3, 'Legend', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'MISAMIS ORIENTAL', 'LUGAIT', NULL, '2025-05-02 08:55:20');

-- --------------------------------------------------------

--
-- Table structure for table `consents`
--

CREATE TABLE `consents` (
  `id` int(11) NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `groom_id` int(11) DEFAULT NULL,
  `bride_id` int(11) DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_address` text DEFAULT NULL,
  `relationship` varchar(30) DEFAULT NULL,
  `child_name` varchar(100) DEFAULT NULL,
  `child_address` varchar(100) DEFAULT NULL,
  `child_age` varchar(20) DEFAULT NULL,
  `to_marry` varchar(255) DEFAULT NULL,
  `to_marry_address` varchar(255) DEFAULT NULL,
  `prepared_by_id` int(11) DEFAULT NULL,
  `prepared_by` varchar(255) DEFAULT NULL,
  `prepared_by_date` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `death`
--

CREATE TABLE `death` (
  `id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `request_for` enum('DEATH CERTIFICATE','AUTHENTICATION','CD/LI') DEFAULT NULL,
  `number_of_copies` int(11) DEFAULT NULL,
  `brn` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female') DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `pob_province` varchar(100) DEFAULT NULL,
  `pob_city` varchar(100) DEFAULT NULL,
  `pob_country` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `specify` varchar(100) DEFAULT NULL,
  `authorization_letter` text DEFAULT NULL,
  `valid_id` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `owner_valid_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `death`
--

INSERT INTO `death` (`id`, `request_id`, `request_for`, `number_of_copies`, `brn`, `sex`, `lname`, `fname`, `mname`, `dob`, `pob_province`, `pob_city`, `pob_country`, `purpose`, `specify`, `authorization_letter`, `valid_id`, `date_created`, `owner_valid_id`) VALUES
(1, 4, 'DEATH CERTIFICATE', 1, 'Legend', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'BUKIDNON', 'CABANGLASAN', NULL, 'Claim Benefits / Loan', '', '', '/upload/valid_id/file_6814832b89bdb.png', '2025-05-02 08:32:43', NULL),
(2, 7, 'DEATH CERTIFICATE', 1, 'Legend', 'Male', 'Legend', 'King Arthur', 'The', '2025-05-02', 'MISAMIS ORIENTAL', 'LUGAIT', NULL, 'Claim Benefits / Loan', '', '', '/upload/valid_id/file_68148878cd15e.png', '2025-05-02 08:55:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `logs_detail` text DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `logs_detail`, `date_created`) VALUES
(1, 3, 'Logged In', '2025-05-02 08:05:32'),
(2, 3, 'Requested Birth Certificate # 1', '2025-05-02 08:05:58'),
(3, 3, 'Requested CENOMAR # 1', '2025-05-02 08:06:49'),
(4, 3, 'Requested Birth Certificate # 2', '2025-05-02 08:27:37'),
(5, 3, 'Requested Death Certificate # 1', '2025-05-02 08:32:43'),
(6, 3, 'Requested CENOMAR # 2', '2025-05-02 08:32:55'),
(7, 1, 'Logged In', '2025-05-02 08:33:23'),
(8, 3, 'Submit Payment for request # 0', '2025-05-02 08:38:36'),
(9, 3, 'Requested Birth Certificate # 3', '2025-05-02 08:39:45'),
(10, 3, 'Requested Death Certificate # 2', '2025-05-02 08:55:20'),
(11, 3, 'Logged In', '2025-05-05 07:54:17'),
(12, 3, 'Changed Password', '2025-05-05 07:54:28'),
(13, 3, 'Logged Out', '2025-05-05 07:54:32'),
(14, 1, 'Logged In', '2025-05-05 07:54:38'),
(15, 4, 'Logged In', '2025-05-05 08:01:06'),
(16, 4, 'Logged In', '2025-05-05 08:28:57'),
(17, 4, 'Requested Marriage Certificate # 1', '2025-05-05 08:29:17'),
(18, 1, 'Logged In', '2025-05-05 08:37:41'),
(19, 1, 'Created Marraige License # 1', '2025-05-05 08:42:43'),
(20, 4, 'Submit Payment for request # 0', '2025-05-05 08:57:59'),
(21, 4, 'Changed Password', '2025-05-05 10:15:21'),
(22, 4, 'Logged Out', '2025-05-05 10:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `marriage`
--

CREATE TABLE `marriage` (
  `id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `request_for` enum('MARRIAGE CERTIFICATE','AUTHENTICATION','CD/LI') DEFAULT NULL,
  `number_of_copies` int(11) DEFAULT NULL,
  `husband_lname` varchar(100) DEFAULT NULL,
  `husband_fname` varchar(100) DEFAULT NULL,
  `husband_mname` varchar(100) DEFAULT NULL,
  `wife_lname` varchar(100) DEFAULT NULL,
  `wife_fname` varchar(100) DEFAULT NULL,
  `wife_mname` varchar(100) DEFAULT NULL,
  `dom` date DEFAULT NULL,
  `pom_province` varchar(100) DEFAULT NULL,
  `pom_city` varchar(100) DEFAULT NULL,
  `pom_country` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) DEFAULT NULL,
  `specify` varchar(100) DEFAULT NULL,
  `authorization_letter` text DEFAULT NULL,
  `valid_id` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `owner_valid_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `marriage`
--

INSERT INTO `marriage` (`id`, `request_id`, `request_for`, `number_of_copies`, `husband_lname`, `husband_fname`, `husband_mname`, `wife_lname`, `wife_fname`, `wife_mname`, `dom`, `pom_province`, `pom_city`, `pom_country`, `purpose`, `specify`, `authorization_letter`, `valid_id`, `date_created`, `owner_valid_id`) VALUES
(1, 8, 'MARRIAGE CERTIFICATE', 1, 'Delfinado', 'Danie', 'Jay', 'Delfinado', 'Danie', 'Jay', '2025-05-05', 'CAVITE', 'ROSARIO', NULL, 'Claim Benefits / Loan', '', '', '', '2025-05-05 08:29:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marriage_bride`
--

CREATE TABLE `marriage_bride` (
  `id` int(11) NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `to_marry` varchar(255) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `pob_city` varchar(100) DEFAULT NULL,
  `pob_province` varchar(100) DEFAULT NULL,
  `pob_country` varchar(100) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `citizenship` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `civil_status` varchar(100) DEFAULT NULL,
  `previously_married` varchar(100) DEFAULT NULL,
  `place_dissolved` varchar(100) DEFAULT NULL,
  `date_dissolved` date DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_citizenship` varchar(255) DEFAULT NULL,
  `father_residence` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_citizenship` varchar(255) DEFAULT NULL,
  `mother_residence` varchar(255) DEFAULT NULL,
  `person_consent` varchar(255) DEFAULT NULL,
  `person_relationship` varchar(255) DEFAULT NULL,
  `person_citizenship` varchar(255) DEFAULT NULL,
  `person_residence` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `registrar_id` int(11) DEFAULT NULL,
  `registrar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `marriage_bride`
--

INSERT INTO `marriage_bride` (`id`, `license_id`, `to_marry`, `lname`, `fname`, `mname`, `bday`, `age`, `pob_city`, `pob_province`, `pob_country`, `sex`, `citizenship`, `residence`, `religion`, `civil_status`, `previously_married`, `place_dissolved`, `date_dissolved`, `degree`, `father_name`, `father_citizenship`, `father_residence`, `mother_name`, `mother_citizenship`, `mother_residence`, `person_consent`, `person_relationship`, `person_citizenship`, `person_residence`, `date_created`, `registrar_id`, `registrar`) VALUES
(1, 1, 'King Arthur', 'Reyna', 'Maharani', 'queen', '1999-05-05', 26, 'MAGDALENA', 'LAGUNA', '', 'Female', 'SDGSSDH', 'balay street', 'CATHOLIC', 'single', 'N/A', 'N/A', '0000-00-00', 'friends with benefits', 'asfasfasdasdf', 'sdgdsgsd', 'gsdgsdgsd', 'sdgsdgsdgsd', 'gsdgsdgsd', 'gsdgdsgs', 'fsfsagsd', 'gfdgdfh', NULL, 'gjfjfgj', '2025-05-05 08:56:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marriage_groom`
--

CREATE TABLE `marriage_groom` (
  `id` int(11) NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `to_marry` varchar(255) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `mname` varchar(100) DEFAULT NULL,
  `bday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `pob_city` varchar(100) DEFAULT NULL,
  `pob_province` varchar(100) DEFAULT NULL,
  `pob_country` varchar(100) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `citizenship` varchar(255) DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `civil_status` varchar(100) DEFAULT NULL,
  `previously_married` varchar(100) DEFAULT NULL,
  `place_dissolved` varchar(100) DEFAULT NULL,
  `date_dissolved` date DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `father_citizenship` varchar(255) DEFAULT NULL,
  `father_residence` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mother_citizenship` varchar(255) DEFAULT NULL,
  `mother_residence` varchar(255) DEFAULT NULL,
  `person_consent` varchar(255) DEFAULT NULL,
  `person_relationship` varchar(255) DEFAULT NULL,
  `person_citizenship` varchar(255) DEFAULT NULL,
  `person_residence` varchar(255) DEFAULT NULL,
  `registrar_id` int(11) DEFAULT NULL,
  `registrar` varchar(255) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `marriage_groom`
--

INSERT INTO `marriage_groom` (`id`, `license_id`, `to_marry`, `lname`, `fname`, `mname`, `bday`, `age`, `pob_city`, `pob_province`, `pob_country`, `sex`, `citizenship`, `residence`, `religion`, `civil_status`, `previously_married`, `place_dissolved`, `date_dissolved`, `degree`, `father_name`, `father_citizenship`, `father_residence`, `mother_name`, `mother_citizenship`, `mother_residence`, `person_consent`, `person_relationship`, `person_citizenship`, `person_residence`, `registrar_id`, `registrar`, `date_created`) VALUES
(1, 1, 'saasfasf', 'Delfinado', 'asfsafasas', 'fasfasf', '1978-02-05', 47, 'BORONGAN (Capital)', 'EASTERN SAMAR', NULL, 'Male', 'dadadada', 'adada', 'dadadadada', 'single', 'N/A', 'N/A', '0000-00-00', 'sdgdsgsd', 'gdsgsgsdg', 'ssdd', 'kohui', 'hguigig', 'iugighjkkj', 'uigibjjknj', 'safsafsfasf', 'asfasfasfa', 'sfsafsaf', 'safsafas', NULL, NULL, '2025-05-05 08:48:43'),
(2, 1, 'saasfasf', 'Delfinado', 'asfsafasas', 'fasfasf', '1978-02-05', 47, 'BORONGAN (Capital)', 'EASTERN SAMAR', '', 'Male', 'dadadada', 'adada', 'dadadadada', 'single', 'N/A', 'N/A', '0000-00-00', 'sdgdsgsd', 'gdsgsgsdg', 'ssdd', 'kohui', 'hguigig', 'iugighjkkj', 'uigibjjknj', 'safsafsfasf', 'asfasfasfa', NULL, 'safsafas', NULL, NULL, '2025-05-05 08:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `marriage_license`
--

CREATE TABLE `marriage_license` (
  `id` int(11) NOT NULL,
  `request_id` int(11) DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `province` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `registry_no` varchar(100) DEFAULT NULL,
  `received_by` varchar(255) DEFAULT NULL,
  `date_receipt` date DEFAULT NULL,
  `license_no` varchar(100) DEFAULT NULL,
  `date_issuance` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `marriage_license`
--

INSERT INTO `marriage_license` (`id`, `request_id`, `client_name`, `user_id`, `province`, `city`, `registry_no`, `received_by`, `date_receipt`, `license_no`, `date_issuance`, `date_created`) VALUES
(1, 9, 'King Arhur', NULL, 'ILOCOS NORTE', 'BACARRA', 'asdfsafasf', 'Chenlee Ebdao', '2025-05-05', NULL, '2025-05-05', '2025-05-05 08:48:43');

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `picture` text DEFAULT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `type`, `account_name`, `account_number`, `picture`, `status`, `date_created`) VALUES
(1, 'Gcash', 'Eden Salas', '09505394585', '/upload/payment_type/file_67e128738e017.png', 'Active', '2025-03-24 09:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `type`, `price`, `date_created`) VALUES
(1, 'LOCAL', 150.00, '2025-04-25 07:59:14'),
(2, 'PSA', 305.00, '2025-04-25 07:59:19');

-- --------------------------------------------------------

--
-- Table structure for table `ref_city`
--

CREATE TABLE `ref_city` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `region_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `province_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city_code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `zip_code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` enum('Active','Inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'Active' COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ref_city`
--

INSERT INTO `ref_city` (`id`, `city`, `region_code`, `province_code`, `city_code`, `zip_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ADAMS', '01', '0128', '012801', '2922', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(2, 'BACARRA', '01', '0128', '012802', '2916', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(3, 'BADOC', '01', '0128', '012803', '2904', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(4, 'BANGUI', '01', '0128', '012804', '2920', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(5, 'BATAC', '01', '0128', '012805', '2906', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(6, 'BURGOS', '01', '0128', '012806', '2918', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(7, 'CARASI', '01', '0128', '012807', '2911', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(8, 'CURRIMAO', '01', '0128', '012808', '2903', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(9, 'DINGRAS', '01', '0128', '012809', '2913', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(10, 'DUMALNEG', '01', '0128', '012810', '2921', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(11, 'BANNA (ESPIRITU)', '01', '0128', '012811', '2908', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(12, 'LAOAG CITY (Capital)', '01', '0128', '012812', '2900', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(13, 'MARCOS', '01', '0128', '012813', '2907', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(14, 'NUEVA ERA', '01', '0128', '012814', '2909', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(15, 'PAGUDPUD', '01', '0128', '012815', '2919', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(16, 'PAOAY', '01', '0128', '012816', '2902', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(17, 'PASUQUIN', '01', '0128', '012817', '2917', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(18, 'PIDDIG', '01', '0128', '012818', '2912', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(19, 'PINILI', '01', '0128', '012819', '2905', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(20, 'SAN NICOLAS', '01', '0128', '012820', '2901', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(21, 'SARRAT', '01', '0128', '012821', '2914', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(22, 'SOLSONA', '01', '0128', '012822', '2910', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(23, 'VINTAR', '01', '0128', '012823', '2915', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(24, 'ALILEM', '01', '0129', '012901', '2716', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(25, 'BANAYOYO', '01', '0129', '012902', '2708', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(26, 'BANTAY', '01', '0129', '012903', '2727', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(27, 'BURGOS', '01', '0129', '012904', '2724', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(28, 'CABUGAO', '01', '0129', '012905', '2732', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(29, 'CITY OF CANDON', '01', '0129', '012906', '2710', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(30, 'CAOAYAN', '01', '0129', '012907', '2702', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(31, 'CERVANTES', '01', '0129', '012908', '2718', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(32, 'GALIMUYOD', '01', '0129', '012909', '2709', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(33, 'GREGORIO DEL PILAR (CONCEPCION)', '01', '0129', '012910', '2720', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(34, 'LIDLIDDA', '01', '0129', '012911', '2723', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(35, 'MAGSINGAL', '01', '0129', '012912', '2730', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(36, 'NAGBUKEL', '01', '0129', '012913', '2725', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(37, 'NARVACAN', '01', '0129', '012914', '2704', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(38, 'QUIRINO (ANGKAKI)', '01', '0129', '012915', '2721', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(39, 'SALCEDO (BAUGEN)', '01', '0129', '012916', '2711', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(40, 'SAN EMILIO', '01', '0129', '012917', '2722', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(41, 'SAN ESTEBAN', '01', '0129', '012918', '2706', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(42, 'SAN ILDEFONSO', '01', '0129', '012919', '2728', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(43, 'SAN JUAN (LAPOG)', '01', '0129', '012920', '2731', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(44, 'SAN VICENTE', '01', '0129', '012921', '2726', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(45, 'SANTA', '01', '0129', '012922', '2703', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(46, 'SANTA CATALINA', '01', '0129', '012923', '2701', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(47, 'SANTA CRUZ', '01', '0129', '012924', '2713', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(48, 'SANTA LUCIA', '01', '0129', '012925', '2712', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(49, 'SANTA MARIA', '01', '0129', '012926', '2705', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(50, 'SANTIAGO', '01', '0129', '012927', '2707', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(51, 'SANTO DOMINGO', '01', '0129', '012928', '2729', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(52, 'SIGAY', '01', '0129', '012929', '2719', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(53, 'SINAIT', '01', '0129', '012930', '2733', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(54, 'SUGPON', '01', '0129', '012931', '2717', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(55, 'SUYO', '01', '0129', '012932', '2715', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(56, 'TAGUDIN', '01', '0129', '012933', '2714', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(57, 'CITY OF VIGAN (Capital)', '01', '0129', '012934', '2700', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(59, 'AGOO', '01', '0133', '013301', '2504', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(60, 'ARINGAY', '01', '0133', '013302', '2503', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(61, 'BACNOTAN', '01', '0133', '013303', '2515', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(62, 'BAGULIN', '01', '0133', '013304', '2512', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(63, 'BALAOAN', '01', '0133', '013305', '2517', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(64, 'BANGAR', '01', '0133', '013306', '2519', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(65, 'BAUANG', '01', '0133', '013307', '2501', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(66, 'BURGOS', '01', '0133', '013308', '2510', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(67, 'CABA', '01', '0133', '013309', '2502', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(68, 'LUNA', '01', '0133', '013310', '2518', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(69, 'NAGUILIAN', '01', '0133', '013311', '2511', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(70, 'PUGO', '01', '0133', '013312', '2508', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(71, 'ROSARIO', '01', '0133', '013313', '2506', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(72, 'CITY OF SAN FERNANDO (Capital)', '01', '0133', '013314', '2500', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(73, 'SAN GABRIEL', '01', '0133', '013315', '2513', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(74, 'SAN JUAN', '01', '0133', '013316', '2514', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(75, 'SANTO TOMAS', '01', '0133', '013317', '2505', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(76, 'SANTOL', '01', '0133', '013318', '2516', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(77, 'SUDIPEN', '01', '0133', '013319', '2520', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(78, 'TUBAO', '01', '0133', '013320', '2509', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(80, 'AGNO', '01', '0155', '015501', '2408', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(81, 'AGUILAR', '01', '0155', '015502', '2415', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(82, 'CITY OF ALAMINOS', '01', '0155', '015503', '2404', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(83, 'ALCALA', '01', '0155', '015504', '2425', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(84, 'ANDA', '01', '0155', '015505', '2405', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(85, 'ASINGAN', '01', '0155', '015506', '2439', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(86, 'BALUNGAO', '01', '0155', '015507', '2442', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(87, 'BANI', '01', '0155', '015508', '2407', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(88, 'BASISTA', '01', '0155', '015509', '2422', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(89, 'BAUTISTA', '01', '0155', '015510', '2424', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(90, 'BAYAMBANG', '01', '0155', '015511', '2423', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(91, 'BINALONAN', '01', '0155', '015512', '2436', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(92, 'BINMALEY', '01', '0155', '015513', '2417', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(93, 'BOLINAO', '01', '0155', '015514', '2406', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(94, 'BUGALLON', '01', '0155', '015515', '2416', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(95, 'BURGOS', '01', '0155', '015516', '2410', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(96, 'CALASIAO', '01', '0155', '015517', '2418', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(97, 'DAGUPAN CITY', '01', '0155', '015518', '2400', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(98, 'DASOL', '01', '0155', '015519', '2411', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(99, 'INFANTA', '01', '0155', '015520', '2412', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(100, 'LABRADOR', '01', '0155', '015521', '2402', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(101, 'LINGAYEN (Capital)', '01', '0155', '015522', '2401', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(102, 'MABINI', '01', '0155', '015523', '2409', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(103, 'MALASIQUI', '01', '0155', '015524', '2421', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(104, 'MANAOAG', '01', '0155', '015525', '2430', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(105, 'MANGALDAN', '01', '0155', '015526', '2432', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(106, 'MANGATAREM', '01', '0155', '015527', '2413', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(107, 'MAPANDAN', '01', '0155', '015528', '2429', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(108, 'NATIVIDAD', '01', '0155', '015529', '2446', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(109, 'POZZORUBIO', '01', '0155', '015530', '2435', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(110, 'ROSALES', '01', '0155', '015531', '2441', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(111, 'SAN CARLOS CITY', '01', '0155', '015532', '2420', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(112, 'SAN FABIAN', '01', '0155', '015533', '2433', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(113, 'SAN JACINTO', '01', '0155', '015534', '2431', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(114, 'SAN MANUEL', '01', '0155', '015535', '2438', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(115, 'SAN NICOLAS', '01', '0155', '015536', '2447', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(116, 'SAN QUINTIN', '01', '0155', '015537', '2444', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(117, 'SANTA BARBARA', '01', '0155', '015538', '2419', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(118, 'SANTA MARIA', '01', '0155', '015539', '2440', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(119, 'SANTO TOMAS', '01', '0155', '015540', '2426', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(120, 'SISON', '01', '0155', '015541', '2434', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(121, 'SUAL', '01', '0155', '015542', '2403', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(122, 'TAYUG', '01', '0155', '015543', '2445', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(123, 'UMINGAN', '01', '0155', '015544', '2443', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(124, 'URBIZTONDO', '01', '0155', '015545', '2414', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(125, 'CITY OF URDANETA', '01', '0155', '015546', '2428', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(126, 'VILLASIS', '01', '0155', '015547', '2427', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(127, 'LAOAC', '01', '0155', '015548', '2437', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(128, 'BASCO (Capital)', '02', '0209', '020901', '3900', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(129, 'ITBAYAT', '02', '0209', '020902', '3905', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(130, 'IVANA', '02', '0209', '020903', '3902', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(131, 'MAHATAO', '02', '0209', '020904', '3901', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(132, 'SABTANG', '02', '0209', '020905', '3904', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(133, 'UYUGAN', '02', '0209', '020906', '3903', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(134, 'ABULUG', '02', '0215', '021501', '3517', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(135, 'ALCALA', '02', '0215', '021502', '3507', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(136, 'ALLACAPAN', '02', '0215', '021503', '3523', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(137, 'AMULUNG', '02', '0215', '021504', '3505', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(138, 'APARRI', '02', '0215', '021505', '3515', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(139, 'BAGGAO', '02', '0215', '021506', '3506', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(140, 'BALLESTEROS', '02', '0215', '021507', '3516', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(141, 'BUGUEY', '02', '0215', '021508', '3511', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(142, 'CALAYAN', '02', '0215', '021509', '3520', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(143, 'CAMALANIUGAN', '02', '0215', '021510', '3510', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(144, 'CLAVERIA', '02', '0215', '021511', '3519', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(145, 'ENRILE', '02', '0215', '021512', '3501', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(146, 'GATTARAN', '02', '0215', '021513', '3508', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(147, 'GONZAGA', '02', '0215', '021514', '3513', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(148, 'IGUIG', '02', '0215', '021515', '3504', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(149, 'LAL-LO', '02', '0215', '021516', '3509', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(150, 'LASAM', '02', '0215', '021517', '3524', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(151, 'PAMPLONA', '02', '0215', '021518', '3522', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(152, 'PEÑABLANCA', '02', '0215', '021519', '3502', 'Active', '2022-06-21 11:51:01', '2022-07-07 03:29:14'),
(153, 'PIAT', '02', '0215', '021520', '3527', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(154, 'RIZAL', '02', '0215', '021521', '3526', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(155, 'SANCHEZ-MIRA', '02', '0215', '021522', '3518', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(156, 'SANTA ANA', '02', '0215', '021523', '3514', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(157, 'SANTA PRAXEDES', '02', '0215', '021524', '3521', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(158, 'SANTA TERESITA', '02', '0215', '021525', '3512', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(159, 'SANTO NIÑO (FAIRE)', '02', '0215', '021526', '3525', 'Active', '2022-06-21 11:51:01', '2022-07-07 03:32:26'),
(160, 'SOLANA', '02', '0215', '021527', '3503', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(161, 'TUAO', '02', '0215', '021528', '3528', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(162, 'TUGUEGARAO CITY(Capital)', '02', '0215', '021529', '3500', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(163, 'ALICIA', '02', '0231', '023101', '3306', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(164, 'ANGADANAN', '02', '0231', '023102', '3307', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(165, 'AURORA', '02', '0231', '023103', '3316', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(166, 'BENITO SOLIVEN', '02', '0231', '023104', '3331', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(167, 'BURGOS', '02', '0231', '023105', '3322', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(168, 'CABAGAN', '02', '0231', '023106', '3328', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(169, 'CABATUAN', '02', '0231', '023107', '3315', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(170, 'CITY OF CAUAYAN', '02', '0231', '023108', '3305', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(171, 'CORDON', '02', '0231', '023109', '3312', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(172, 'DINAPIGUE', '02', '0231', '023110', '3336', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(173, 'DIVILICAN', '02', '0231', '023111', '3335', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(174, 'ECHAGUE', '02', '0231', '023112', '3309', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(175, 'GAMU', '02', '0231', '023113', '3301', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(176, 'ILAGAN (Capital)', '02', '0231', '023114', '3300', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(177, 'JONES', '02', '0231', '023115', '3313', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(178, 'LUNA', '02', '0231', '023116', '3304', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(179, 'MACONACON', '02', '0231', '023117', '3333', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(180, 'DELFIN ALBANO (MAGSAYSAY)', '02', '0231', '023118', '3326', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(181, 'MALLIG', '02', '0231', '023119', '3323', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(182, 'NAGUILIAN', '02', '0231', '023120', '3302', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(183, 'PALANAN', '02', '0231', '023121', '3334', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(184, 'QUEZON', '02', '0231', '023122', '3324', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(185, 'QUIRINO', '02', '0231', '023123', '3321', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(186, 'RAMON', '02', '0231', '023124', '3319', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(187, 'REINA MERCEDES', '02', '0231', '023125', '3303', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(188, 'ROXAS', '02', '0231', '023126', '3320', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(189, 'SAN AGUSTIN', '02', '0231', '023127', '3314', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(190, 'SAN GUILLERMO', '02', '0231', '023128', '3308', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(191, 'SAN ISIDRO', '02', '0231', '023129', '3310', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(192, 'SAN MANUEL', '02', '0231', '023130', '3317', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(193, 'SAN MARIANO', '02', '0231', '023131', '3332', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(194, 'SAN MATEO', '02', '0231', '023132', '3318', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(195, 'SAN PABLO', '02', '0231', '023133', '3329', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(196, 'SANTA MARIA', '02', '0231', '023134', '3330', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(197, 'CITY OF SANTIAGO', '02', '0231', '023135', '3311', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(198, 'SANTO TOMAS', '02', '0231', '023136', '3327', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(199, 'TUMAUINI', '02', '0231', '023137', '3325', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(200, 'AMBAGUIO', '02', '0250', '025001', '3701', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(201, 'ARITAO', '02', '0250', '025002', '3704', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(202, 'BAGABAG', '02', '0250', '025003', '3711', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(203, 'BAMBANG', '02', '0250', '025004', '3702', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(204, 'BAYOMBONG (Capital)', '02', '0250', '025005', '3700', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(205, 'DIADI', '02', '0250', '025006', '3712', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(206, 'DUPAX DEL NORTE', '02', '0250', '025007', '3706', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(207, 'DUPAX DEL SUR', '02', '0250', '025008', '3707', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(208, 'KASIBU', '02', '0250', '025009', '3703', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(209, 'KAYAPA', '02', '0250', '025010', '3708', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(210, 'QUEZON', '02', '0250', '025011', '3713', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(211, 'SANTA FE', '02', '0250', '025012', '3705', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(212, 'SOLANO', '02', '0250', '025013', '3709', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(213, 'VILLAVERDE', '02', '0250', '025014', '3710', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(214, 'ALFONSO CASTAÑEDA', '02', '0250', '025015', '3714', 'Active', '2022-06-21 11:51:01', '2022-07-07 03:37:01'),
(215, 'AGLIPAY', '02', '0257', '025701', '3403', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(216, 'CABARROGUIS (Capital)', '02', '0257', '025702', '3400', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(217, 'DIFFUN', '02', '0257', '025703', '3401', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(218, 'MADDELA', '02', '0257', '025704', '3404', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(219, 'SAGUDAY', '02', '0257', '025705', '3402', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(220, 'NAGTIPUNAN', '02', '0257', '025706', '3405', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(221, 'ABUCAY', '03', '0308', '030801', '2114', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(222, 'BAGAC', '03', '0308', '030802', '2107', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(223, 'CITY OF BALANGA (Capital)', '03', '0308', '030803', '2100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(224, 'DINALUPIHAN', '03', '0308', '030804', '2110', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(225, 'HERMOSA', '03', '0308', '030805', '2111', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(226, 'LIMAY', '03', '0308', '030806', '2103', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(227, 'MARIVELES', '03', '0308', '030807', '2105', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(228, 'MORONG', '03', '0308', '030808', '2108', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(229, 'ORANI', '03', '0308', '030809', '2112', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(230, 'ORION', '03', '0308', '030810', '2102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(231, 'PILAR', '03', '0308', '030811', '2101', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(232, 'SAMAL', '03', '0308', '030812', '2113', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(233, 'ANGAT', '03', '0314', '031401', '3012', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(234, 'BALAGTAS (BIGAA)', '03', '0314', '031402', '3016', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(235, 'BALIUAG', '03', '0314', '031403', '3006', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(236, 'BOCAUE', '03', '0314', '031404', '3018', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(237, 'BULACAN', '03', '0314', '031405', '3017', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(238, 'BUSTOS', '03', '0314', '031406', '3007', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(239, 'CALUMPIT', '03', '0314', '031407', '3003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(240, 'GUIGUINTO', '03', '0314', '031408', '3015', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(241, 'HAGONOY', '03', '0314', '031409', '3002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(242, 'CITY OF MALOLOS (Capital)', '03', '0314', '031410', '3000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(243, 'MARILAO', '03', '0314', '031411', '3019', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(244, 'MEYCAUAYAN', '03', '0314', '031412', '3020', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(245, 'NORZAGARAY', '03', '0314', '031413', '3013', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(246, 'OBANDO', '03', '0314', '031414', '3021', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(247, 'PANDI', '03', '0314', '031415', '3014', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(248, 'PAOMBONG', '03', '0314', '031416', '3001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(249, 'PLARIDEL', '03', '0314', '031417', '3004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(250, 'PULILAN', '03', '0314', '031418', '3005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(251, 'SAN ILDEFONSO', '03', '0314', '031419', '3010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(252, 'CITY OF SAN JOSE DEL MONTE', '03', '0314', '031420', '3023', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(253, 'SAN MIGUEL', '03', '0314', '031421', '3011', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(254, 'SAN RAFAEL', '03', '0314', '031422', '3008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(255, 'SANTA MARIA', '03', '0314', '031423', '3022', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(256, 'DOÑA REMEDIOS TRINIDAD', '03', '0314', '031424', '3009', 'Active', '2022-06-21 11:51:01', '2022-07-07 02:53:25'),
(257, 'ALIAGA', '03', '0349', '034901', '3111', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(258, 'BONGABON', '03', '0349', '034902', '3128', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(259, 'CABANATUAN CITY', '03', '0349', '034903', '3100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(260, 'CABIAO', '03', '0349', '034904', '3107', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(261, 'CARRANGLAN', '03', '0349', '034905', '3123', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(262, 'CUYAPO', '03', '0349', '034906', '3117', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(263, 'GABALDON (BITULOK & SABANI)', '03', '0349', '034907', '3131', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(264, 'CITY OF GAPAN', '03', '0349', '034908', '3105', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(265, 'GENERAL MAMERTO NATIVIDAD', '03', '0349', '034909', '3125', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(266, 'GENERAL TINIO (PAPAYA)', '03', '0349', '034910', '3104', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(267, 'GUIMBA', '03', '0349', '034911', '3115', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(268, 'JAEN', '03', '0349', '034912', '3109', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(269, 'LAUR', '03', '0349', '034913', '3129', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(270, 'LICAB', '03', '0349', '034914', '3112', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(271, 'LLANERA', '03', '0349', '034915', '3126', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(272, 'LUPAO', '03', '0349', '034916', '3122', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(273, 'SCIENCE CITY OF MUÑOZ', '03', '0349', '034917', '3119', 'Active', '2022-06-21 11:51:01', '2022-07-07 03:06:31'),
(274, 'NAMPICUAN', '03', '0349', '034918', '3116', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(275, 'PALAYAN CITY (Capital)', '03', '0349', '034919', '3132', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(276, 'PANTABANGAN', '03', '0349', '034920', '3124', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(277, 'PEÑARANDA', '03', '0349', '034921', '3103', 'Active', '2022-06-21 11:51:01', '2022-07-07 02:58:16'),
(278, 'QUEZON', '03', '0349', '034922', '3113', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(279, 'RIZAL', '03', '0349', '034923', '3127', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(280, 'SAN ANTONIO', '03', '0349', '034924', '3108', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(281, 'SAN ISIDRO', '03', '0349', '034925', '3106', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(282, 'SAN JOSE CITY', '03', '0349', '034926', '3121', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(283, 'SAN LEONARDO', '03', '0349', '034927', '3102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(284, 'SANTA ROSA', '03', '0349', '034928', '3101', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(285, 'SANTO DOMINGO', '03', '0349', '034929', '3133', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(286, 'TALAVERA', '03', '0349', '034930', '3114', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(287, 'TALUGTUG', '03', '0349', '034931', '3118', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(288, 'ZARAGOZA', '03', '0349', '034932', '3110', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(289, 'ANGELES CITY', '03', '0354', '035401', '2009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(290, 'APALIT', '03', '0354', '035402', '2016', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(291, 'ARAYAT', '03', '0354', '035403', '2012', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(292, 'BACOLOR', '03', '0354', '035404', '2001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(293, 'CANDABA', '03', '0354', '035405', '2013', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(294, 'FLORIDABLANCA', '03', '0354', '035406', '2006', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(295, 'GUAGUA', '03', '0354', '035407', '2003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(296, 'LUBAO', '03', '0354', '035408', '2005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(297, 'MABALACAT', '03', '0354', '035409', '2010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(298, 'MACABEBE', '03', '0354', '035410', '2018', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(299, 'MAGALANG', '03', '0354', '035411', '2011', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(300, 'MASANTOL', '03', '0354', '035412', '2017', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(301, 'MEXICO', '03', '0354', '035413', '2021', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(302, 'MINALIN', '03', '0354', '035414', '2019', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(303, 'PORAC', '03', '0354', '035415', '2008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(304, 'CITY OF SAN FERNANDO (Capital)', '03', '0354', '035416', '2000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(305, 'SAN LUIS', '03', '0354', '035417', '2014', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(306, 'SAN SIMON', '03', '0354', '035418', '2015', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(307, 'SANTA ANA', '03', '0354', '035419', '2022', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(308, 'SANTA RITA', '03', '0354', '035420', '2002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(309, 'SANTO TOMAS', '03', '0354', '035421', '2020', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(310, 'SASMUAN (SEXMOAN)', '03', '0354', '035422', '2004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(311, 'ANAO', '03', '0369', '036901', '2310', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(312, 'BAMBAN', '03', '0369', '036902', '2317', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(313, 'CAMILING', '03', '0369', '036903', '2306', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(314, 'CAPAS', '03', '0369', '036904', '2315', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(315, 'CONCEPCION', '03', '0369', '036905', '2316', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(316, 'GERONA', '03', '0369', '036906', '2302', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(317, 'LA PAZ', '03', '0369', '036907', '2314', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(318, 'MAYANTOC', '03', '0369', '036908', '2304', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(319, 'MONCADA', '03', '0369', '036909', '2308', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(320, 'PANIQUI', '03', '0369', '036910', '2307', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(321, 'PURA', '03', '0369', '036911', '2312', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(322, 'RAMOS', '03', '0369', '036912', '2311', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(323, 'SAN CLEMENTE', '03', '0369', '036913', '2305', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(324, 'SAN MANUEL', '03', '0369', '036914', '2309', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(325, 'SANTA IGNACIA', '03', '0369', '036915', '2303', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(326, 'CITY OF TARLAC (Capital)', '03', '0369', '036916', '2300', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(327, 'VICTORIA', '03', '0369', '036917', '2313', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(328, 'SAN JOSE', '03', '0369', '036918', '2318', 'Active', '2022-06-21 11:51:01', '2022-07-07 02:48:31'),
(329, 'BOTOLAN', '03', '0371', '037101', '2202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(330, 'CABANGAN', '03', '0371', '037102', '2203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(331, 'CANDELARIA', '03', '0371', '037103', '2212', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(332, 'CASTILLEJOS', '03', '0371', '037104', '2208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(333, 'IBA (Capital)', '03', '0371', '037105', '2201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(334, 'MASINLOC', '03', '0371', '037106', '2211', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(335, 'OLONGAPO CITY', '03', '0371', '037107', '2200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(336, 'PALAUIG', '03', '0371', '037108', '2210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(337, 'SAN ANTONIO', '03', '0371', '037109', '2206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(338, 'SAN FELIPE', '03', '0371', '037110', '2204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(339, 'SAN MARCELINO', '03', '0371', '037111', '2207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(340, 'SAN NARCISO', '03', '0371', '037112', '2205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(341, 'SANTA CRUZ', '03', '0371', '037113', '2213', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(342, 'SUBIC', '03', '0371', '037114', '2209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(343, 'BALER (Capital)', '03', '0377', '037701', '3200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(344, 'CASIGURAN', '03', '0377', '037702', '3204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(345, 'DILASAG', '03', '0377', '037703', '3205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(346, 'DINALUNGAN', '03', '0377', '037704', '3206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(347, 'DINGALAN', '03', '0377', '037705', '3207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(348, 'DIPACULAO', '03', '0377', '037706', '3203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(349, 'MARIA AURORA', '03', '0377', '037707', '3202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(350, 'SAN LUIS', '03', '0377', '037708', '3201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(351, 'AGONCILLO', '04', '0410', '041001', '4211', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(352, 'ALITAGTAG', '04', '0410', '041002', '4205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(353, 'BALAYAN', '04', '0410', '041003', '4213', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(354, 'BALETE', '04', '0410', '041004', '4219', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(355, 'BATANGAS CITY (Capital)', '04', '0410', '041005', '4200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(356, 'BAUAN', '04', '0410', '041006', '4201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(357, 'CALACA', '04', '0410', '041007', '4212', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(358, 'CALATAGAN', '04', '0410', '041008', '4215', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(359, 'CUENCA', '04', '0410', '041009', '4222', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(360, 'IBAAN', '04', '0410', '041010', '4230', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(361, 'LAUREL', '04', '0410', '041011', '4221', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(362, 'LEMERY', '04', '0410', '041012', '4209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(363, 'LIAN', '04', '0410', '041013', '4216', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(364, 'LIPA CITY', '04', '0410', '041014', '4217', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(365, 'LOBO', '04', '0410', '041015', '4229', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(366, 'MABINI', '04', '0410', '041016', '4202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(367, 'MALVAR', '04', '0410', '041017', '4233', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(368, 'MATAAS NA KAHOY', '04', '0410', '041018', '4223', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(369, 'NASUGBU', '04', '0410', '041019', '4231', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(370, 'PADRE GARCIA', '04', '0410', '041020', '4224', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(371, 'ROSARIO', '04', '0410', '041021', '4225', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(372, 'SAN JOSE', '04', '0410', '041022', '4227', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(373, 'SAN JUAN', '04', '0410', '041023', '4226', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(374, 'SAN LUIS', '04', '0410', '041024', '4210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(375, 'SAN NICOLAS', '04', '0410', '041025', '4207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(376, 'SAN PASCUAL', '04', '0410', '041026', '4204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(377, 'SANTA TERESITA', '04', '0410', '041027', '4206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(378, 'SANTO TOMAS', '04', '0410', '041028', '4234', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(379, 'TAAL', '04', '0410', '041029', '4208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(380, 'TALISAY', '04', '0410', '041030', '4220', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(381, 'CITY OF TANAUAN', '04', '0410', '041031', '4232', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(382, 'TAYSAN', '04', '0410', '041032', '4228', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(383, 'TINGLOY', '04', '0410', '041033', '4203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(384, 'TUY', '04', '0410', '041034', '4214', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(385, 'ALFONSO', '04', '0421', '042101', '4123', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(386, 'AMADEO', '04', '0421', '042102', '4119', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(387, 'BACOOR', '04', '0421', '042103', '4102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(388, 'CARMONA', '04', '0421', '042104', '4116', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(389, 'CAVITE CITY', '04', '0421', '042105', '4100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(390, 'DASMARIÑAS', '04', '0421', '042106', '4114', 'Active', '2022-06-21 11:51:01', '2022-07-07 01:14:33'),
(391, 'GENERAL EMILIO AGUINALDO', '04', '0421', '042107', '4124', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(392, 'GENERAL TRIAS', '04', '0421', '042108', '4107', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(393, 'IMUS', '04', '0421', '042109', '4103', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(394, 'INDANG', '04', '0421', '042110', '4122', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(395, 'KAWIT', '04', '0421', '042111', '4104', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(396, 'MAGALLANES', '04', '0421', '042112', '4113', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(397, 'MARAGONDON', '04', '0421', '042113', '4112', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(398, 'MENDEZ (MENDEZ-NUÑEZ)', '04', '0421', '042114', '4121', 'Active', '2022-06-21 11:51:01', '2022-07-07 01:17:06'),
(399, 'NAIC', '04', '0421', '042115', '4110', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(400, 'NOVELETA', '04', '0421', '042116', '4105', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(401, 'ROSARIO', '04', '0421', '042117', '4106', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(402, 'SILANG', '04', '0421', '042118', '4118', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(403, 'TAGAYTAY CITY', '04', '0421', '042119', '4120', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(404, 'TANZA', '04', '0421', '042120', '4108', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(405, 'TERNATE', '04', '0421', '042121', '4111', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(406, 'TRECE MARTIRES CITY (Capital)', '04', '0421', '042122', '4109', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(407, 'GEN. MARIANO ALVAREZ', '04', '0421', '042123', '4117', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(408, 'ALAMINOS', '04', '0434', '043401', '4001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(409, 'BAY', '04', '0434', '043402', '4033', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(410, 'BIÑAN', '04', '0434', '043403', '4024', 'Active', '2022-06-21 11:51:01', '2022-07-07 01:01:25'),
(411, 'CABUYAO', '04', '0434', '043404', '4025', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(412, 'CITY OF CALAMBA', '04', '0434', '043405', '4027', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(413, 'CALAUAN', '04', '0434', '043406', '4012', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(414, 'CAVINTI', '04', '0434', '043407', '4013', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(415, 'FAMY', '04', '0434', '043408', '4021', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(416, 'KALAYAAN', '04', '0434', '043409', '4015', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(417, 'LILIW', '04', '0434', '043410', '4004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(418, 'LOS BAÑOS', '04', '0434', '043411', '4030', 'Active', '2022-06-21 11:51:01', '2022-07-07 01:06:12'),
(419, 'LUISIANA', '04', '0434', '043412', '4032', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(420, 'LUMBAN', '04', '0434', '043413', '4014', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(421, 'MABITAC', '04', '0434', '043414', '4020', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(422, 'MAGDALENA', '04', '0434', '043415', '4007', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(423, 'MAJAYJAY', '04', '0434', '043416', '4005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(424, 'NAGCARLAN', '04', '0434', '043417', '4002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(425, 'PAETE', '04', '0434', '043418', '4016', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(426, 'PAGSANJAN', '04', '0434', '043419', '4008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(427, 'PAKIL', '04', '0434', '043420', '4017', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(428, 'PANGIL', '04', '0434', '043421', '4018', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(429, 'PILA', '04', '0434', '043422', '4010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(430, 'RIZAL', '04', '0434', '043423', '4003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(431, 'SAN PABLO CITY', '04', '0434', '043424', '4000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(432, 'SAN PEDRO', '04', '0434', '043425', '4023', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(433, 'SANTA CRUZ (Capital)', '04', '0434', '043426', '4009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(434, 'SANTA MARIA', '04', '0434', '043427', '4022', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(435, 'SANTA ROSA', '04', '0434', '043428', '4026', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(436, 'SINILOAN', '04', '0434', '043429', '4019', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(437, 'VICTORIA', '04', '0434', '043430', '4011', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(438, 'BOAC  (Capital)  (61)', '04', '0440', '044001', '4900', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(439, 'BUENAVISTA  (15)', '04', '0440', '044002', '4904', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(440, 'GASAN  (25)', '04', '0440', '044003', '4905', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(441, 'MOGPOG  (37)', '04', '0440', '044004', '4901', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(442, 'SANTA CRUZ  (55)', '04', '0440', '044005', '4902', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(443, 'TORRIJOS  (25)', '04', '0440', '044006', '4903', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(444, 'ABRA DE ILOG  (9)', '04', '0451', '045101', '5108', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(445, 'CALINTAAN  (7)', '04', '0451', '045102', '5102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(446, 'LOOC  (9)', '04', '0451', '045103', '5111', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(447, 'LUBANG  (16)', '04', '0451', '045104', '5109', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(448, 'MAGSAYSAY  (12)', '04', '0451', '045105', '5101', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(449, 'MAMBURAO  (Capital)  (15)', '04', '0451', '045106', '5106', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(450, 'PALUAN  (12)', '04', '0451', '045107', '5107', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(451, 'RIZAL  (11)', '04', '0451', '045108', '5103', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(452, 'SABLAYAN  (22)', '04', '0451', '045109', '5104', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(453, 'SAN JOSE  (38)', '04', '0451', '045110', '5100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(454, 'SANTA CRUZ  (11)', '04', '0451', '045111', '5105', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(455, 'BACO  (27)', '04', '0452', '045201', '5201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(456, 'BANSUD  (13)', '04', '0452', '045202', '5210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(457, 'BONGABON  (36)', '04', '0452', '045203', '5211', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(458, 'BULALACAO  (SAN PEDRO)  (15)', '04', '0452', '045204', '5214', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(459, 'CITY OF CALAPAN  (Capital)  (62)', '04', '0452', '045205', '5200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(460, 'GLORIA  (27)', '04', '0452', '045206', '5209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(461, 'MANSALAY  (17)', '04', '0452', '045207', '5213', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(462, 'NAUJAN  (70)', '04', '0452', '045208', '5204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(463, 'PINAMALAYAN  (37)', '04', '0452', '045209', '5208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(464, 'POLA  (23)', '04', '0452', '045210', '5206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(465, 'PUERTO GALERA  (13)', '04', '0452', '045211', '5203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(466, 'ROXAS  (20)', '04', '0452', '045212', '5212', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(467, 'SAN TEODORO  (8)', '04', '0452', '045213', '5202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(468, 'SOCORRO  (26)', '04', '0452', '045214', '5207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(469, 'VICTORIA  (32)', '04', '0452', '045215', '5205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(470, 'ABORLAN  (19)', '04', '0453', '045301', '5302', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(471, 'AGUTAYA  (10)', '04', '0453', '045302', '5320', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01');
INSERT INTO `ref_city` (`id`, `city`, `region_code`, `province_code`, `city_code`, `zip_code`, `status`, `created_at`, `updated_at`) VALUES
(472, 'ARACELI  (13)', '04', '0453', '045303', '5311', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(473, 'BALABAC  (20)', '04', '0453', '045304', '5307', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(474, 'BATARAZA  (22)', '04', '0453', '045305', '5306', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(475, 'BROOKE\'S POINT  (18)', '04', '0453', '045306', '5305', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(476, 'BUSUANGA  (15)', '04', '0453', '045307', '5317', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(477, 'CAGAYANCILLO  (12)', '04', '0453', '045308', '5321', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(478, 'CORON  (23)', '04', '0453', '045309', '5316', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(479, 'CUYO  (17)', '04', '0453', '045310', '5318', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(480, 'DUMARAN  (16)', '04', '0453', '045311', '5310', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(481, 'EL NIDO (BACUIT)  (18)', '04', '0453', '045312', '5313', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(482, 'LINAPACAN  (10)', '04', '0453', '045313', '5314', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(483, 'MAGSAYSAY  (11)', '04', '0453', '045314', '5319', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(484, 'NARRA  (22)', '04', '0453', '045315', '5303', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(485, 'PUERTO PRINCESA CITY  (Capital)  (66)', '04', '0453', '045316', '5300', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(486, 'QUEZON  (14)', '04', '0453', '045317', '5304', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(487, 'ROXAS  (31)', '04', '0453', '045318', '5308', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(488, 'SAN VICENTE  (10)', '04', '0453', '045319', '5309', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(489, 'TAYTAY  (31)', '04', '0453', '045320', '5312', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(490, 'KALAYAAN  (1)', '04', '0453', '045321', '5322', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(491, 'CULION  (11)', '04', '0453', '045322', '5315', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(492, 'RIZAL (MARCOS)  (11)', '04', '0453', '045323', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(493, 'SOFRONIO ESPAÑOLA (9)', '04', '0453', '045324', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(494, 'AGDANGAN', '04', '0456', '045601', '4304', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(495, 'ALABAT', '04', '0456', '045602', '4333', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(496, 'ATIMONAN', '04', '0456', '045603', '4331', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(497, 'BUENAVISTA', '04', '0456', '045605', '4320', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(498, 'BURDEOS', '04', '0456', '045606', '4340', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(499, 'CALAUAG', '04', '0456', '045607', '4318', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(500, 'CANDELARIA', '04', '0456', '045608', '4323', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(501, 'CATANAUAN', '04', '0456', '045610', '4311', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(502, 'DOLORES', '04', '0456', '045615', '4326', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(503, 'GENERAL LUNA', '04', '0456', '045616', '4310', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(504, 'GENERAL NAKAR', '04', '0456', '045617', '4338', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(505, 'GUINAYANGAN', '04', '0456', '045618', '4319', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(506, 'GUMACA', '04', '0456', '045619', '4307', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(507, 'INFANTA', '04', '0456', '045620', '4336', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(508, 'JOMALIG', '04', '0456', '045621', '4342', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(509, 'LOPEZ', '04', '0456', '045622', '4316', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(510, 'LUCBAN', '04', '0456', '045623', '4328', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(511, 'LUCENA CITY (Capital)', '04', '0456', '045624', '4301', 'Active', '2022-06-21 11:51:01', '2022-07-07 02:00:54'),
(512, 'MACALELON', '04', '0456', '045625', '4309', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(513, 'MAUBAN', '04', '0456', '045627', '4330', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(514, 'MULANAY', '04', '0456', '045628', '4312', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(515, 'PADRE BURGOS', '04', '0456', '045629', '4303', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(516, 'PAGBILAO', '04', '0456', '045630', '4302', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(517, 'PANUKULAN', '04', '0456', '045631', '4337', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(518, 'PATNANUNGAN', '04', '0456', '045632', '4341', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(519, 'PEREZ', '04', '0456', '045633', '4334', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(520, 'PITOGO', '04', '0456', '045634', '4308', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(521, 'PLARIDEL', '04', '0456', '045635', '4306', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(522, 'POLILLO', '04', '0456', '045636', '4339', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(523, 'QUEZON', '04', '0456', '045637', '4332', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(524, 'REAL', '04', '0456', '045638', '4335', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(525, 'SAMPALOC', '04', '0456', '045639', '4329', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(526, 'SAN ANDRES', '04', '0456', '045640', '4314', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(527, 'SAN ANTONIO', '04', '0456', '045641', '4324', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(528, 'SAN FRANCISCO (AURORA)', '04', '0456', '045642', '4315', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(529, 'SAN NARCISO', '04', '0456', '045644', '4313', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(530, 'SARIAYA', '04', '0456', '045645', '4322', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(531, 'TAGKAWAYAN', '04', '0456', '045646', '4321', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(532, 'TAYABAS', '04', '0456', '045647', '4327', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(533, 'TIAONG', '04', '0456', '045648', '4325', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(534, 'UNISAN', '04', '0456', '045649', '4305', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(535, 'ANGONO', '04', '0458', '045801', '1930', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(536, 'CITY OF ANTIPOLO', '04', '0458', '045802', '1900', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(537, 'BARAS', '04', '0458', '045803', '1970', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(538, 'BINANGONAN', '04', '0458', '045804', '1940', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(539, 'CAINTA', '04', '0458', '045805', '1900', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(540, 'CARDONA', '04', '0458', '045806', '1950', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(541, 'JALA-JALA', '04', '0458', '045807', '1990', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(542, 'RODRIGUEZ (MONTALBAN)', '04', '0458', '045808', '1860', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(543, 'MORONG', '04', '0458', '045809', '1960', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(544, 'PILILLA', '04', '0458', '045810', '1910', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(545, 'SAN MATEO', '04', '0458', '045811', '1850', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(546, 'TANAY', '04', '0458', '045812', '1980', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(547, 'TAYTAY', '04', '0458', '045813', '1920', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(548, 'TERESA', '04', '0458', '045814', '1880', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(549, 'ALCANTARA  (12)', '04', '0459', '045901', '5509', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(550, 'BANTON  (17)', '04', '0459', '045902', '5515', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(551, 'CAJIDIOCAN  (14)', '04', '0459', '045903', '5512', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(552, 'CALATRAVA  (7)', '04', '0459', '045904', '5503', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(553, 'CONCEPCION  (9)', '04', '0459', '045905', '5516', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(554, 'CORCUERA  (15)', '04', '0459', '045906', '5514', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(555, 'LOOC  (12)', '04', '0459', '045907', '5507', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(556, 'MAGDIWANG  (9)', '04', '0459', '045908', '5511', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(557, 'ODIONGAN  (25)', '04', '0459', '045909', '5505', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(558, 'ROMBLON  (Capital)  (31)', '04', '0459', '045910', '5500', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(559, 'SAN AGUSTIN  (15)', '04', '0459', '045911', '5501', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(560, 'SAN ANDRES  (13)', '04', '0459', '045912', '5504', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(561, 'SAN FERNANDO  (12)', '04', '0459', '045913', '5513', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(562, 'SAN JOSE  (5)', '04', '0459', '045914', '5510', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(563, 'SANTA FE  (11)', '04', '0459', '045915', '5508', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(564, 'FERROL  (6)', '04', '0459', '045916', '5506', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(565, 'SANTA MARIA (IMELDA)  (6)', '04', '0459', '045917', '5502', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(566, 'BALER  (Capital)  (13)', '04', '0477', '047701', '3200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(567, 'CASIGURAN  (24)', '04', '0477', '047702', '3204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(568, 'DILASAG', '04', '0477', '047703', '3205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(569, 'DINALUNGAN', '04', '0477', '047704', '3206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(570, 'DINGALAN', '04', '0477', '047705', '3207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(571, 'DIPACULAO  (25)', '04', '0477', '047706', '3203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(572, 'MARIA AURORA  (40)', '04', '0477', '047707', '3202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(573, 'SAN LUIS', '04', '0477', '047708', '3201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(574, 'BACACAY', '05', '0505', '050501', '4509', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(575, 'CAMALIG', '05', '0505', '050502', '4502', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(576, 'DARAGA (LOCSIN)', '05', '0505', '050503', '4501', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(577, 'GUINOBATAN', '05', '0505', '050504', '4503', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(578, 'JOVELLAR', '05', '0505', '050505', '4515', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(579, 'LEGAZPI CITY (Capital)', '05', '0505', '050506', '4500', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(580, 'LIBON', '05', '0505', '050507', '4507', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(581, 'CITY OF LIGAO', '05', '0505', '050508', '4504', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(582, 'MALILIPOT', '05', '0505', '050509', '4510', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(583, 'MALINAO', '05', '0505', '050510', '4512', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(584, 'MANITO', '05', '0505', '050511', '4514', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(585, 'OAS', '05', '0505', '050512', '4505', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(586, 'PIO DURAN', '05', '0505', '050513', '4516', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(587, 'POLANGUI', '05', '0505', '050514', '4506', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(588, 'RAPU-RAPU', '05', '0505', '050515', '4517', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(589, 'SANTO DOMINGO (LIBOG)', '05', '0505', '050516', '4508', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(590, 'CITY OF TABACO', '05', '0505', '050517', '4511', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(591, 'TIWI', '05', '0505', '050518', '4513', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(592, 'BASUD', '05', '0516', '051601', '4608', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(593, 'CAPALONGA', '05', '0516', '051602', '4607', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(594, 'DAET (Capital)', '05', '0516', '051603', '4600', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(595, 'SAN LORENZO RUIZ (IMELDA)', '05', '0516', '051604', '4610', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(596, 'JOSE PANGANIBAN', '05', '0516', '051605', '4606', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(597, 'LABO', '05', '0516', '051606', '4604', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(598, 'MERCEDES', '05', '0516', '051607', '4601', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(599, 'PARACALE', '05', '0516', '051608', '4605', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(600, 'SAN VICENTE', '05', '0516', '051609', '4609', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(601, 'SANTA ELENA', '05', '0516', '051610', '4611', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(602, 'TALISAY', '05', '0516', '051611', '4602', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(603, 'VINZONS', '05', '0516', '051612', '4603', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(604, 'BAAO', '05', '0517', '051701', '4432', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(605, 'BALATAN', '05', '0517', '051702', '4436', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(606, 'BATO', '05', '0517', '051703', '4435', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(607, 'BOMBON', '05', '0517', '051704', '4404', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(608, 'BUHI', '05', '0517', '051705', '4433', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(609, 'BULA', '05', '0517', '051706', '4430', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(610, 'CABUSAO', '05', '0517', '051707', '4406', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(611, 'CALABANGA', '05', '0517', '051708', '4405', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(612, 'CAMALIGAN', '05', '0517', '051709', '4401', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(613, 'CANAMAN', '05', '0517', '051710', '4402', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(614, 'CARAMOAN', '05', '0517', '051711', '4429', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(615, 'DEL GALLEGO', '05', '0517', '051712', '4411', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(616, 'GAINZA', '05', '0517', '051713', '4412', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(617, 'GARCHITORENA', '05', '0517', '051714', '4428', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(618, 'GOA', '05', '0517', '051715', '4422', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(619, 'IRIGA CITY', '05', '0517', '051716', '4431', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(620, 'LAGONOY', '05', '0517', '051717', '4425', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(621, 'LIBMANAN', '05', '0517', '051718', '4407', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(622, 'LUPI', '05', '0517', '051719', '4409', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(623, 'MAGARAO', '05', '0517', '051720', '4403', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(624, 'MILAOR', '05', '0517', '051721', '4413', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(625, 'MINALABAC', '05', '0517', '051722', '4414', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(626, 'NABUA', '05', '0517', '051723', '4434', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(627, 'NAGA CITY', '05', '0517', '051724', '4400', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(628, 'OCAMPO', '05', '0517', '051725', '4419', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(629, 'PAMPLONA', '05', '0517', '051726', '4416', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(630, 'PASACAO', '05', '0517', '051727', '4417', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(631, 'PILI (Capital)', '05', '0517', '051728', '4418', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(632, 'PRESENTACION (PARUBCAN)', '05', '0517', '051729', '4424', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(633, 'RAGAY', '05', '0517', '051730', '4410', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(634, 'SAGÑAY', '05', '0517', '051731', '4421', 'Active', '2022-06-21 11:51:01', '2022-07-06 02:06:36'),
(635, 'SAN FERNANDO', '05', '0517', '051732', '4415', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(636, 'SAN JOSE', '05', '0517', '051733', '4423', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(637, 'SIPOCOT', '05', '0517', '051734', '4408', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(638, 'SIRUMA', '05', '0517', '051735', '4427', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(639, 'TIGAON', '05', '0517', '051736', '4420', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(640, 'TINAMBAC', '05', '0517', '051737', '4426', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(641, 'BAGAMANOC', '05', '0520', '052001', '4807', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(642, 'BARAS', '05', '0520', '052002', '4803', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(643, 'BATO', '05', '0520', '052003', '4801', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(644, 'CARAMORAN', '05', '0520', '052004', '4808', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(645, 'GIGMOTO', '05', '0520', '052005', '4804', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(646, 'PANDAN', '05', '0520', '052006', '4809', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(647, 'PANGANIBAN (PAYO)', '05', '0520', '052007', '4806', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(648, 'SAN ANDRES (CALOLBON)', '05', '0520', '052008', '4810', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(649, 'SAN MIGUEL', '05', '0520', '052009', '4802', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(650, 'VIGA', '05', '0520', '052010', '4805', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(651, 'VIRAC (Capital)', '05', '0520', '052011', '4800', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(652, 'AROROY', '05', '0541', '054101', '5414', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(653, 'BALENO', '05', '0541', '054102', '5413', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(654, 'BALUD', '05', '0541', '054103', '5412', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(655, 'BATUAN', '05', '0541', '054104', '5415', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(656, 'CATAINGAN', '05', '0541', '054105', '5405', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(657, 'CAWAYAN', '05', '0541', '054106', '5409', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(658, 'CLAVERIA', '05', '0541', '054107', '5419', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(659, 'DIMASALANG', '05', '0541', '054108', '5403', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(660, 'ESPERANZA', '05', '0541', '054109', '5407', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(661, 'MANDAON', '05', '0541', '054110', '5411', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(662, 'CITY OF MASBATE (Capital)', '05', '0541', '054111', '5400', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(663, 'MILAGROS', '05', '0541', '054112', '5410', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(664, 'MOBO', '05', '0541', '054113', '5401', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(665, 'MONREAL', '05', '0541', '054114', '5418', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(666, 'PALANAS', '05', '0541', '054115', '5404', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(667, 'PIO V. CORPUZ (LIMBUHAN)', '05', '0541', '054116', '5406', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(668, 'PLACER', '05', '0541', '054117', '5408', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(669, 'SAN FERNANDO', '05', '0541', '054118', '5416', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(670, 'SAN JACINTO', '05', '0541', '054119', '5417', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(671, 'SAN PASCUAL', '05', '0541', '054120', '5420', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(672, 'USON', '05', '0541', '054121', '5402', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(673, 'BACON', '05', '0562', '056201', '4701', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(674, 'BARCELONA', '05', '0562', '056202', '4712', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(675, 'BULAN', '05', '0562', '056203', '4706', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(676, 'BULUSAN', '05', '0562', '056204', '4704', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(677, 'CASIGURAN', '05', '0562', '056205', '4702', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(678, 'CASTILLA', '05', '0562', '056206', '4713', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(679, 'DONSOL', '05', '0562', '056207', '4715', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(680, 'GUBAT', '05', '0562', '056208', '4710', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(681, 'IROSIN', '05', '0562', '056209', '4707', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(682, 'JUBAN', '05', '0562', '056210', '4703', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(683, 'MAGALLANES (34 BRGYS)', '05', '0562', '056211', '4705', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(684, 'MATNOG', '05', '0562', '056212', '4708', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(685, 'PILAR', '05', '0562', '056213', '4714', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(686, 'PRIETO DIAZ', '05', '0562', '056214', '4711', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(687, 'SANTA MAGDALENA', '05', '0562', '056215', '4709', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(688, 'CITY OF SORSOGON (Capital)', '05', '0562', '056216', '4700', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(689, 'ALTAVAS', '06', '0604', '060401', '5616', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(690, 'BALETE', '06', '0604', '060402', '5614', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(691, 'BANGA', '06', '0604', '060403', '5601', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(692, 'BATAN', '06', '0604', '060404', '5615', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(693, 'BURUANGA', '06', '0604', '060405', '5609', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(694, 'IBAJAY', '06', '0604', '060406', '5613', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(695, 'KALIBO (Capital)', '06', '0604', '060407', '5600', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(696, 'LEZO', '06', '0604', '060408', '5605', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(697, 'LIBACAO', '06', '0604', '060409', '5602', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(698, 'MADALAG', '06', '0604', '060410', '5603', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(699, 'MAKATO', '06', '0604', '060411', '5611', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(700, 'MALAY', '06', '0604', '060412', '5608', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(701, 'MALINAO', '06', '0604', '060413', '5606', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(702, 'NABAS', '06', '0604', '060414', '5607', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(703, 'NEW WASHINGTON', '06', '0604', '060415', '5610', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(704, 'NUMANCIA', '06', '0604', '060416', '5604', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(705, 'TANGALAN', '06', '0604', '060417', '5612', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(706, 'ANINI-Y', '06', '0606', '060601', '5717', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(707, 'BARBAZA', '06', '0606', '060602', '5706', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(708, 'BELISON', '06', '0606', '060603', '5701', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(709, 'BUGASONG', '06', '0606', '060604', '5704', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(710, 'CALUYA', '06', '0606', '060605', '5711', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(711, 'CULASI', '06', '0606', '060606', '5708', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(712, 'TOBIAS FORNIER (DAO)', '06', '0606', '060607', '5716', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(713, 'HAMTIC', '06', '0606', '060608', '5715', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(714, 'LAUA-AN', '06', '0606', '060609', '5705', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(715, 'LIBERTAD', '06', '0606', '060610', '5710', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(716, 'PANDAN', '06', '0606', '060611', '5712', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(717, 'PATNONGON', '06', '0606', '060612', '5702', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(718, 'SAN JOSE (Capital)', '06', '0606', '060613', '5700', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(719, 'SAN REMIGIO', '06', '0606', '060614', '5714', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(720, 'SEBASTE', '06', '0606', '060615', '5709', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(721, 'SIBALOM', '06', '0606', '060616', '5713', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(722, 'TIBIAO', '06', '0606', '060617', '5707', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(723, 'VALDERRAMA', '06', '0606', '060618', '5703', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(724, 'CUARTERO', '06', '0619', '061901', '5811', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(725, 'DAO', '06', '0619', '061902', '5810', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(726, 'DUMALAG', '06', '0619', '061903', '5813', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(727, 'DUMARAO', '06', '0619', '061904', '5812', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(728, 'IVISAN', '06', '0619', '061905', '5805', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(729, 'JAMINDAN', '06', '0619', '061906', '5808', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(730, 'MA-AYON', '06', '0619', '061907', '5809', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(731, 'MAMBUSAO', '06', '0619', '061908', '5807', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(732, 'PAN-AY', '06', '0619', '061909', '5801', 'Active', '2022-06-21 11:51:01', '2022-07-10 22:46:40'),
(733, 'PANITAN', '06', '0619', '061910', '5815', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(734, 'PILAR', '06', '0619', '061911', '5804', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(735, 'PONTEVEDRA', '06', '0619', '061912', '5802', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(736, 'PRESIDENT ROXAS', '06', '0619', '061913', '5803', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(737, 'ROXAS CITY (Capital)', '06', '0619', '061914', '5800', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(738, 'SAPI-AN', '06', '0619', '061915', '5806', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(739, 'SIGMA', '06', '0619', '061916', '5816', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(740, 'TAPAZ', '06', '0619', '061917', '5814', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(741, 'AJUY', '06', '0630', '063001', '5012', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(742, 'ALIMODIAN', '06', '0630', '063002', '5028', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(743, 'ANILAO', '06', '0630', '063003', '5009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(744, 'BADIANGAN', '06', '0630', '063004', '5033', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(745, 'BALASAN', '06', '0630', '063005', '5018', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(746, 'BANATE', '06', '0630', '063006', '5010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(747, 'BAROTAC NUEVO', '06', '0630', '063007', '5007', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(748, 'BAROTAC VIEJO', '06', '0630', '063008', '5011', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(749, 'BATAD', '06', '0630', '063009', '5016', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(750, 'BINGAWAN', '06', '0630', '063010', '5041', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(751, 'CABATUAN', '06', '0630', '063012', '5031', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(752, 'CALINOG', '06', '0630', '063013', '5040', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(753, 'CARLES', '06', '0630', '063014', '5019', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(754, 'CONCEPCION', '06', '0630', '063015', '5013', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(755, 'DINGLE', '06', '0630', '063016', '5035', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(756, 'DUEÑAS', '06', '0630', '063017', '5038', 'Active', '2022-06-21 11:51:01', '2022-07-10 22:26:08'),
(757, 'DUMANGAS', '06', '0630', '063018', '5006', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(758, 'ESTANCIA', '06', '0630', '063019', '5017', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(759, 'GUIMBAL', '06', '0630', '063020', '5022', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(760, 'IGBARAS', '06', '0630', '063021', '5029', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(761, 'ILOILO CITY (Capital)', '06', '0630', '063022', '5000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(762, 'JANIUAY', '06', '0630', '063023', '5034', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(763, 'LAMBUNAO', '06', '0630', '063025', '5042', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(764, 'LEGANES', '06', '0630', '063026', '5003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(765, 'LEMERY', '06', '0630', '063027', '5043', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(766, 'LEON', '06', '0630', '063028', '5026', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(767, 'MAASIN', '06', '0630', '063029', '5030', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(768, 'MIAGAO', '06', '0630', '063030', '5023', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(769, 'MINA', '06', '0630', '063031', '5032', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(770, 'NEW LUCENA', '06', '0630', '063032', '5005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(771, 'OTON', '06', '0630', '063034', '5020', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(772, 'CITY OF PASSI', '06', '0630', '063035', '5037', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(773, 'PAVIA', '06', '0630', '063036', '5001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(774, 'POTOTAN', '06', '0630', '063037', '5008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(775, 'SAN DIONISIO', '06', '0630', '063038', '5015', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(776, 'SAN ENRIQUE', '06', '0630', '063039', '5036', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(777, 'SAN JOAQUIN', '06', '0630', '063040', '5024', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(778, 'SAN MIGUEL', '06', '0630', '063041', '5025', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(779, 'SAN RAFAEL', '06', '0630', '063042', '5039', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(780, 'SANTA BARBARA', '06', '0630', '063043', '5002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(781, 'SARA', '06', '0630', '063044', '5014', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(782, 'TIGBAUAN', '06', '0630', '063045', '5021', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(783, 'TUBUNGAN', '06', '0630', '063046', '5027', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(784, 'ZARRAGA', '06', '0630', '063047', '5004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(786, 'BACOLOD CITY (Capital)', '06', '0645', '064501', '6100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(787, 'BAGO CITY', '06', '0645', '064502', '6101', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(788, 'BINALBAGAN', '06', '0645', '064503', '6107', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(789, 'CADIZ CITY', '06', '0645', '064504', '6121', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(790, 'CALATRAVA', '06', '0645', '064505', '6126', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(791, 'CANDONI', '06', '0645', '064506', '6110', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(792, 'CAUAYAN', '06', '0645', '064507', '6112', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(793, 'ENRIQUE B. MAGALONA (SARAVIA)', '06', '0645', '064508', '6118', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(794, 'CITY OF ESCALANTE', '06', '0645', '064509', '6124', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(795, 'CITY OF HIMAMAYLAN', '06', '0645', '064510', '6108', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(796, 'HINIGARAN', '06', '0645', '064511', '6106', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(797, 'HINOBA-AN (ASIA)', '06', '0645', '064512', '6114', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(798, 'ILOG', '06', '0645', '064513', '6109', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(799, 'ISABELA', '06', '0645', '064514', '6128', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(800, 'CITY OF KABANKALAN', '06', '0645', '064515', '6111', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(801, 'LA CARLOTA CITY', '06', '0645', '064516', '6130', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(802, 'LA CASTELLANA', '06', '0645', '064517', '6131', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(803, 'MANAPLA', '06', '0645', '064518', '6120', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(804, 'MOISES PADILLA (MAGALLON)', '06', '0645', '064519', '6132', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(805, 'MURCIA', '06', '0645', '064520', '6129', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(806, 'PONTEVEDRA', '06', '0645', '064521', '6105', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(807, 'PULUPANDAN', '06', '0645', '064522', '6102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(808, 'SAGAY CITY', '06', '0645', '064523', '6122', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(809, 'SAN CARLOS CITY', '06', '0645', '064524', '6127', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(810, 'SAN ENRIQUE', '06', '0645', '064525', '6104', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(811, 'SILAY CITY', '06', '0645', '064526', '6116', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(812, 'CITY OF SIPALAY', '06', '0645', '064527', '6113', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(813, 'CITY OF TALISAY', '06', '0645', '064528', '6115', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(814, 'TOBOSO', '06', '0645', '064529', '6125', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(815, 'VALLADOLID', '06', '0645', '064530', '6103', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(816, 'CITY OF VICTORIAS', '06', '0645', '064531', '6119', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(817, 'SALVADOR BENEDICTO', '06', '0645', '064532', '6117', 'Active', '2022-06-21 11:51:01', '2022-07-10 23:03:12'),
(818, 'BUENAVISTA', '06', '0679', '067901', '5044', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(819, 'JORDAN (Capital)', '06', '0679', '067902', '5045', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(820, 'NUEVA VALENCIA', '06', '0679', '067903', '5046', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(821, 'SAN LORENZO', '06', '0679', '067904', '5047', 'Active', '2022-06-21 11:51:01', '2022-07-10 22:36:51'),
(822, 'SIBUNAG', '06', '0679', '067905', '5048', 'Active', '2022-06-21 11:51:01', '2022-07-10 22:38:06'),
(823, 'ALBURQUERQUE', '07', '0712', '071201', '6302', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(824, 'ALICIA', '07', '0712', '071202', '6314', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(825, 'ANDA', '07', '0712', '071203', '6311', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(826, 'ANTEQUERA', '07', '0712', '071204', '6335', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(827, 'BACLAYON', '07', '0712', '071205', '6301', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(828, 'BALILIHAN', '07', '0712', '071206', '6342', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(829, 'BATUAN', '07', '0712', '071207', '6318', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(830, 'BILAR', '07', '0712', '071208', '6317', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(831, 'BUENAVISTA', '07', '0712', '071209', '6333', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(832, 'CALAPE', '07', '0712', '071210', '6328', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(833, 'CANDIJAY', '07', '0712', '071211', '6312', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(834, 'CARMEN', '07', '0712', '071212', '6319', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(835, 'CATIGBIAN', '07', '0712', '071213', '6343', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(836, 'CLARIN', '07', '0712', '071214', '6330', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(837, 'CORELLA', '07', '0712', '071215', '6337', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(838, 'CORTES', '07', '0712', '071216', '6341', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(839, 'DAGOHOY', '07', '0712', '071217', '6322', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(840, 'DANAO', '07', '0712', '071218', '6344', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(841, 'DAUIS', '07', '0712', '071219', '6339', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(842, 'DIMIAO', '07', '0712', '071220', '6305', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(843, 'DUERO', '07', '0712', '071221', '6309', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(844, 'GARCIA HERNANDEZ', '07', '0712', '071222', '6307', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(845, 'GUINDULMAN', '07', '0712', '071223', '6310', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(846, 'INABANGA', '07', '0712', '071224', '6332', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(847, 'JAGNA', '07', '0712', '071225', '6308', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(848, 'JETAFE', '07', '0712', '071226', '6334', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(849, 'LILA', '07', '0712', '071227', '6304', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(850, 'LOAY', '07', '0712', '071228', '6303', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(851, 'LOBOC', '07', '0712', '071229', '6316', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(852, 'LOON', '07', '0712', '071230', '6327', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(853, 'MABINI', '07', '0712', '071231', '6313', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(854, 'MARIBOJOC', '07', '0712', '071232', '6336', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(855, 'PANGLAO', '07', '0712', '071233', '6340', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(856, 'PILAR', '07', '0712', '071234', '6321', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(857, 'PRES. CARLOS P. GARCIA (PITOGO)', '07', '0712', '071235', '6346', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(858, 'SAGBAYAN (BORJA)', '07', '0712', '071236', '6331', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(859, 'SAN ISIDRO', '07', '0712', '071237', '6345', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(860, 'SAN MIGUEL', '07', '0712', '071238', '6323', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(861, 'SEVILLA', '07', '0712', '071239', '6347', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(862, 'SIERRA BULLONES', '07', '0712', '071240', '6320', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(863, 'SIKATUNA', '07', '0712', '071241', '6338', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(864, 'TAGBILARAN CITY (Capital)', '07', '0712', '071242', '6300', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(865, 'TALIBON', '07', '0712', '071243', '6325', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(866, 'TRINIDAD', '07', '0712', '071244', '6324', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(867, 'TUBIGON', '07', '0712', '071245', '6329', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(868, 'UBAY', '07', '0712', '071246', '6315', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(869, 'VALENCIA', '07', '0712', '071247', '6306', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(870, 'BIEN UNIDO', '07', '0712', '071248', '6326', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(871, 'ALCANTARA', '07', '0722', '072201', '6033', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(872, 'ALCOY', '07', '0722', '072202', '6023', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(873, 'ALEGRIA', '07', '0722', '072203', '6030', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(874, 'ALOGUINSAN', '07', '0722', '072204', '6040', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(875, 'ARGAO', '07', '0722', '072205', '6021', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(876, 'ASTURIAS', '07', '0722', '072206', '6042', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(877, 'BADIAN', '07', '0722', '072207', '6031', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(878, 'BALAMBAN', '07', '0722', '072208', '6041', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(879, 'BANTAYAN', '07', '0722', '072209', '6052', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(880, 'BARILI', '07', '0722', '072210', '6036', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(881, 'BOGO', '07', '0722', '072211', '6010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(882, 'BOLJOON', '07', '0722', '072212', '6024', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(883, 'BORBON', '07', '0722', '072213', '6008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(884, 'CARCAR', '07', '0722', '072214', '6019', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(885, 'CARMEN', '07', '0722', '072215', '6005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(886, 'CATMON', '07', '0722', '072216', '6006', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(887, 'CEBU CITY (Capital)', '07', '0722', '072217', '6000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(888, 'COMPOSTELA', '07', '0722', '072218', '6003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(889, 'CONSOLACION', '07', '0722', '072219', '6001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(890, 'CORDOVA', '07', '0722', '072220', '6017', 'Active', '2022-06-21 11:51:01', '2022-07-10 23:07:56'),
(891, 'DAANBANTAYAN', '07', '0722', '072221', '6013', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(892, 'DALAGUETE', '07', '0722', '072222', '6022', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(893, 'DANAO CITY', '07', '0722', '072223', '6004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(894, 'DUMANJUG', '07', '0722', '072224', '6035', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(895, 'GINATILAN', '07', '0722', '072225', '6028', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(896, 'LAPU-LAPU CITY (OPON)', '07', '0722', '072226', '6015', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(897, 'LILOAN', '07', '0722', '072227', '6002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(898, 'MADRIDEJOS', '07', '0722', '072228', '6053', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(899, 'MALABUYOC', '07', '0722', '072229', '6029', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(900, 'MANDAUE CITY', '07', '0722', '072230', '6014', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(901, 'MEDELLIN', '07', '0722', '072231', '6012', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(902, 'MINGLANILLA', '07', '0722', '072232', '6046', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(903, 'MOALBOAL', '07', '0722', '072233', '6032', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(904, 'NAGA', '07', '0722', '072234', '6037', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(905, 'OSLOB', '07', '0722', '072235', '6025', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(906, 'PILAR', '07', '0722', '072236', '6048', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(907, 'PINAMUNGAHAN', '07', '0722', '072237', '6039', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(908, 'PORO', '07', '0722', '072238', '6049', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(909, 'RONDA', '07', '0722', '072239', '6034', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(910, 'SAMBOAN', '07', '0722', '072240', '6027', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(911, 'SAN FERNANDO', '07', '0722', '072241', '6018', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(912, 'SAN FRANCISCO', '07', '0722', '072242', '6050', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(913, 'SAN REMIGIO', '07', '0722', '072243', '6011', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(914, 'SANTA FE', '07', '0722', '072244', '6047', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(915, 'SANTANDER', '07', '0722', '072245', '6026', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(916, 'SIBONGA', '07', '0722', '072246', '6020', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(917, 'SOGOD', '07', '0722', '072247', '6007', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(918, 'TABOGON', '07', '0722', '072248', '6009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(919, 'TABUELAN', '07', '0722', '072249', '6044', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(920, 'CITY OF TALISAY', '07', '0722', '072250', '6045', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(921, 'TOLEDO CITY', '07', '0722', '072251', '6038', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(922, 'TUBURAN', '07', '0722', '072252', '6043', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(923, 'TUDELA', '07', '0722', '072253', '6051', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(924, 'AMLAN (AYUQUITAN)', '07', '0746', '074601', '6203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(925, 'AYUNGON', '07', '0746', '074602', '6210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(926, 'BACONG', '07', '0746', '074603', '6216', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(927, 'BAIS CITY', '07', '0746', '074604', '6206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(928, 'BASAY', '07', '0746', '074605', '6222', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(929, 'CITY OF BAYAWAN (TULONG)', '07', '0746', '074606', '6221', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(930, 'BINDOY (PAYABON)', '07', '0746', '074607', '6209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(931, 'CANLAON CITY', '07', '0746', '074608', '6223', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(932, 'DAUIN', '07', '0746', '074609', '6217', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(933, 'DUMAGUETE CITY (Capital)', '07', '0746', '074610', '6200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(934, 'GUIHULNGAN', '07', '0746', '074611', '6214', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(935, 'JIMALALUD', '07', '0746', '074612', '6212', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(936, 'LA LIBERTAD', '07', '0746', '074613', '6213', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(937, 'MABINAY', '07', '0746', '074614', '6207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(938, 'MANJUYOD', '07', '0746', '074615', '6208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(939, 'PAMPLONA', '07', '0746', '074616', '6205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01');
INSERT INTO `ref_city` (`id`, `city`, `region_code`, `province_code`, `city_code`, `zip_code`, `status`, `created_at`, `updated_at`) VALUES
(940, 'SAN JOSE', '07', '0746', '074617', '6202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(941, 'SANTA CATALINA', '07', '0746', '074618', '6220', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(942, 'SIATON', '07', '0746', '074619', '6219', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(943, 'SIBULAN', '07', '0746', '074620', '6201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(944, 'CITY OF TANJAY', '07', '0746', '074621', '6204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(945, 'TAYASAN', '07', '0746', '074622', '6211', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(946, 'VALENCIA (LUZURRIAGA)', '07', '0746', '074623', '6215', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(947, 'VALLEHERMOSO', '07', '0746', '074624', '6224', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(948, 'ZAMBOANGUITA', '07', '0746', '074625', '6218', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(949, 'ENRIQUE VILLANUEVA', '07', '0761', '076101', '6230', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(950, 'LARENA', '07', '0761', '076102', '6226', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(951, 'LAZI', '07', '0761', '076103', '6228', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(952, 'MARIA', '07', '0761', '076104', '6229', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(953, 'SAN JUAN', '07', '0761', '076105', '6227', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(954, 'SIQUIJOR (Capital)', '07', '0761', '076106', '6225', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(955, 'ARTECHE', '08', '0826', '082601', '6822', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(956, 'BALANGIGA', '08', '0826', '082602', '6812', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(957, 'BALANGKAYAN', '08', '0826', '082603', '6801', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(958, 'BORONGAN (Capital)', '08', '0826', '082604', '6800', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(959, 'CAN-AVID', '08', '0826', '082605', '6806', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(960, 'DOLORES', '08', '0826', '082606', '6817', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(961, 'GENERAL MACARTHUR', '08', '0826', '082607', '6805', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(962, 'GIPORLOS', '08', '0826', '082608', '6811', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(963, 'GUIUAN', '08', '0826', '082609', '6809', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(964, 'HERNANI', '08', '0826', '082610', '6804', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(965, 'JIPAPAD', '08', '0826', '082611', '6819', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(966, 'LAWAAN', '08', '0826', '082612', '6813', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(967, 'LLORENTE', '08', '0826', '082613', '6803', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(968, 'MASLOG', '08', '0826', '082614', '6820', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(969, 'MAYDOLONG', '08', '0826', '082615', '6802', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(970, 'MERCEDES', '08', '0826', '082616', '6808', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(971, 'ORAS', '08', '0826', '082617', '6818', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(972, 'QUINAPONDAN', '08', '0826', '082618', '6810', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(973, 'SALCEDO', '08', '0826', '082619', '6807', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(974, 'SAN JULIAN', '08', '0826', '082620', '6814', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(975, 'SAN POLICARPO', '08', '0826', '082621', '6821', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(976, 'SULAT', '08', '0826', '082622', '6815', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(977, 'TAFT', '08', '0826', '082623', '6816', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(978, 'ABUYOG', '08', '0837', '083701', '6510', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(979, 'ALANGALANG', '08', '0837', '083702', '6517', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(980, 'ALBUERA', '08', '0837', '083703', '6542', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(981, 'BABATNGON', '08', '0837', '083705', '6520', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(982, 'BARUGO', '08', '0837', '083706', '6519', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(983, 'BATO', '08', '0837', '083707', '6525', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(984, 'BAYBAY', '08', '0837', '083708', '6521', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(985, 'BURAUEN', '08', '0837', '083710', '6516', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(986, 'CALUBIAN', '08', '0837', '083713', '6534', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(987, 'CAPOOCAN', '08', '0837', '083714', '6530', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(988, 'CARIGARA', '08', '0837', '083715', '6529', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(989, 'DAGAMI', '08', '0837', '083717', '6515', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(990, 'DULAG', '08', '0837', '083718', '6505', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(991, 'HILONGOS', '08', '0837', '083719', '6524', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(992, 'HINDANG', '08', '0837', '083720', '6523', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(993, 'INOPACAN', '08', '0837', '083721', '6522', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(994, 'ISABEL', '08', '0837', '083722', '6539', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(995, 'JARO', '08', '0837', '083723', '6527', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(996, 'JAVIER (BUGHO)', '08', '0837', '083724', '6511', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(997, 'JULITA', '08', '0837', '083725', '6506', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(998, 'KANANGA', '08', '0837', '083726', '6531', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(999, 'LA PAZ', '08', '0837', '083728', '6508', 'Active', '2022-06-21 11:51:01', '2022-07-11 00:45:28'),
(1000, 'LEYTE', '08', '0837', '083729', '6533', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1001, 'MACARTHUR', '08', '0837', '083730', '6509', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1002, 'MAHAPLAG', '08', '0837', '083731', '6512', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1003, 'MATAG-OB', '08', '0837', '083733', '6532', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1004, 'MATALOM', '08', '0837', '083734', '6526', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1005, 'MAYORGA', '08', '0837', '083735', '6507', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1006, 'MERIDA', '08', '0837', '083736', '6540', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1007, 'ORMOC CITY', '08', '0837', '083738', '6541', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1008, 'PALO', '08', '0837', '083739', '6501', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1009, 'PALOMPON', '08', '0837', '083740', '6538', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1010, 'PASTRANA', '08', '0837', '083741', '6514', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1011, 'SAN ISIDRO', '08', '0837', '083742', '6535', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1012, 'SAN MIGUEL', '08', '0837', '083743', '6518', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1013, 'SANTA FE', '08', '0837', '083744', '6513', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1014, 'TABANGO', '08', '0837', '083745', '6536', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1015, 'TABONTABON', '08', '0837', '083746', '6504', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1016, 'TACLOBAN CITY (Capital)', '08', '0837', '083747', '6500', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1017, 'TANAUAN', '08', '0837', '083748', '6502', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1018, 'TOLOSA', '08', '0837', '083749', '6503', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1019, 'TUNGA', '08', '0837', '083750', '6528', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1020, 'VILLABA', '08', '0837', '083751', '6537', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1021, 'ALLEN', '08', '0848', '084801', '6405', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1022, 'BIRI', '08', '0848', '084802', '6410', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1023, 'BOBON', '08', '0848', '084803', '6401', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1024, 'CAPUL', '08', '0848', '084804', '6408', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1025, 'CATARMAN (Capital)', '08', '0848', '084805', '6400', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1026, 'CATUBIG', '08', '0848', '084806', '6418', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1027, 'GAMAY', '08', '0848', '084807', '6422', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1028, 'LAOANG', '08', '0848', '084808', '6411', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1029, 'LAPINIG', '08', '0848', '084809', '6423', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1030, 'LAS NAVAS', '08', '0848', '084810', '6420', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1031, 'LAVEZARES', '08', '0848', '084811', '6404', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1032, 'MAPANAS', '08', '0848', '084812', '6412', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1033, 'MONDRAGON', '08', '0848', '084813', '6417', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1034, 'PALAPAG', '08', '0848', '084814', '6421', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1035, 'PAMBUJAN', '08', '0848', '084815', '6413', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1036, 'ROSARIO', '08', '0848', '084816', '6416', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1037, 'SAN ANTONIO', '08', '0848', '084817', '6407', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1038, 'SAN ISIDRO', '08', '0848', '084818', '6409', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1039, 'SAN JOSE', '08', '0848', '084819', '6402', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1040, 'SAN ROQUE', '08', '0848', '084820', '6415', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1041, 'SAN VICENTE', '08', '0848', '084821', '6419', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1042, 'SILVINO LOBOS', '08', '0848', '084822', '6414', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1043, 'VICTORIA', '08', '0848', '084823', '6406', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1044, 'LOPE DE VEGA', '08', '0848', '084824', '6403', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1045, 'ALMAGRO', '08', '0860', '086001', '6724', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1046, 'BASEY', '08', '0860', '086002', '6720', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1047, 'CALBAYOG CITY', '08', '0860', '086003', '6710', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1048, 'CALBIGA', '08', '0860', '086004', '6715', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1049, 'CATBALOGAN (Capital)', '08', '0860', '086005', '6700', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1050, 'DARAM', '08', '0860', '086006', '6722', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1051, 'GANDARA', '08', '0860', '086007', '6706', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1052, 'HINABANGAN', '08', '0860', '086008', '6713', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1053, 'JIABONG', '08', '0860', '086009', '6701', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1054, 'MARABUT', '08', '0860', '086010', '6721', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1055, 'MATUGUINAO', '08', '0860', '086011', '6708', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1056, 'MOTIONG', '08', '0860', '086012', '6702', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1057, 'PINABACDAO', '08', '0860', '086013', '6716', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1058, 'SAN JOSE DE BUAN', '08', '0860', '086014', '6723', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1059, 'SAN SEBASTIAN', '08', '0860', '086015', '6714', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1060, 'SANTA MARGARITA', '08', '0860', '086016', '6709', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1061, 'SANTA RITA', '08', '0860', '086017', '6718', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1062, 'SANTO NIÑO', '08', '0860', '086018', '6711', 'Active', '2022-06-21 11:51:01', '2022-07-11 01:08:07'),
(1063, 'TALALORA', '08', '0860', '086019', '6719', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1064, 'TARANGNAN', '08', '0860', '086020', '6704', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1065, 'VILLAREAL', '08', '0860', '086021', '6717', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1066, 'PARANAS (WRIGHT)', '08', '0860', '086022', '6703', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1067, 'ZUMARRAGA', '08', '0860', '086023', '6725', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1068, 'TAGAPUL-AN', '08', '0860', '086024', '6712', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1069, 'SAN JORGE', '08', '0860', '086025', '6707', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1070, 'PAGSANGHAN', '08', '0860', '086026', '6705', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1071, 'ANAHAWAN', '08', '0864', '086401', '6610', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1072, 'BONTOC', '08', '0864', '086402', '6604', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1073, 'HINUNANGAN', '08', '0864', '086403', '6608', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1074, 'HINUNDAYAN', '08', '0864', '086404', '6609', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1075, 'LIBAGON', '08', '0864', '086405', '6615', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1076, 'LILOAN', '08', '0864', '086406', '6612', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1077, 'CITY OF MAASIN (Capital)', '08', '0864', '086407', '6600', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1078, 'MACROHON', '08', '0864', '086408', '6601', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1079, 'MALITBOG', '08', '0864', '086409', '6603', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1080, 'PADRE BURGOS', '08', '0864', '086410', '6602', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1081, 'PINTUYAN', '08', '0864', '086411', '6614', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1082, 'SAINT BERNARD', '08', '0864', '086412', '6616', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1083, 'SAN FRANCISCO', '08', '0864', '086413', '6613', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1084, 'SAN JUAN (CABALIAN)', '08', '0864', '086414', '6611', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1085, 'SAN RICARDO', '08', '0864', '086415', '6617', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1086, 'SILAGO', '08', '0864', '086416', '6607', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1087, 'SOGOD', '08', '0864', '086417', '6606', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1088, 'TOMAS OPPUS', '08', '0864', '086418', '6605', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1089, 'LIMASAWA', '08', '0864', '086419', '6618', 'Active', '2022-06-21 11:51:01', '2022-07-11 01:01:37'),
(1090, 'ALMERIA', '08', '0878', '087801', '6544', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1091, 'BILIRAN', '08', '0878', '087802', '6549', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1092, 'CABUCGAYAN', '08', '0878', '087803', '6550', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1093, 'CAIBIRAN', '08', '0878', '087804', '6548', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1094, 'CULABA', '08', '0878', '087805', '6547', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1095, 'KAWAYAN', '08', '0878', '087806', '6545', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1096, 'MARIPIPI', '08', '0878', '087807', '6546', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1097, 'NAVAL (Capital)', '08', '0878', '087808', '6543', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1098, 'ISABELA  (Capital)  (45)', '09', '0907', '090701', '7300', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1099, 'LAMITAN  (45)', '09', '0907', '090702', '7302', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1100, 'LANTAWAN  (35)', '09', '0907', '090703', '7301', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1101, 'MALUSO  (20)', '09', '0907', '090704', '7303', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1102, 'SUMISIP  (41)', '09', '0907', '090705', '7305', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1103, 'TIPO-TIPO  (39)', '09', '0907', '090706', '7304', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1104, 'TUBURAN  (30)', '09', '0907', '090707', '7306', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1105, 'DAPITAN CITY', '09', '0972', '097201', '7101', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1106, 'DIPOLOG CITY (Capital)', '09', '0972', '097202', '7100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1107, 'KATIPUNAN', '09', '0972', '097203', '7109', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1108, 'LA LIBERTAD', '09', '0972', '097204', '7119', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1109, 'LABASON', '09', '0972', '097205', '7117', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1110, 'LILOY', '09', '0972', '097206', '7115', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1111, 'MANUKAN', '09', '0972', '097207', '7110', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1112, 'MUTIA', '09', '0972', '097208', '7107', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1113, 'PIÑAN (NEW PIÑAN)', '09', '0972', '097209', '7105', 'Active', '2022-06-21 11:51:01', '2022-07-11 02:00:15'),
(1114, 'POLANCO', '09', '0972', '097210', '7106', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1115, 'PRES. MANUEL A. ROXAS', '09', '0972', '097211', '7102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1116, 'RIZAL', '09', '0972', '097212', '7104', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1117, 'SALUG', '09', '0972', '097213', '7114', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1118, 'SERGIO OSMEÑA SR.', '09', '0972', '097214', '7108', 'Active', '2022-06-21 11:51:01', '2022-07-11 02:01:13'),
(1119, 'SIAYAN', '09', '0972', '097215', '7113', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1120, 'SIBUCO', '09', '0972', '097216', '7122', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1121, 'SIBUTAD', '09', '0972', '097217', '7103', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1122, 'SINDANGAN', '09', '0972', '097218', '7112', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1123, 'SIOCON', '09', '0972', '097219', '7120', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1124, 'SIRAWAI', '09', '0972', '097220', '7121', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1125, 'TAMPILISAN', '09', '0972', '097221', '7116', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1126, 'JOSE DALMAN (PONOT)', '09', '0972', '097222', '7111', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1127, 'GUTALAC', '09', '0972', '097223', '7118', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1128, 'BALIGUIAN', '09', '0972', '097224', '7123', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1129, 'GODOD', '09', '0972', '097225', '7126', 'Active', '2022-06-21 11:51:01', '2022-07-11 02:03:46'),
(1130, 'BACUNGAN (LEON T. POSTIGO)', '09', '0972', '097226', '7125', 'Active', '2022-06-21 11:51:01', '2022-07-11 02:04:12'),
(1131, 'KALAWIT', '09', '0972', '097227', '7124', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1133, 'AURORA', '09', '0973', '097302', '7020', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1134, 'BAYOG', '09', '0973', '097303', '7011', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1135, 'BUUG  (27)', '09', '0973', '097304', '7009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1136, 'DIMATALING', '09', '0973', '097305', '7032', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1137, 'DINAS', '09', '0973', '097306', '7030', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1138, 'DUMALINAO', '09', '0973', '097307', '7015', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1139, 'DUMINGAG', '09', '0973', '097308', '7028', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1142, 'KUMALARANG', '09', '0973', '097311', '7013', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1143, 'LABANGAN', '09', '0973', '097312', '7017', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1144, 'LAPUYAN', '09', '0973', '097313', '7037', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1146, 'MAHAYAG', '09', '0973', '097315', '7026', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1148, 'MARGOSATUBIG', '09', '0973', '097317', '7035', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1149, 'MIDSALIP', '09', '0973', '097318', '7021', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1150, 'MOLAVE', '09', '0973', '097319', '7023', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1153, 'PAGADIAN CITY (Capital)', '09', '0973', '097322', '7016', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1154, 'RAMON MAGSAYSAY (LIARGO)', '09', '0973', '097323', '7024', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1155, 'SAN MIGUEL', '09', '0973', '097324', '7029', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1156, 'SAN PABLO', '09', '0973', '097325', '7031', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1158, 'TABINA', '09', '0973', '097327', '7034', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1159, 'TAMBULIG', '09', '0973', '097328', '7025', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1161, 'TUKURAN', '09', '0973', '097330', '7019', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1163, 'ZAMBOANGA CITY', '09', '0973', '097332', '7000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1164, 'LAKEWOOD', '09', '0973', '097333', '7014', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1168, 'JOSEFINA', '09', '0973', '097337', '7027', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1169, 'PITOGO', '09', '0973', '097338', '7033', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1171, 'SOMINOT (DON MARIANO MARCOS)', '09', '0973', '097340', '7022', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1172, 'VINCENZO A. SAGUN', '09', '0973', '097341', '7036', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1174, 'GUIPOS', '09', '0973', '097343', '7042', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1175, 'TIGBAO', '09', '0973', '097344', '7043', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1176, 'ALICIA', '09', '0983', '098301', '7040', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1177, 'BUUG', '09', '0983', '098302', '7009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1178, 'DIPLAHAN', '09', '0983', '098303', '7039', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1179, 'IMELDA', '09', '0983', '098304', '7007', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1180, 'IPIL', '09', '0983', '098305', '7001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1181, 'KABASALAN', '09', '0983', '098306', '7005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1182, 'MABUHAY', '09', '0983', '098307', '7010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1183, 'MALANGAS', '09', '0983', '098308', '7038', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1184, 'NAGA', '09', '0983', '098309', '7004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1185, 'OLUTANGA', '09', '0983', '098310', '7041', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1186, 'PAYAO', '09', '0983', '098311', '7008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1187, 'ROSELLER LIM', '09', '0983', '098312', '7002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1188, 'SIAY', '09', '0983', '098313', '7006', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1189, 'TALUSAN', '09', '0983', '098314', '7012', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1190, 'TITAY', '09', '0983', '098315', '7003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1191, 'TUNGAWAN', '09', '0983', '098316', '7018', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1192, 'CITY OF ISABELA (Capital)', '09', '0997', '099701', '7300', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1193, 'BAUNGON', '10', '1013', '101301', '8707', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1194, 'DAMULOG', '10', '1013', '101302', '8721', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1195, 'DANGCAGAN', '10', '1013', '101303', '8719', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1196, 'DON CARLOS', '10', '1013', '101304', '8712', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1197, 'IMPASUG-ONG', '10', '1013', '101305', '8702', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1198, 'KADINGILAN', '10', '1013', '101306', '8713', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1199, 'KALILANGAN', '10', '1013', '101307', '8718', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1200, 'KIBAWE', '10', '1013', '101308', '8720', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1201, 'KITAOTAO', '10', '1013', '101309', '8716', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1202, 'LANTAPAN', '10', '1013', '101310', '8722', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1203, 'LIBONA', '10', '1013', '101311', '8706', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1204, 'CITY MALAYBALAY (Capital)', '10', '1013', '101312', '8700', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1205, 'MALITBOG', '10', '1013', '101313', '8704', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1206, 'MANOLO FORTICH', '10', '1013', '101314', '8703', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1207, 'MARAMAG', '10', '1013', '101315', '8714', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1208, 'PANGANTUCAN', '10', '1013', '101316', '8717', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1209, 'QUEZON', '10', '1013', '101317', '8715', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1210, 'SAN FERNANDO', '10', '1013', '101318', '8711', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1211, 'SUMILAO', '10', '1013', '101319', '8701', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1212, 'TALAKAG', '10', '1013', '101320', '8708', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1213, 'CITY OF VALENCIA', '10', '1013', '101321', '8709', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1214, 'CABANGLASAN', '10', '1013', '101322', '8723', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1215, 'CATARMAN', '10', '1018', '101801', '9104', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1216, 'GUINSILIBAN', '10', '1018', '101802', '9102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1217, 'MAHINOG', '10', '1018', '101803', '9101', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1218, 'MAMBAJAO (Capital)', '10', '1018', '101804', '9100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1219, 'SAGAY', '10', '1018', '101805', '9103', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1220, 'BACOLOD', '10', '1035', '103501', '9205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1221, 'BALOI', '10', '1035', '103502', '9217', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1222, 'BAROY', '10', '1035', '103503', '9210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1223, 'ILIGAN CITY', '10', '1035', '103504', '9200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1224, 'KAPATAGAN', '10', '1035', '103505', '9214', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1225, 'SULTAN NAGA DIMAPORO (KAROMATAN)', '10', '1035', '103506', '9215', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1226, 'KAUSWAGAN', '10', '1035', '103507', '9202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1227, 'KOLAMBUGAN', '10', '1035', '103508', '9207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1228, 'LALA', '10', '1035', '103509', '9211', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1229, 'LINAMON', '10', '1035', '103510', '9201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1230, 'MAGSAYSAY', '10', '1035', '103511', '9221', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1231, 'MAIGO', '10', '1035', '103512', '9206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1232, 'MATUNGAO', '10', '1035', '103513', '9203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1233, 'MUNAI', '10', '1035', '103514', '9219', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1234, 'NUNUNGAN', '10', '1035', '103515', '9216', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1235, 'PANTAO RAGAT', '10', '1035', '103516', '9208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1236, 'POONA PIAGAPO', '10', '1035', '103517', '9204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1237, 'SALVADOR', '10', '1035', '103518', '9212', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1238, 'SAPAD', '10', '1035', '103519', '9213', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1239, 'TAGOLOAN', '10', '1035', '103520', '9222', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1240, 'TANGCAL', '10', '1035', '103521', '9220', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1241, 'TUBOD (Capital)', '10', '1035', '103522', '9209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1242, 'PANTAR', '10', '1035', '103523', '9218', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1243, 'ALORAN', '10', '1042', '104201', '7206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1244, 'BALIANGAO', '10', '1042', '104202', '7211', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1245, 'BONIFACIO', '10', '1042', '104203', '7215', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1246, 'CALAMBA', '10', '1042', '104204', '7210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1247, 'CLARIN', '10', '1042', '104205', '7201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1248, 'CONCEPCION', '10', '1042', '104206', '7213', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1249, 'JIMENEZ', '10', '1042', '104207', '7204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1250, 'LOPEZ JAENA', '10', '1042', '104208', '7208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1251, 'OROQUIETA CITY (Capital)', '10', '1042', '104209', '7207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1252, 'OZAMIS CITY', '10', '1042', '104210', '7200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1253, 'PANAON', '10', '1042', '104211', '7205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1254, 'PLARIDEL', '10', '1042', '104212', '7209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1255, 'SAPANG DALAGA', '10', '1042', '104213', '7212', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1256, 'SINACABAN', '10', '1042', '104214', '7203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1257, 'TANGUB CITY', '10', '1042', '104215', '7214', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1258, 'TUDELA', '10', '1042', '104216', '7202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1259, 'DON VICTORIANO CHIONGBIAN', '10', '1042', '104217', '7200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1260, 'ALUBIJID', '10', '1043', '104301', '9018', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1261, 'BALINGASAG', '10', '1043', '104302', '9005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1262, 'BALINGOAN', '10', '1043', '104303', '9011', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1263, 'BINUANGAN', '10', '1043', '104304', '9008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1264, 'CAGAYAN DE ORO CITY (Capital)', '10', '1043', '104305', '9000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1265, 'CLAVERIA', '10', '1043', '104306', '9004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1266, 'EL SALVADOR', '10', '1043', '104307', '9017', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1267, 'GINGOOG CITY', '10', '1043', '104308', '9014', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1268, 'GITAGUM', '10', '1043', '104309', '9020', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1269, 'INITAO', '10', '1043', '104310', '9022', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1270, 'JASAAN', '10', '1043', '104311', '9003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1271, 'KINOGUITAN', '10', '1043', '104312', '9010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1272, 'LAGONGLONG', '10', '1043', '104313', '9006', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1273, 'LAGUINDINGAN', '10', '1043', '104314', '9019', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1274, 'LIBERTAD', '10', '1043', '104315', '9021', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1275, 'LUGAIT', '10', '1043', '104316', '9025', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1276, 'MAGSAYSAY (LINUGOS)', '10', '1043', '104317', '9015', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1277, 'MANTICAO', '10', '1043', '104318', '9024', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1278, 'MEDINA', '10', '1043', '104319', '9013', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1279, 'NAAWAN', '10', '1043', '104320', '9023', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1280, 'OPOL', '10', '1043', '104321', '9016', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1281, 'SALAY', '10', '1043', '104322', '9007', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1282, 'SUGBONGCOGON', '10', '1043', '104323', '9009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1283, 'TAGOLOAN', '10', '1043', '104324', '9001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1284, 'TALISAYAN', '10', '1043', '104325', '9012', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1285, 'VILLANUEVA', '10', '1043', '104326', '9002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1286, 'ASUNCION (SAUG)', '11', '1123', '112301', '8102', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1287, 'BABAK', '11', '1123', '112302', '8118', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1288, 'CARMEN', '11', '1123', '112303', '8101', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1290, 'KAPALONG', '11', '1123', '112305', '8113', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1291, 'KAPUTIAN', '11', '1123', '112306', '8120', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1299, 'NEW CORELLA', '11', '1123', '112314', '8104', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1300, 'CITY OF PANABO', '11', '1123', '112315', '8105', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1302, 'ISLAND GARDEN CITY OF SAMAL', '11', '1123', '112317', '8119', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1303, 'SANTO TOMAS', '11', '1123', '112318', '8112', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1304, 'CITY OF TAGUM (Capital)', '11', '1123', '112319', '8100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1307, 'TALAINGOD', '11', '1123', '112322', '8107', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:24:06'),
(1308, 'BRAULIO E. DUJALI', '11', '1123', '112323', '8100', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1309, 'SAN ISIDRO', '11', '1123', '112324', '8121', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:23:14'),
(1310, 'BANSALAN', '11', '1124', '112401', '8005', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1311, 'DAVAO CITY', '11', '1124', '112402', '8000', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1312, 'CITY OF DIGOS (Capital)', '11', '1124', '112403', '8002', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1313, 'HAGONOY', '11', '1124', '112404', '8006', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1314, 'JOSE ABAD SANTOS (TRINIDAD)', '11', '1186', '118602', '8014', 'Active', '2022-06-21 11:51:01', '2022-07-11 03:05:55'),
(1315, 'KIBLAWAN', '11', '1124', '112406', '8008', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1316, 'MAGSAYSAY', '11', '1124', '112407', '8004', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1317, 'MALALAG', '11', '1124', '112408', '8010', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1318, 'MALITA', '11', '1186', '118603', '8012', 'Active', '2022-06-21 11:51:01', '2022-07-11 03:06:10'),
(1319, 'MATANAO', '11', '1124', '112410', '8003', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1320, 'PADADA', '11', '1124', '112411', '8007', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1321, 'SANTA CRUZ', '11', '1124', '112412', '8001', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1322, 'SANTA MARIA', '11', '1186', '118604', '8011', 'Active', '2022-06-21 11:51:01', '2022-07-11 03:06:24'),
(1323, 'SULOP', '11', '1124', '112414', '8009', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1324, 'SARANGANI', '11', '1186', '118605', '8015', 'Active', '2022-06-21 11:51:01', '2022-07-11 03:06:36'),
(1325, 'DON MARCELINO', '11', '1186', '118601', '8013', 'Active', '2022-06-21 11:51:01', '2022-07-11 03:05:35'),
(1326, 'BAGANGA', '11', '1125', '112501', '8204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1327, 'BANAYBANAY', '11', '1125', '112502', '8208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1328, 'BOSTON', '11', '1125', '112503', '8206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1329, 'CARAGA', '11', '1125', '112504', '8203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1330, 'CATEEL', '11', '1125', '112505', '8205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1331, 'GOVERNOR GENEROSO', '11', '1125', '112506', '8210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1332, 'LUPON', '11', '1125', '112507', '8207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1333, 'MANAY', '11', '1125', '112508', '8202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1334, 'MATI (Capital)', '11', '1125', '112509', '8200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1335, 'SAN ISIDRO', '11', '1125', '112510', '8209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1336, 'TARRAGONA', '11', '1125', '112511', '8201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1337, 'BANGA', '11', '1163', '116302', '9511', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1338, 'GENERAL SANTOS CITY', '11', '1163', '116303', '9500', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1339, 'KORONADAL', '11', '1163', '116306', '9506', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1340, 'NORALA', '11', '1163', '116311', '9508', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1341, 'POLOMOLOK', '11', '1163', '116312', '9504', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1342, 'SURALLAH', '11', '1163', '116313', '9512', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1343, 'TAMPAKAN', '11', '1163', '116314', '9507', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1344, 'TANTANGAN', '11', '1163', '116315', '9510', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1345, 'T\'BOLI', '11', '1163', '116316', '9513', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1346, 'TUPI', '11', '1163', '116317', '9505', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1348, 'LAKE SEBU', '11', '1163', '116319', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1350, 'ALABEL', '11', '1180', '118001', '9501', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1351, 'GLAN', '11', '1180', '118002', '9517', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1352, 'KIAMBA', '11', '1180', '118003', '9514', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1353, 'MAASIM', '11', '1180', '118004', '9502', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1354, 'MAITUM', '11', '1180', '118005', '9515', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1355, 'MALAPATAN', '11', '1180', '118006', '9516', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1356, 'MALUNGON', '11', '1180', '118007', '9503', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1357, 'COMPOSTELA', '11', '1182', '118201', '8803', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:18:10'),
(1358, 'LAAK', '11', '1182', '118202', '8810', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:19:59'),
(1359, 'MABINI (DOÑA ALICIA)', '11', '1182', '118203', '8807', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:20:51'),
(1360, 'MACO', '11', '1182', '118204', '8806', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:18:57'),
(1361, 'MARAGUSAN (SAN MARIANO)', '11', '1182', '118205', '8808', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:19:37'),
(1362, 'MAWAB', '11', '1182', '118206', '8802', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:17:50'),
(1363, 'MONKAYO', '11', '1182', '118207', '8805', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:18:40'),
(1364, 'MONTEVISTA', '11', '1182', '118208', '8801', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:17:32'),
(1365, 'NABUNTURAN (Capital)', '11', '1182', '118209', '8800', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:17:12'),
(1366, 'NEW BATAAN', '11', '1182', '118210', '8804', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:18:25'),
(1367, 'PANTUKAN', '11', '1182', '118211', '8809', 'Active', '2022-06-21 11:51:01', '2022-07-11 04:20:12'),
(1368, 'BACOLOD  (16)', '12', '1235', '123501', '9205', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1369, 'BALOI  (21)', '12', '1235', '123502', '9217', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1370, 'BAROY  (23)', '12', '1235', '123503', '9210', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1371, 'ILIGAN CITY  (44)', '12', '1235', '123504', '9200', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1372, 'KAPATAGAN  (33)', '12', '1235', '123505', '9214', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1373, 'SULTAN NAGA DIMAPORO', '12', '1235', '123506', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1374, 'KAUSWAGAN  (13)', '12', '1235', '123507', '9202', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1375, 'KOLAMBUGAN  (26)', '12', '1235', '123508', '9207', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1376, 'LALA  (27)', '12', '1235', '123509', '9211', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1377, 'LINAMON  (8)', '12', '1235', '123510', '9201', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1378, 'MAGSAYSAY  (24)', '12', '1235', '123511', '9221', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1379, 'MAIGO  (13)', '12', '1235', '123512', '9206', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1380, 'MATUNGAO  (12)', '12', '1235', '123513', '9203', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1381, 'MUNAI  (26)', '12', '1235', '123514', '9219', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1382, 'MUNUNGAN  (25)', '12', '1235', '123515', '9216', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1383, 'PANTAO RAGAT  (20)', '12', '1235', '123516', '9208', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1384, 'POONA PIAGAPO  (26)', '12', '1235', '123517', '9204', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1385, 'SALVADOR  (25)', '12', '1235', '123518', '9212', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1386, 'SAPAD  (17)', '12', '1235', '123519', '9213', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1387, 'TAGOLOAN  (7)', '12', '1235', '123520', '9222', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1388, 'TANGKAL  (18)', '12', '1235', '123521', '9220', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1389, 'TUBOD  (Capital)  (24)', '12', '1235', '123522', '9209', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1390, 'PANTAR  (21)', '12', '1235', '123523', '9218', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1391, 'ALAMADA', '12', '1247', '124701', '9413', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1392, 'CARMEN', '12', '1247', '124702', '9408', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1393, 'KABACAN', '12', '1247', '124703', '9407', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1394, 'CITY OF KIDAPAWAN (Capital)', '12', '1247', '124704', '9400', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1395, 'LIBUNGAN', '12', '1247', '124705', '9411', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1396, 'MAGPET', '12', '1247', '124706', '9404', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1397, 'MAKILALA', '12', '1247', '124707', '9401', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1398, 'MATALAM', '12', '1247', '124708', '9406', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1399, 'MIDSAYAP', '12', '1247', '124709', '9410', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1400, 'M\'LANG', '12', '1247', '124710', '9402', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1401, 'PIGKAWAYAN', '12', '1247', '124711', '9412', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1402, 'PIKIT', '12', '1247', '124712', '9409', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1403, 'PRESIDENT ROXAS', '12', '1247', '124713', '9405', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1404, 'TULUNAN', '12', '1247', '124714', '9403', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1405, 'ANTIPAS', '12', '1247', '124715', '9414', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1406, 'BANISILAN', '12', '1247', '124716', '9416', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1407, 'ALEOSAN', '12', '1247', '124717', '9415', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1408, 'ARAKAN', '12', '1247', '124718', '9417', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1409, 'COTABATO CITY <POBLACION>', '12', '1247', '124719', '9600', '', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1410, 'BANGA', '12', '1263', '126302', '9511', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1411, 'GENERAL SANTOS CITY (DADIANGAS)', '12', '1263', '126303', '9500', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1412, 'CITY OF KORONADAL (Capital)', '12', '1263', '126306', '9506', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1413, 'NORALA', '12', '1263', '126311', '9508', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1414, 'POLOMOLOK', '12', '1263', '126312', '9504', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1415, 'SURALLAH', '12', '1263', '126313', '9512', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1416, 'TAMPAKAN', '12', '1263', '126314', '9507', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1417, 'TANTANGAN', '12', '1263', '126315', '9510', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1418, 'T\'BOLI', '12', '1263', '126316', '9513', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1419, 'TUPI', '12', '1263', '126317', '9505', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1420, 'SANTO NIÑO', '12', '1263', '126318', '9509', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:16:56'),
(1421, 'LAKE SEBU', '12', '1263', '126319', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1422, 'BAGUMBAYAN', '12', '1265', '126501', '9810', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1423, 'COLUMBIO', '12', '1265', '126502', '9801', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1424, 'ESPERANZA', '12', '1265', '126503', '9806', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1425, 'ISULAN (Capital)', '12', '1265', '126504', '9805', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1426, 'KALAMANSIG', '12', '1265', '126505', '9808', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1427, 'LEBAK', '12', '1265', '126506', '9807', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1428, 'LUTAYAN', '12', '1265', '126507', '9803', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1429, 'LAMBAYONG (MARIANO MARCOS)', '12', '1265', '126508', '9802', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1430, 'PALIMBANG', '12', '1265', '126509', '9809', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01');
INSERT INTO `ref_city` (`id`, `city`, `region_code`, `province_code`, `city_code`, `zip_code`, `status`, `created_at`, `updated_at`) VALUES
(1431, 'PRESIDENT QUIRINO', '12', '1265', '126510', '9804', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1432, 'CITY OF TACURONG', '12', '1265', '126511', '9800', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1433, 'SEN. NINOY AQUINO', '12', '1265', '126512', '9811', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1434, 'ALABEL (Capital)', '12', '1280', '128001', '9501', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1435, 'GLAN', '12', '1280', '128002', '9517', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1436, 'KIAMBA', '12', '1280', '128003', '9514', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1437, 'MAASIM', '12', '1280', '128004', '9502', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1438, 'MAITUM', '12', '1280', '128005', '9515', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1439, 'MALAPATAN', '12', '1280', '128006', '9516', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1440, 'MALUNGON', '12', '1280', '128007', '9503', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1441, 'COTABATO', '12', '1298', '129804', '9600', '', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1442, 'MARAWI CITY  (96)', '12', '1298', '129817', '9700', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1443, 'CITY OF MANILA', '13', '1339', '133900', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1444, 'TONDO', '13', '1339', '133901', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1445, 'BINONDO', '13', '1339', '133902', '1006', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:36:33'),
(1446, 'QUIAPO', '13', '1339', '133903', '1001', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:38:34'),
(1447, 'SAN NICOLAS', '13', '1339', '133904', '1010', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:40:10'),
(1448, 'SANTA CRUZ', '13', '1339', '133905', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1449, 'SAMPALOC', '13', '1339', '133906', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1450, 'SAN MIGUEL', '13', '1339', '133907', '1005', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:39:54'),
(1451, 'ERMITA', '13', '1339', '133908', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1452, 'INTRAMUROS', '13', '1339', '133909', '1002', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:36:56'),
(1453, 'MALATE', '13', '1339', '133910', '1004', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:37:21'),
(1454, 'PACO', '13', '1339', '133911', '1007', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:37:37'),
(1455, 'PANDACAN', '13', '1339', '133912', '1011', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:37:50'),
(1456, 'PORT AREA', '13', '1339', '133913', '1018', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:38:04'),
(1457, 'SANTA ANA', '13', '1339', '133914', '1009', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:40:31'),
(1458, 'CITY OF MANDALUYONG', '13', '1374', '137401', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1459, 'CITY OF MARIKINA', '13', '1374', '137402', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1460, 'CITY OF PASIG', '13', '1374', '137403', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1461, 'QUEZON CITY', '13', '1374', '137404', '1110', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1462, 'SAN JUAN', '13', '1374', '137405', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1463, 'KALOOKAN CITY', '13', '1375', '137501', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1464, 'CITY OF MALABON', '13', '1375', '137502', '1409', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1465, 'NAVOTAS', '13', '1375', '137503', '1409', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1466, 'CITY OF VALENZUELA', '13', '1375', '137504', '1444', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1467, 'CITY OF LAS PIÑAS', '13', '1376', '137601', '1740', 'Active', '2022-06-21 11:51:01', '2024-06-28 03:42:05'),
(1468, 'CITY OF MAKATI', '13', '1376', '137602', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1469, 'CITY OF MUNTINLUPA', '13', '1376', '137603', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1470, 'CITY OF PARAÑAQUE', '13', '1376', '137604', '1719', 'Active', '2022-06-21 11:51:01', '2024-06-28 03:42:36'),
(1471, 'PASAY CITY', '13', '1376', '137605', '1709', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:57:15'),
(1472, 'PATEROS', '13', '1376', '137606', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1473, 'TAGUIG', '13', '1376', '137607', '1630', 'Active', '2022-06-21 11:51:01', '2022-07-12 02:59:48'),
(1474, 'BANGUED (Capital)', '14', '1401', '140101', '2800', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1475, 'BOLINEY', '14', '1401', '140102', '2815', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1476, 'BUCAY', '14', '1401', '140103', '2805', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1477, 'BUCLOC', '14', '1401', '140104', '2817', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1478, 'DAGUIOMAN', '14', '1401', '140105', '2816', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1479, 'DANGLAS', '14', '1401', '140106', '2825', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1480, 'DOLORES', '14', '1401', '140107', '2801', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1481, 'LA PAZ', '14', '1401', '140108', '2826', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1482, 'LACUB', '14', '1401', '140109', '2821', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1483, 'LAGANGILANG', '14', '1401', '140110', '2802', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1484, 'LAGAYAN', '14', '1401', '140111', '2824', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1485, 'LANGIDEN', '14', '1401', '140112', '2807', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1486, 'LICUAN-BAAY (LICUAN)', '14', '1401', '140113', '2819', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1487, 'LUBA', '14', '1401', '140114', '2813', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1488, 'MALIBCONG', '14', '1401', '140115', '2820', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1489, 'MANABO', '14', '1401', '140116', '2810', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1490, 'PEÑARRUBIA', '14', '1401', '140117', '2804', 'Active', '2022-06-21 11:51:01', '2024-06-28 03:57:54'),
(1491, 'PIDIGAN', '14', '1401', '140118', '2806', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1492, 'PILAR', '14', '1401', '140119', '2812', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1493, 'SALLAPADAN', '14', '1401', '140120', '2818', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1494, 'SAN ISIDRO', '14', '1401', '140121', '2809', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1495, 'SAN JUAN', '14', '1401', '140122', '2823', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1496, 'SAN QUINTIN', '14', '1401', '140123', '2808', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1497, 'TAYUM', '14', '1401', '140124', '2803', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1498, 'TINEG', '14', '1401', '140125', '2822', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1499, 'TUBO', '14', '1401', '140126', '2814', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1500, 'VILLAVICIOSA', '14', '1401', '140127', '2811', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1501, 'ATOK', '14', '1411', '141101', '2612', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1502, 'BAGUIO CITY', '14', '1411', '141102', '2600', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1503, 'BAKUN', '14', '1411', '141103', '2610', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1504, 'BOKOD', '14', '1411', '141104', '2605', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1505, 'BUGUIAS', '14', '1411', '141105', '2607', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1506, 'ITOGON', '14', '1411', '141106', '2604', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1507, 'KABAYAN', '14', '1411', '141107', '2606', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1508, 'KAPANGAN', '14', '1411', '141108', '2613', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1509, 'KIBUNGAN', '14', '1411', '141109', '2611', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1510, 'LA TRINIDAD (Capital)', '14', '1411', '141110', '2601', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1511, 'MANKAYAN', '14', '1411', '141111', '2608', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1512, 'SABLAN', '14', '1411', '141112', '2614', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1513, 'TUBA', '14', '1411', '141113', '2603', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1514, 'TUBLAY', '14', '1411', '141114', '2615', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1515, 'BANAUE', '14', '1427', '142701', '3601', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1516, 'HUNGDUAN', '14', '1427', '142702', '3603', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1517, 'KIANGAN', '14', '1427', '142703', '3604', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1518, 'LAGAWE (Capital)', '14', '1427', '142704', '3600', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1519, 'LAMUT', '14', '1427', '142705', '3605', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1520, 'MAYOYAO', '14', '1427', '142706', '3602', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1521, 'ALFONSO LISTA (POTIA)', '14', '1427', '142707', '3608', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1522, 'AGUINALDO', '14', '1427', '142708', '3606', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1523, 'HINGYON', '14', '1427', '142709', '3607', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1524, 'TINOC', '14', '1427', '142710', '3609', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1525, 'ASIPULO', '14', '1427', '142711', '3610', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1526, 'BALBALAN', '14', '1432', '143201', '3801', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1527, 'LUBUAGAN', '14', '1432', '143206', '3802', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1528, 'PASIL', '14', '1432', '143208', '3803', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1529, 'PINUKPUK', '14', '1432', '143209', '3806', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1530, 'RIZAL (LIWAN)', '14', '1432', '143211', '3808', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1531, 'TABUK (Capital)', '14', '1432', '143213', '3800', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1532, 'TANUDAN', '14', '1432', '143214', '3805', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1533, 'TINGLAYAN', '14', '1432', '143215', '3804', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1534, 'BARLIG', '14', '1444', '144401', '2623', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1535, 'BAUKO', '14', '1444', '144402', '2621', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1536, 'BESAO', '14', '1444', '144403', '2618', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1537, 'BONTOC (Capital)', '14', '1444', '144404', '2616', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1538, 'NATONIN', '14', '1444', '144405', '2624', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1539, 'PARACELIS', '14', '1444', '144406', '2625', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1540, 'SABANGAN', '14', '1444', '144407', '2622', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1541, 'SADANGA', '14', '1444', '144408', '2617', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1542, 'SAGADA', '14', '1444', '144409', '2619', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1543, 'TADIAN', '14', '1444', '144410', '2620', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1544, 'CALANASAN (BAYAG)', '14', '1481', '148101', '3814', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1545, 'CONNER', '14', '1481', '148102', '3807', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1546, 'FLORA', '14', '1481', '148103', '3807', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1547, 'KABUGAO (Capital)', '14', '1481', '148104', '3809', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1548, 'LUNA', '14', '1481', '148105', '3813', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1549, 'PUDTOL', '14', '1481', '148106', '3812', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1550, 'SANTA MARCELA', '14', '1481', '148107', '3811', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1551, 'LAMITAN', '15', '1507', '150702', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1552, 'LANTAWAN', '15', '1507', '150703', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1553, 'MALUSO', '15', '1507', '150704', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1554, 'SUMISIP', '15', '1507', '150705', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1555, 'TIPO-TIPO', '15', '1507', '150706', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1556, 'TUBURAN', '15', '1507', '150707', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1557, 'AKBAR', '15', '1507', '150708', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1558, 'AL-BARKA', '15', '1507', '150709', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1559, 'HADJI MOHAMMAD AJUL', '15', '1507', '150710', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1560, 'UNGKAYA PUKAN', '15', '1507', '150711', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1561, 'HADJI MUHTAMAD', '15', '1507', '150712', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1562, 'BACOLOD-KALAWI (BACOLOD GRANDE)', '15', '1536', '153601', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1563, 'BALABAGAN', '15', '1536', '153602', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1564, 'BALINDONG (WATU)', '15', '1536', '153603', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1565, 'BAYANG', '15', '1536', '153604', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1566, 'BINIDAYAN', '15', '1536', '153605', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1567, 'BUBONG', '15', '1536', '153606', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1568, 'BUTIG', '15', '1536', '153607', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1569, 'GANASSI', '15', '1536', '153609', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1570, 'KAPAI', '15', '1536', '153610', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1571, 'LUMBA-BAYABAO (MAGUING)', '15', '1536', '153611', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1572, 'LUMBATAN', '15', '1536', '153612', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1573, 'MADALUM', '15', '1536', '153613', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1574, 'MADAMBA', '15', '1536', '153614', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1575, 'MALABANG', '15', '1536', '153615', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1576, 'MARANTAO', '15', '1536', '153616', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1577, 'MARAWI CITY', '15', '1536', '153617', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1578, 'MASIU', '15', '1536', '153618', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1579, 'MULONDO', '15', '1536', '153619', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1580, 'PAGAYAWAN (TATARIKAN)', '15', '1536', '153620', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1581, 'PIAGAPO', '15', '1536', '153621', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1582, 'POONA BAYABAO (GATA)', '15', '1536', '153622', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1583, 'PUALAS', '15', '1536', '153623', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1584, 'DITSAAN-RAMAIN', '15', '1536', '153624', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1585, 'SAGUIARAN', '15', '1536', '153625', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1586, 'TAMPARAN', '15', '1536', '153626', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1587, 'TARAKA', '15', '1536', '153627', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1588, 'TUBARAN', '15', '1536', '153628', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1589, 'TUGAYA', '15', '1536', '153629', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1590, 'WAO', '15', '1536', '153630', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1591, 'MAROGONG', '15', '1536', '153631', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1592, 'CALANOGAS', '15', '1536', '153632', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1593, 'BUADIPOSO-BUNTONG', '15', '1536', '153633', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1594, 'MAGUING', '15', '1536', '153634', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1595, 'SULTAN GUMANDER', '15', '1536', '153635', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1596, 'LUMBAYANAGUE', '15', '1536', '153636', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1597, 'BUMBARAN', '15', '1536', '153637', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1598, 'TAGOLOAN II', '15', '1536', '153638', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1599, 'KAPATAGAN', '15', '1536', '153639', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1600, 'SULTAN DUMALONDONG', '15', '1536', '153640', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1601, 'LUMBACA-UNAYAN', '15', '1536', '153641', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1602, 'AMPATUAN', '15', '1538', '153801', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1603, 'BULDON', '15', '1538', '153802', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1604, 'BULUAN', '15', '1538', '153803', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1605, 'DATU PAGLAS', '15', '1538', '153805', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1606, 'DATU PIANG', '15', '1538', '153806', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1607, 'DATU ODIN SINSUAT (DINAIG)', '15', '1538', '153807', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1608, 'SHARIFF AGUAK (MAGANOY) (Capital)', '15', '1538', '153808', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1609, 'MATANOG', '15', '1538', '153809', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1610, 'PAGALUNGAN', '15', '1538', '153810', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1611, 'PARANG', '15', '1538', '153811', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1612, 'SULTAN KUDARAT (NULING)', '15', '1538', '153812', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1613, 'SULTAN SA BARONGIS (LAMBAYONG)', '15', '1538', '153813', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1614, 'KABUNTALAN (TUMBAO)', '15', '1538', '153814', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1615, 'UPI', '15', '1538', '153815', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1616, 'TALAYAN', '15', '1538', '153816', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1617, 'SOUTH UPI', '15', '1538', '153817', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1618, 'BARIRA', '15', '1538', '153818', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1619, 'GEN. S. K. PENDATUN', '15', '1538', '153819', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1620, 'MAMASAPANO', '15', '1538', '153820', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1621, 'TALITAY', '15', '1538', '153821', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1622, 'PAGAGAWAN', '15', '1538', '153822', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1623, 'PAGLAT', '15', '1538', '153823', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1624, 'SULTAN MASTURA', '15', '1538', '153824', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1625, 'GUINDULUNGAN', '15', '1538', '153825', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1626, 'DATU SAUDI-AMPATUAN', '15', '1538', '153826', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1627, 'DATU UNSAY', '15', '1538', '153827', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1628, 'DATU ABDULLAH SANGKI', '15', '1538', '153828', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1629, 'RAJAH BUAYAN', '15', '1538', '153829', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1630, 'DATU ANGGAL MIDTIMBANG', '15', '1538', '153831', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1631, 'MANGUDADATU', '15', '1538', '153832', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1632, 'PANDAG', '15', '1538', '153833', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1633, 'INDANAN', '15', '1566', '156601', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1634, 'JOLO (Capital)', '15', '1566', '156602', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1635, 'KALINGALAN CALUANG', '15', '1566', '156603', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1636, 'LUUK', '15', '1566', '156604', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1637, 'MAIMBUNG', '15', '1566', '156605', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1638, 'HADJI PANGLIMA TAHIL (MARUNGGAS)', '15', '1566', '156606', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1639, 'OLD PANAMAO', '15', '1566', '156607', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1640, 'PANGUTARAN', '15', '1566', '156608', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1641, 'PARANG', '15', '1566', '156609', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1642, 'PATA', '15', '1566', '156610', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1643, 'PATIKUL', '15', '1566', '156611', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1644, 'SIASI', '15', '1566', '156612', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1645, 'TALIPAO', '15', '1566', '156613', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1646, 'TAPUL', '15', '1566', '156614', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1647, 'TONGKIL', '15', '1566', '156615', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1648, 'PANGLIMA ESTINO (NEW PANAMAO)', '15', '1566', '156616', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1649, 'LUGUS', '15', '1566', '156617', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1650, 'PANDAMI', '15', '1566', '156618', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1651, 'OMAR', '15', '1566', '156619', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1652, 'PANGLIMA SUGALA (BALIMBING) (Capital)', '15', '1570', '157001', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1653, 'BONGAO', '15', '1570', '157002', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1654, 'MAPUN (CAGAYAN DE TAWI-TAWI)', '15', '1570', '157003', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1655, 'SIMUNUL', '15', '1570', '157004', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1656, 'SITANGKAI', '15', '1570', '157005', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1657, 'SOUTH UBIAN', '15', '1570', '157006', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1658, 'TANDUBAS', '15', '1570', '157007', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1659, 'TURTLE ISLANDS', '15', '1570', '157008', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1660, 'LANGUYAN', '15', '1570', '157009', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1661, 'SAPA-SAPA', '15', '1570', '157010', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1662, 'SIBUTU', '15', '1570', '157011', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1663, 'BARIRA', '15', '1584', '158401', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1664, 'BULDON', '15', '1584', '158402', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1665, 'DATU BLAH T. SINSUAT', '15', '1584', '158403', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1666, 'DATU ODIN SINSUAT (DINAIG) (Capital)', '15', '1584', '158404', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1667, 'KABUNTALAN (TUMBAO)', '15', '1584', '158405', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1668, 'MATANOG', '15', '1584', '158406', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1669, 'PARANG', '15', '1584', '158407', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1670, 'SULTAN KUDARAT (NULING)', '15', '1584', '158408', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1671, 'SULTAN MASTURA', '15', '1584', '158409', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1672, 'UPI', '15', '1584', '158410', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1673, 'NORTHERN KABUNTALAN', '15', '1584', '158411', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1674, 'BUENAVISTA', '16', '1602', '160201', '8601', 'Active', '2022-06-21 11:51:01', '2024-06-28 04:09:29'),
(1675, 'BUTUAN CITY (Capital)', '16', '1602', '160202', '8600', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:37:27'),
(1676, 'CITY OF CABADBARAN', '16', '1602', '160203', '8605', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:39:02'),
(1677, 'CARMEN', '16', '1602', '160204', '8603', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:39:24'),
(1678, 'JABONGA', '16', '1602', '160205', '8607', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:40:55'),
(1679, 'KITCHARAO', '16', '1602', '160206', '8609', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:41:21'),
(1680, 'LAS NIEVES', '16', '1602', '160207', '8610', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:41:35'),
(1681, 'MAGALLANES', '16', '1602', '160208', '8604', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:40:10'),
(1682, 'NASIPIT', '16', '1602', '160209', '8602', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:39:44'),
(1683, 'SANTIAGO', '16', '1602', '160210', '8608', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:41:08'),
(1684, 'TUBAY', '16', '1602', '160211', '8606', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:40:40'),
(1685, 'REMEDIOS T. ROMUALDEZ', '16', '1602', '160212', '8611', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:41:51'),
(1686, 'CITY OF BAYUGAN', '16', '1603', '160301', '8502', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:46:10'),
(1687, 'BUNAWAN', '16', '1603', '160302', '8506', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:47:07'),
(1688, 'ESPERANZA', '16', '1603', '160303', '8513', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:48:20'),
(1689, 'LA PAZ', '16', '1603', '160304', '8508', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:47:27'),
(1690, 'LORETO', '16', '1603', '160305', '8507', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:47:16'),
(1691, 'PROSPERIDAD (Capital)', '16', '1603', '160306', '8500', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:45:46'),
(1692, 'ROSARIO', '16', '1603', '160307', '8504', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:46:40'),
(1693, 'SAN FRANCISCO', '16', '1603', '160308', '8501', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:45:58'),
(1694, 'SAN LUIS', '16', '1603', '160309', '8511', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:48:02'),
(1695, 'SANTA JOSEFA', '16', '1603', '160310', '8512', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:48:11'),
(1696, 'TALACOGON', '16', '1603', '160311', '8510', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:47:52'),
(1697, 'TRENTO', '16', '1603', '160312', '8505', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:46:55'),
(1698, 'VERUELA', '16', '1603', '160313', '8509', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:47:39'),
(1699, 'SIBAGAT', '16', '1603', '160314', '8503', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:45:31'),
(1700, 'ALEGRIA', '16', '1667', '166701', '8425', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:58:47'),
(1701, 'BACUAG', '16', '1667', '166702', '8408', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:54:31'),
(1703, 'BURGOS', '16', '1667', '166704', '8424', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:58:31'),
(1705, 'CLAVER', '16', '1667', '166706', '8410', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:55:01'),
(1706, 'DAPA', '16', '1667', '166707', '8417', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:56:31'),
(1707, 'DEL CARMEN', '16', '1667', '166708', '8418', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:56:47'),
(1709, 'GENERAL LUNA', '16', '1667', '166710', '8419', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:57:05'),
(1710, 'GIGAQUIT', '16', '1667', '166711', '8409', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:54:44'),
(1713, 'MAINIT', '16', '1667', '166714', '8407', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:54:18'),
(1714, 'MALIMONO', '16', '1667', '166715', '8402', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:52:51'),
(1715, 'PILAR', '16', '1667', '166716', '8420', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:57:27'),
(1716, 'PLACER', '16', '1667', '166717', '8405', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:53:34'),
(1717, 'SAN BENITO', '16', '1667', '166718', '8423', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:58:20'),
(1718, 'SAN FRANCISCO (ANAO-AON)', '16', '1667', '166719', '8401', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:52:40'),
(1719, 'SAN ISIDRO', '16', '1667', '166720', '8421', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:57:50'),
(1720, 'SANTA MONICA (SAPAO)', '16', '1667', '166721', '8422', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:58:07'),
(1721, 'SISON', '16', '1667', '166722', '8404', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:53:19'),
(1722, 'SOCORRO', '16', '1667', '166723', '8416', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:56:03'),
(1723, 'SURIGAO CITY (Capital)', '16', '1667', '166724', '8400', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:52:23'),
(1724, 'TAGANA-AN', '16', '1667', '166725', '8403', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:53:07'),
(1726, 'TUBOD', '16', '1667', '166727', '8406', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:53:46'),
(1728, 'BAROBO', '16', '1668', '166801', '8309', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:04:53'),
(1729, 'BAYABAS', '16', '1668', '166802', '8303', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:03:32'),
(1730, 'CITY OF BISLIG', '16', '1668', '166803', '8311', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:05:20'),
(1731, 'CAGWAIT', '16', '1668', '166804', '8304', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:03:42'),
(1732, 'CANTILAN', '16', '1668', '166805', '8317', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:06:33'),
(1733, 'CARMEN', '16', '1668', '166806', '8315', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:06:11'),
(1734, 'CARRASCAL', '16', '1668', '166807', '8318', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:06:42'),
(1735, 'CORTES', '16', '1668', '166808', '8313', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:06:02'),
(1736, 'HINATUAN', '16', '1668', '166809', '8310', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:05:08'),
(1737, 'LANUZA', '16', '1668', '166810', '8314', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:06:55'),
(1738, 'LIANGA', '16', '1668', '166811', '8307', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:04:29'),
(1739, 'LINGIG', '16', '1668', '166812', '8312', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:05:46'),
(1740, 'MADRID', '16', '1668', '166813', '8316', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:06:24'),
(1741, 'MARIHATAG', '16', '1668', '166814', '8306', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:04:13'),
(1742, 'SAN AGUSTIN', '16', '1668', '166815', '8305', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:03:57'),
(1743, 'SAN MIGUEL', '16', '1668', '166816', '8301', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:03:02'),
(1744, 'TAGBINA', '16', '1668', '166817', '8308', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:04:43'),
(1745, 'TAGO', '16', '1668', '166818', '8302', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:03:20'),
(1746, 'CITY OF TANDAG (Capital)', '16', '1668', '166819', '8300', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:02:52'),
(1747, 'BASILISA (RIZAL)', '16', '1685', '168501', '8413', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:00:56'),
(1748, 'CAGDIANAO', '16', '1685', '168502', '8411', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:00:36'),
(1749, 'DINAGAT', '16', '1685', '168503', '8412', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:00:46'),
(1750, 'LIBJO (ALBOR)', '16', '1685', '168504', '8414', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:01:05'),
(1751, 'LORETO', '16', '1685', '168505', '8415', 'Active', '2022-06-21 11:51:01', '2022-06-26 16:01:15'),
(1752, 'SAN JOSE (Capital)', '16', '1685', '168506', '8427', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:59:51'),
(1753, 'TUBAJON', '16', '1685', '168507', '8426', 'Active', '2022-06-21 11:51:01', '2022-06-26 15:59:39'),
(1754, 'CITY OF DJAN', '16', '1699', '1699FW', '8520', 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1755, 'BOAC (Capital)', '17', '1740', '174001', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1756, 'BUENAVISTA', '17', '1740', '174002', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1757, 'GASAN', '17', '1740', '174003', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1758, 'MOGPOG', '17', '1740', '174004', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1759, 'SANTA CRUZ', '17', '1740', '174005', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1760, 'TORRIJOS', '17', '1740', '174006', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1761, 'ABRA DE ILOG', '17', '1751', '175101', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1762, 'CALINTAAN', '17', '1751', '175102', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1763, 'LOOC', '17', '1751', '175103', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1764, 'LUBANG', '17', '1751', '175104', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1765, 'MAGSAYSAY', '17', '1751', '175105', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1766, 'MAMBURAO (Capital)', '17', '1751', '175106', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1767, 'PALUAN', '17', '1751', '175107', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1768, 'RIZAL', '17', '1751', '175108', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1769, 'SABLAYAN', '17', '1751', '175109', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1770, 'SAN JOSE', '17', '1751', '175110', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1771, 'SANTA CRUZ', '17', '1751', '175111', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1772, 'BACO', '17', '1752', '175201', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1773, 'BANSUD', '17', '1752', '175202', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1774, 'BONGABONG', '17', '1752', '175203', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1775, 'BULALACAO (SAN PEDRO)', '17', '1752', '175204', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1776, 'CITY OF CALAPAN (Capital)', '17', '1752', '175205', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1777, 'GLORIA', '17', '1752', '175206', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1778, 'MANSALAY', '17', '1752', '175207', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1779, 'NAUJAN', '17', '1752', '175208', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1780, 'PINAMALAYAN', '17', '1752', '175209', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1781, 'POLA', '17', '1752', '175210', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1782, 'PUERTO GALERA', '17', '1752', '175211', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1783, 'ROXAS', '17', '1752', '175212', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1784, 'SAN TEODORO', '17', '1752', '175213', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1785, 'SOCORRO', '17', '1752', '175214', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1786, 'VICTORIA', '17', '1752', '175215', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1787, 'ABORLAN', '17', '1753', '175301', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1788, 'AGUTAYA', '17', '1753', '175302', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1789, 'ARACELI', '17', '1753', '175303', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1790, 'BALABAC', '17', '1753', '175304', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1791, 'BATARAZA', '17', '1753', '175305', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1792, 'BROOKE\'S POINT', '17', '1753', '175306', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1793, 'BUSUANGA', '17', '1753', '175307', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1794, 'CAGAYANCILLO', '17', '1753', '175308', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1795, 'CORON', '17', '1753', '175309', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1796, 'CUYO', '17', '1753', '175310', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1797, 'DUMARAN', '17', '1753', '175311', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1798, 'EL NIDO (BACUIT)', '17', '1753', '175312', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1799, 'LINAPACAN', '17', '1753', '175313', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1800, 'MAGSAYSAY', '17', '1753', '175314', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1801, 'NARRA', '17', '1753', '175315', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1802, 'PUERTO PRINCESA CITY (Capital)', '17', '1753', '175316', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1803, 'QUEZON', '17', '1753', '175317', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1804, 'ROXAS', '17', '1753', '175318', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1805, 'SAN VICENTE', '17', '1753', '175319', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1806, 'TAYTAY', '17', '1753', '175320', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1807, 'KALAYAAN', '17', '1753', '175321', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1808, 'CULION', '17', '1753', '175322', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1809, 'RIZAL (MARCOS)', '17', '1753', '175323', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1810, 'SOFRONIO ESPAÑOLA', '17', '1753', '175324', '5324', 'Active', '2022-06-21 11:51:01', '2024-06-28 03:56:07'),
(1811, 'ALCANTARA', '17', '1759', '175901', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1812, 'BANTON', '17', '1759', '175902', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1813, 'CAJIDIOCAN', '17', '1759', '175903', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1814, 'CALATRAVA', '17', '1759', '175904', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1815, 'CONCEPCION', '17', '1759', '175905', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1816, 'CORCUERA', '17', '1759', '175906', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1817, 'LOOC', '17', '1759', '175907', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1818, 'MAGDIWANG', '17', '1759', '175908', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1819, 'ODIONGAN', '17', '1759', '175909', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1820, 'ROMBLON (Capital)', '17', '1759', '175910', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1821, 'SAN AGUSTIN', '17', '1759', '175911', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1822, 'SAN ANDRES', '17', '1759', '175912', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1823, 'SAN FERNANDO', '17', '1759', '175913', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1824, 'SAN JOSE', '17', '1759', '175914', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1825, 'SANTA FE', '17', '1759', '175915', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1826, 'FERROL', '17', '1759', '175916', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1827, 'SANTA MARIA (IMELDA)', '17', '1759', '175917', NULL, 'Active', '2022-06-21 11:51:01', '2022-06-21 11:51:01'),
(1828, 'a', '01', '0128', '1221', '4444', 'Active', '2024-06-28 02:23:35', '2024-06-28 02:23:35');

-- --------------------------------------------------------

--
-- Table structure for table `ref_provinces`
--

CREATE TABLE `ref_provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(50) NOT NULL,
  `region_code` varchar(50) NOT NULL,
  `region` varchar(255) DEFAULT NULL,
  `province_code` varchar(50) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active' COMMENT '0 = inactive, 1 = active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `ref_provinces`
--

INSERT INTO `ref_provinces` (`id`, `province`, `region_code`, `region`, `province_code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ILOCOS NORTE', '01', 'REGION I (ILOCOS REGION)', '0128', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(2, 'ILOCOS SUR', '01', 'REGION I (ILOCOS REGION)', '0129', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(3, 'LA UNION', '01', 'REGION I (ILOCOS REGION)', '0133', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(4, 'PANGASINAN', '01', 'REGION I (ILOCOS REGION)', '0155', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(5, 'BATANES', '02', 'REGION II (CAGAYAN VALLEY)', '0209', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(6, 'CAGAYAN', '02', 'REGION II (CAGAYAN VALLEY)', '0215', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(7, 'ISABELA', '02', 'REGION II (CAGAYAN VALLEY)', '0231', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(8, 'NUEVA VIZCAYA', '02', 'REGION II (CAGAYAN VALLEY)', '0250', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(9, 'QUIRINO', '02', 'REGION II (CAGAYAN VALLEY)', '0257', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(10, 'BATAAN', '03', 'REGION III (CENTRAL LUZON)', '0308', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(11, 'BULACAN', '03', 'REGION III (CENTRAL LUZON)', '0314', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(12, 'NUEVA ECIJA', '03', 'REGION III (CENTRAL LUZON)', '0349', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(13, 'PAMPANGA', '03', 'REGION III (CENTRAL LUZON)', '0354', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(14, 'TARLAC', '03', 'REGION III (CENTRAL LUZON)', '0369', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(15, 'ZAMBALES', '03', 'REGION III (CENTRAL LUZON)', '0371', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(16, 'AURORA', '03', 'REGION III (CENTRAL LUZON)', '0377', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(17, 'BATANGAS', '04', 'REGION IV-A (CALABARZON)', '0410', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(18, 'CAVITE', '04', 'REGION IV-A (CALABARZON)', '0421', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(19, 'LAGUNA', '04', 'REGION IV-A (CALABARZON)', '0434', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(20, 'QUEZON', '04', 'REGION IV-A (CALABARZON)', '0456', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(21, 'RIZAL', '04', 'REGION IV-A (CALABARZON)', '0458', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(22, 'MARINDUQUE', '17', 'REGION IV-B (MIMAROPA)', '1740', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(23, 'OCCIDENTAL MINDORO', '17', 'REGION IV-B (MIMAROPA)', '1751', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(24, 'ORIENTAL MINDORO', '17', 'REGION IV-B (MIMAROPA)', '1752', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(25, 'PALAWAN', '17', 'REGION IV-B (MIMAROPA)', '1753', 'Active', '2022-06-20 23:48:19', '2022-06-20 17:07:56'),
(26, 'ROMBLON', '17', 'REGION IV-B (MIMAROPA)', '1759', 'Active', '2022-06-20 23:48:19', '2022-06-20 17:07:56'),
(27, 'ALBAY', '05', 'REGION V (BICOL REGION)', '0505', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(28, 'CAMARINES NORTE', '05', 'REGION V (BICOL REGION)', '0516', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(29, 'CAMARINES SUR', '05', 'REGION V (BICOL REGION)', '0517', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(30, 'CATANDUANES', '05', 'REGION V (BICOL REGION)', '0520', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(31, 'MASBATE', '05', 'REGION V (BICOL REGION)', '0541', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(32, 'SORSOGON', '05', 'REGION V (BICOL REGION)', '0562', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(33, 'AKLAN', '06', 'REGION VI (WESTERN VISAYAS)', '0604', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(34, 'ANTIQUE', '06', 'REGION VI (WESTERN VISAYAS)', '0606', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(35, 'CAPIZ', '06', 'REGION VI (WESTERN VISAYAS)', '0619', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(36, 'ILOILO', '06', 'REGION VI (WESTERN VISAYAS)', '0630', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(37, 'NEGROS OCCIDENTAL', '06', 'REGION VI (WESTERN VISAYAS)', '0645', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(38, 'GUIMARAS', '06', 'REGION VI (WESTERN VISAYAS)', '0679', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(39, 'BOHOL', '07', 'REGION VII (CENTRAL VISAYAS)', '0712', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(40, 'CEBU', '07', 'REGION VII (CENTRAL VISAYAS)', '0722', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(41, 'NEGROS ORIENTAL', '07', 'REGION VII (CENTRAL VISAYAS)', '0746', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(42, 'SIQUIJOR', '07', 'REGION VII (CENTRAL VISAYAS)', '0761', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(43, 'EASTERN SAMAR', '08', 'REGION VIII (EASTERN VISAYAS)', '0826', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(44, 'LEYTE', '08', 'REGION VIII (EASTERN VISAYAS)', '0837', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(45, 'NORTHERN SAMAR', '08', 'REGION VIII (EASTERN VISAYAS)', '0848', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(46, 'SAMAR (WESTERN SAMAR)', '08', 'REGION VIII (EASTERN VISAYAS)', '0860', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(47, 'SOUTHERN LEYTE', '08', 'REGION VIII (EASTERN VISAYAS)', '0864', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(48, 'BILIRAN', '08', 'REGION VIII (EASTERN VISAYAS)', '0878', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(49, 'ZAMBOANGA DEL NORTE', '09', 'REGION IX (ZAMBOANGA PENINSULA)', '0972', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(50, 'ZAMBOANGA DEL SUR', '09', 'REGION IX (ZAMBOANGA PENINSULA)', '0973', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(51, 'ZAMBOANGA SIBUGAY', '09', 'REGION IX (ZAMBOANGA PENINSULA)', '0983', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(52, 'CITY OF ISABELA', '09', 'REGION IX (ZAMBOANGA PENINSULA)', '0997', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(53, 'BUKIDNON', '10', 'REGION X (NORTHERN MINDANAO)', '1013', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(54, 'CAMIGUIN', '10', 'REGION X (NORTHERN MINDANAO)', '1018', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(55, 'LANAO DEL NORTE', '10', 'REGION X (NORTHERN MINDANAO)', '1035', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(56, 'MISAMIS OCCIDENTAL', '10', 'REGION X (NORTHERN MINDANAO)', '1042', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(57, 'MISAMIS ORIENTAL', '10', 'REGION X (NORTHERN MINDANAO)', '1043', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(58, 'DAVAO DEL NORTE', '11', 'REGION XI (DAVAO REGION)', '1123', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(59, 'DAVAO DEL SUR', '11', 'REGION XI (DAVAO REGION)', '1124', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(60, 'DAVAO ORIENTAL', '11', 'REGION XI (DAVAO REGION)', '1125', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(61, 'COMPOSTELA VALLEY', '11', 'REGION XI (DAVAO REGION)', '1182', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(62, 'DAVAO OCCIDENTAL', '11', 'REGION XI (DAVAO REGION)', '1186', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(63, 'COTABATO (NORTH COTABATO)', '12', 'REGION XII (SOCCSKSARGEN)', '1247', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(64, 'SOUTH COTABATO', '12', 'REGION XII (SOCCSKSARGEN)', '1263', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(65, 'SULTAN KUDARAT', '12', 'REGION XII (SOCCSKSARGEN)', '1265', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(66, 'SARANGANI', '12', 'REGION XII (SOCCSKSARGEN)', '1280', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(67, 'COTABATO CITY', '12', 'REGION XII (SOCCSKSARGEN)', '1298', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(68, 'NCR, CITY OF MANILA, FIRST DISTRICT', '13', 'NATIONAL CAPITAL REGION (NCR)', '1339', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(69, 'NCR, SECOND DISTRICT', '13', 'NATIONAL CAPITAL REGION (NCR)', '1374', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(70, 'NCR, THIRD DISTRICT', '13', 'NATIONAL CAPITAL REGION (NCR)', '1375', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(71, 'NCR, FOURTH DISTRICT', '13', 'NATIONAL CAPITAL REGION (NCR)', '1376', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(72, 'ABRA', '14', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '1401', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(73, 'BENGUET', '14', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '1411', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(74, 'IFUGAO', '14', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '1427', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(75, 'KALINGA', '14', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '1432', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(76, 'MOUNTAIN PROVINCE', '14', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '1444', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(77, 'APAYAO', '14', 'CORDILLERA ADMINISTRATIVE REGION (CAR)', '1481', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(78, 'BASILAN', '15', 'BANGSAMORO AUTONOMOUS REGION IN MUSLIM MINDANAO (BARMM)', '1507', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(79, 'LANAO DEL SUR', '15', 'BANGSAMORO AUTONOMOUS REGION IN MUSLIM MINDANAO (BARMM)', '1536', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(80, 'MAGUINDANAO', '15', 'BANGSAMORO AUTONOMOUS REGION IN MUSLIM MINDANAO (BARMM)', '1538', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(81, 'SULU', '15', 'BANGSAMORO AUTONOMOUS REGION IN MUSLIM MINDANAO (BARMM)', '1566', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(82, 'TAWI-TAWI', '15', 'BANGSAMORO AUTONOMOUS REGION IN MUSLIM MINDANAO (BARMM)', '1570', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(83, 'AGUSAN DEL NORTE', '16', 'REGION XIII (CARAGA)', '1602', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(84, 'AGUSAN DEL SUR', '16', 'REGION XIII (CARAGA)', '1603', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(85, 'SURIGAO DEL NORTE', '16', 'REGION XIII (CARAGA)', '1667', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(86, 'SURIGAO DEL SUR', '16', 'REGION XIII (CARAGA)', '1668', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19'),
(87, 'DINAGAT ISLANDS', '16', 'REGION XIII (CARAGA)', '1685', 'Active', '2022-06-20 23:48:19', '2022-06-20 23:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `request_type`
--

CREATE TABLE `request_type` (
  `id` int(11) NOT NULL,
  `transaction_no` text DEFAULT NULL,
  `document_type` enum('Birth Certificate','Death Certificate','CENOMAR','Marriage Certificate','Marriage License') DEFAULT NULL,
  `copy_type` enum('LOCAL','PSA') DEFAULT NULL,
  `date_requested` date DEFAULT NULL,
  `requested_by_id` int(11) DEFAULT NULL,
  `requested_by` varchar(255) DEFAULT NULL,
  `acted_by_id` int(11) DEFAULT NULL,
  `acted_by` varchar(255) DEFAULT NULL,
  `copies` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `proof_payment` text DEFAULT NULL,
  `official_receipt` text DEFAULT NULL,
  `disapprove_by_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `status` enum('FOR PAYMENT','FOR VERIFICATION','FOR PROCESSING','FOR CLAIMING','CLAIMED','DISAPPROVED','DISAPPROVED PAYMENT') DEFAULT 'FOR PAYMENT',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `request_type`
--

INSERT INTO `request_type` (`id`, `transaction_no`, `document_type`, `copy_type`, `date_requested`, `requested_by_id`, `requested_by`, `acted_by_id`, `acted_by`, `copies`, `price`, `proof_payment`, `official_receipt`, `disapprove_by_id`, `comment`, `status`, `date_created`) VALUES
(3, 'TXN20250502102942423', 'Birth Certificate', 'LOCAL', '2025-05-02', 3, 'Danie  Delfinado', 1, 'Chenlee Ebdao', 1, 150.00, '/upload/payment/file_6814848c075f5.png', NULL, NULL, NULL, 'FOR CLAIMING', '2025-05-05 08:58:36'),
(4, 'TXN20250502103258151', 'Death Certificate', 'LOCAL', '2025-05-02', 3, 'Danie  Delfinado', NULL, NULL, 1, 150.00, NULL, NULL, NULL, NULL, 'FOR VERIFICATION', '2025-05-02 08:32:58'),
(5, 'TXN20250502103258151', 'CENOMAR', 'LOCAL', '2025-05-02', 3, 'Danie  Delfinado', NULL, NULL, 1, 150.00, NULL, NULL, NULL, NULL, 'FOR VERIFICATION', '2025-05-02 08:32:58'),
(6, NULL, 'Birth Certificate', 'LOCAL', NULL, 3, 'Danie  Delfinado', NULL, NULL, 1, 150.00, NULL, NULL, NULL, NULL, 'FOR VERIFICATION', '2025-05-02 08:39:45'),
(8, 'TXN20250505103710361', 'Marriage Certificate', 'LOCAL', '2025-05-05', 4, 'King  Arthur', 1, 'Chenlee Ebdao', 1, 150.00, '/upload/payment/file_68187d97a3f36.png', NULL, NULL, NULL, 'FOR CLAIMING', '2025-05-05 08:58:53'),
(9, NULL, 'Marriage License', NULL, '2025-05-05', NULL, 'King Arhur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'FOR PROCESSING', '2025-05-05 08:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(250) NOT NULL,
  `last_name` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `user_type` enum('Administrator','Staff') DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `user_type`, `status`, `date_created`) VALUES
(1, 'Chenlee', 'Ebdao', 'admin', '$2y$10$HCK3lPU5KOgZ21/n0HeFW.mEmWj345NdQDXEPOcQdqdSst4PuMHFK', 'Administrator', 'Active', '2022-10-23 13:43:17'),
(2, 'sara', 'manongas', 'sara_manongas', '$2y$10$Un17Caqn2A9qU6dV9PC.dO4yWkaCzv2KZEQedt1/wp4sRFk5bNLre', 'Staff', 'Active', '2025-03-21 05:52:26'),
(3, 'mhjfgcgc', 'aaaaaaaaaaaaaaafffffffff', 'hayss', '$2y$10$4/rnGXkMwv8V/tpUv9YDAex07JeJfeb0ciuBN0kdCxB5Ky8WvMvTK', 'Staff', 'Active', '2025-04-03 04:42:57'),
(4, 'dara', 'dara', 'dara', '$2y$10$xORChMrxvMLeC.SlAXifXeXyfXrKIhzzyO2BbNYze7AUVi9BqMAJu', 'Staff', 'Active', '2025-04-03 07:11:52'),
(5, 'Robi ', 'Domiggo', 'Robi', '$2y$10$TiYnTuowSoZnehecKMiPo.S257Sv9jB.nc2OC9Ilto4O.1ngkaHjm', 'Staff', 'Active', '2025-04-15 06:25:28');

-- --------------------------------------------------------

--
-- Table structure for table `witness`
--

CREATE TABLE `witness` (
  `id` int(11) NOT NULL,
  `license_id` int(11) DEFAULT NULL,
  `groom_id` int(11) DEFAULT NULL,
  `bride_id` int(11) DEFAULT NULL,
  `witness_names` text DEFAULT NULL,
  `residency` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `civil_status` varchar(100) DEFAULT NULL,
  `to_marry` varchar(255) DEFAULT NULL,
  `id_no` varchar(255) DEFAULT NULL,
  `date_issued` date DEFAULT NULL,
  `issued_at` text DEFAULT NULL,
  `approved_by_id` int(11) DEFAULT NULL,
  `approved_by` varchar(100) DEFAULT NULL,
  `approved_by_date` date DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `witness`
--

INSERT INTO `witness` (`id`, `license_id`, `groom_id`, `bride_id`, `witness_names`, `residency`, `name`, `civil_status`, `to_marry`, `id_no`, `date_issued`, `issued_at`, `approved_by_id`, `approved_by`, `approved_by_date`, `date_created`) VALUES
(1, 1, NULL, 1, 'safsaf', 'safasfasfs', 'afsafsa', 'fsafsafsa', 'fsafasfsa', 'fsafasf', '2025-05-05', 'asfsafsaf', 1, 'Chenlee Ebdao', '2025-05-05', '2025-05-05 08:49:24'),
(2, 1, 2, NULL, 'sfsaf', 'asfasfsaas', 'fasfsafsaf', 'asfsafsa', 'fasfsafas', 'safsafsaf', '2025-05-05', 'asfsafsafsaf', 1, 'Chenlee Ebdao', '2025-05-05', '2025-05-05 08:49:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advice`
--
ALTER TABLE `advice`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `birth`
--
ALTER TABLE `birth`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `cenomar`
--
ALTER TABLE `cenomar`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `common`
--
ALTER TABLE `common`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `user_id` (`user_id`) USING BTREE,
  ADD UNIQUE KEY `user_id_2` (`user_id`) USING BTREE;

--
-- Indexes for table `consents`
--
ALTER TABLE `consents`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `death`
--
ALTER TABLE `death`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `marriage`
--
ALTER TABLE `marriage`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `marriage_bride`
--
ALTER TABLE `marriage_bride`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `marriage_groom`
--
ALTER TABLE `marriage_groom`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `marriage_license`
--
ALTER TABLE `marriage_license`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ref_city`
--
ALTER TABLE `ref_city`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `ref_provinces`
--
ALTER TABLE `ref_provinces`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `request_type`
--
ALTER TABLE `request_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `witness`
--
ALTER TABLE `witness`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advice`
--
ALTER TABLE `advice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `birth`
--
ALTER TABLE `birth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cenomar`
--
ALTER TABLE `cenomar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `common`
--
ALTER TABLE `common`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `consents`
--
ALTER TABLE `consents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `death`
--
ALTER TABLE `death`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `marriage`
--
ALTER TABLE `marriage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marriage_bride`
--
ALTER TABLE `marriage_bride`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `marriage_groom`
--
ALTER TABLE `marriage_groom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marriage_license`
--
ALTER TABLE `marriage_license`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ref_city`
--
ALTER TABLE `ref_city`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1829;

--
-- AUTO_INCREMENT for table `ref_provinces`
--
ALTER TABLE `ref_provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `request_type`
--
ALTER TABLE `request_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `witness`
--
ALTER TABLE `witness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
