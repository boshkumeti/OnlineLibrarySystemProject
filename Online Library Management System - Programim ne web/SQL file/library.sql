-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Ahmet', 'admin@gmail.com', 'admin', 'cdb5efc9c72196c1bd8b7a594b46b44f', '2023-03-23 12:34:27');
INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(2, 'Ajkena', 'admin2@gmail.com', 'admin2', '1f71fbef9be06ad247045c1cd2e15d56', '2023-03-23 14:52:02');
INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(3, 'Dhimitraq', 'admin3@gmail.com', 'admin3', '44f3fbeae7b0d2af2bed2dae2f7bdd4f', '2023-03-23 17:08:49');
INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(4, 'Angjelos', 'admin4@gmail.com', 'admin4', '8f58ebd78db35c17f92e03d59724ba4f', '2023-03-23 21:18:26');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Ismail Kadare', '2023-03-25 12:43:54', '2023-03-25 12:43:54'),
(2, 'Stephen Hawking', '2023-03-25 12:35:37', '2023-03-25 12:35:37'),
(3, 'Walter Isaacson', '2023-03-25 13:28:13', '2023-03-25 13:28:13'),
(4, 'Anne Jacobs', '2023-03-25 13:42:56', '2023-03-25 13:42:56'),
(5, 'Khaled Hosseini ', '2023-03-25 13:52:58', '2023-03-25 13:52:58'),
(9, 'Morgan Housel', '2023-03-25 14:13:15', '2023-03-25 14:13:15'),
(10, 'Lajla Pernaska', '2023-03-25 14:19:27', NULL),
(11, 'Simon Sineku', '2023-03-25 14:35:26', NULL),
(12, 'Yuval Noah Harari', '2023-03-25 15:14:12', NULL),
(13, 'Joanne K. Rowling', '2023-03-25 15:36:35', NULL),
(14, 'Erich Maria Remarque', '2023-03-25 15:27:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` varchar(25) DEFAULT NULL,
  `BookPrice` decimal(10,2) DEFAULT NULL,
  `bookImage` varchar(250) NOT NULL,
  `isIssued` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `bookImage`, `isIssued`, `RegDate`, `UpdationDate`) VALUES
(1, 'Kur sunduesit grinden', 5, 1, '222333', '20.00', 'kur-sunduesit-grinden.jpg', 1, '2023-03-25 13:43:54', '2023-03-25 13:43:54'),
(3, 'Pergjigje te shkurtra per pyetjet madhore', 6, 4, '1111', '15.00', 'pergjigje-te-shkurtra-per-pyetjet-madhore.jpg', 0, '2023-03-25 13:35:37', '2023-03-25 13:35:37'),
(5, 'Einstein', 5, 1, '9350237695', '455.00', 'einstein.jpg', 1, '2023-03-25 14:28:13', '2023-03-25 14:28:13'),
(6, 'Vila e pelhurave', 5, 10, 'B019MO3WCM', '100.00', 'vila-e-pelhurave.jpg', NULL, '2023-03-25 14:42:56', '2023-03-25 14:42:56'),
(7, 'Gjuetari i balonave', 5, 11, 'B09NKWH7NP', '53.00', 'gjuetari-i-balonave.jpg', NULL, '2023-03-25 14:52:58', '2023-03-25 14:52:58'),
(8, 'Psikologjia e parase', 8, 12, 'B07C7M8SX9', '120.00', 'psikologjia-e-parase.jpg', NULL, '2023-03-25 15:13:15', NULL),
(9, 'Antistres – zbulo sekretin e jetes pa stres', 8, 13, '1848126476', '200.00', 'antistres-zbulo-sekretin-e-jetes-pa-stres.jpg', NULL, '2023-03-25 15:19:27', NULL),
(10, 'Fillo me pse', 5, 14, '007053246X', '142.00', 'fillo-me-pse.jpg', 0, '2023-03-25 15:35:26', '2023-03-25 15:35:26'),
(11, 'Sapiens - Nje histori e shkurter e njerezimit', 9, 11, 'GBSJ36344563', '422.00', 'sapiens-nje-histori-e-shkurter-e-njerezimit-ribotim.jpg', 0, '2023-03-25 16:14:12', '2023-03-25 16:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Sagë', 1, '2023-03-25 12:43:54', '2023-03-25 12:43:54'),
(5, 'Sociologji', 1, '2023-03-25 12:35:37', '2023-03-25 12:35:37'),
(6, 'Biografi', 1, '2023-03-25 13:28:13', '2023-03-25 13:28:13'),
(7, 'Romancë', 1, '2023-03-25 13:42:56', '2023-03-25 13:42:56'),
(8, 'Shëndeti', 1, '2023-03-25 14:19:27', '2023-03-25 14:19:27'),
(9, 'Histori', 1, '2023-03-25 15:14:12', '2023-03-25 15:14:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT current_timestamp(),
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(7, 5, 'SID011', '2023-03-27 11:25:37', NULL, NULL, NULL),
(8, 1, 'SID002', '2023-03-27 14:19:42', '2023-04-02 16:28:58', 1, 0),
(9, 10, 'SID009', '2023-03-29 17:43:19', '2023-04-03 10:13:24', 1, 0),
(10, 11, 'SID009', '2023-03-31 09:55:32', '2023-04-02 12:52:13', 1, 0),
(11, 1, 'SID012', '2023-03-30 13:40:45', NULL, NULL, NULL),
(12, 10, 'SID012', '2023-04-01 12:52:36', '2023-04-05 11:45:32', 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID002', 'Klajdi', 'klajdi@gmail.com', '0682341422', '7c9fad4228973f8f335d1a7dc39b1d95', 1, '2023-03-26 10:23:03', '2023-03-26 10:23:03'),
(4, 'SID005', 'Jola', 'jola@gmail.com', '0692541624', 'c3530a3f72f21d41cacc2d68987b5a4a', 1, '2023-03-26 12:35:12', '2023-03-26 12:35:12'),
(8, 'SID009', 'Endri', 'endri@gmail.com', '0672491852', '433d5eb354f97bf963f32bfd8e6b2bf3', 1, '2023-03-27 14:52:45', '2023-03-27 14:52:45'),
(9, 'SID010', 'Arta', 'arta@gmail.com', '0675856224', '896030c07a5b4e12d28bf59df751433c', 1, '2023-03-27 14:58:13', '2023-03-27 14:58:13'),
(10, 'SID011', 'Stivi', 'stivi@gmail.com', '0682423754', 'b861c35e711d05abf6b731e5b3cc4c6d', 1, '2023-03-27 10:47:28', '2023-03-27 10:47:28'),
(11, 'SID012', 'Mikela', 'mikela@gmail.com', '0694569870', 'c4699946b4b6d5b13b4d3f3f6320a0c2', 1, '2023-03-26 16:24:58', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
