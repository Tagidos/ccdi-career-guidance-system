-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2020 at 11:04 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cgs-ccdi-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `examquestion`
--

CREATE TABLE `examquestion` (
  `id` int(12) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letterA` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letterB` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letterC` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `letterD` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correctAnswer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examquestion`
--

INSERT INTO `examquestion` (`id`, `category`, `question`, `letterA`, `letterB`, `letterC`, `letterD`, `correctAnswer`) VALUES
(1, 'IT', 'Question 1', 'A', 'B', 'C', 'D', 'A'),
(2, 'IT', 'Question 2', 'AA', 'BB', 'CC', 'DD', 'BB'),
(3, 'IT', 'Question 3', 'AAA', 'BBB', 'CCC', 'DDD', 'CCC');

-- --------------------------------------------------------

--
-- Table structure for table `examresult`
--

CREATE TABLE `examresult` (
  `id` int(25) NOT NULL,
  `studentId` int(25) NOT NULL,
  `examScore` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eNum` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examresult`
--

INSERT INTO `examresult` (`id`, `studentId`, `examScore`, `eNum`, `created_at`) VALUES
(30, 33, '0', '0', '2020-02-04 13:27:13'),
(41, 34, '3', '4', '2020-02-04 14:47:05'),
(42, 34, '1', '2', '2020-02-04 14:48:29'),
(43, 35, '1', '2', '2020-02-04 14:56:20'),
(44, 36, '2', '3', '2020-02-04 14:57:46'),
(45, 37, '3', '4', '2020-02-04 14:59:15'),
(46, 38, '20', '3', '2020-02-04 15:03:35'),
(47, 38, '3', '4', '2020-02-05 02:50:26');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(12) NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middleName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastSchoolAttended` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dateOfExamination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `score` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `suggestedCourse` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userLevel` int(12) NOT NULL,
  `takeExam` int(25) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `lastName`, `firstName`, `middleName`, `address`, `course`, `lastSchoolAttended`, `phoneNumber`, `status`, `dateOfExamination`, `score`, `suggestedCourse`, `userLevel`, `takeExam`, `created_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 'Admin Account', '', '', '', '', '', '', '2020-02-27 13:45:49.000000', '', '', 0, 0, '2020-02-04 11:58:35'),
(35, 'q', '3675ac5c859c806b26e02e6f9fd62192', 'q', 'q', 'q', 'q', 'Information Technology', 'Aemillianum College Inc.', '9301787782', 'Enrolled', '2020/02/04-10:56:34pm', '', 'ACT', 3, 0, '2020-02-05 09:08:04'),
(36, 'w', '23e65a679105b85c5dc7034fded4fb5f', 'w', 'w', 'w', 'w', 'Information Technology', 'Aemillianum College Inc.', '9301787782', 'Enrolled', '2020/02/04-10:57:53pm', '', 'ACT', 3, 0, '2020-02-05 06:57:31'),
(37, 'e', 'e1671797c52e15f763380b45e841ec32', 'e', 'e', 'e', 'e', 'Information Technology', 'SNHS', '9301787782', 'Taked Exam', '2020/02/04-11:02:36pm', '3', 'ACT', 3, 1, '2020-02-04 15:02:36'),
(38, 'r', 'd9649cd369c2a50cc191c45504ef06db', 'r', 'r', 'r', 'r', 'Information Technology', 'SNHS', '23', 'Taked Exam', '2020/02/05-10:50:27am', '3', 'Computer Science', 3, 0, '2020-02-05 06:57:38'),
(39, 'test', 'e08a7c49d96c2b475656cc8fe18cee8e', 'test', 'test', 'test', 'test', 'Information Technology', 'SNHS', '123', 'Enrolled', '', '0', '', 3, 0, '2020-02-05 09:09:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examquestion`
--
ALTER TABLE `examquestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examresult`
--
ALTER TABLE `examresult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studentId` (`studentId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examquestion`
--
ALTER TABLE `examquestion`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `examresult`
--
ALTER TABLE `examresult`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
