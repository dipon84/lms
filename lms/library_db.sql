-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 03:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminId` int(11) NOT NULL,
  `adminName` varchar(60) NOT NULL,
  `password` varchar(150) NOT NULL,
  `username` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminId`, `adminName`, `password`, `username`, `email`) VALUES
(11, 'admin', '0000', 'admin', 'admin@admin.com'),
(14, 'MD. TAUHID- UL SADIK', '1234', 'dipon', 'cse.tusdipon@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookId` int(11) NOT NULL,
  `bookTitle` varchar(150) NOT NULL,
  `author` varchar(60) NOT NULL,
  `publisherName` varchar(60) NOT NULL,
  `categories` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookId`, `bookTitle`, `author`, `publisherName`, `categories`) VALUES
(19, 'Comedy', 'J.K Rawlings', 'Prothoma', 'BOOk'),
(20, 'Literature', 'Kazi Nazrul Islam', 'Annona Prokashoni', 'Book'),
(21, 'Poem', 'Rifiq Ahmed', 'Knowledge Prokashoni', 'Book'),
(22, 'Job', 'Ariful Islam', '1+ Publication', 'Book'),
(23, 'Math Plus', 'Khairul Alam', 'Udoy Publication', 'Book');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrowId` int(11) NOT NULL,
  `borrowDate` varchar(20) NOT NULL,
  `returnDate` varchar(20) NOT NULL,
  `bookId` int(2) NOT NULL,
  `studentId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `borrow`
--

INSERT INTO `borrow` (`borrowId`, `borrowDate`, `returnDate`, `bookId`, `studentId`) VALUES
(12, '2021-07-15', '2021-07-27', 5, 2345),
(15, '2021-07-08', '2021-07-29', 8, 253),
(16, '2021-07-01', '2021-07-29', 11, 14),
(17, '2021-07-31', '2021-08-31', 13, 53514),
(18, '2023-04-12', '2023-04-13', 111, 15),
(19, '2023-04-12', '2023-04-13', 111, 15),
(24, '2023-04-12', '2023-04-13', 14, 12),
(25, '2023-04-16', '2023-04-19', 14, 12),
(26, '', '', 0, 0),
(27, '2023-04-13', '2023-04-16', 14, 15),
(28, '2023-04-16', '2023-04-18', 14, 15),
(30, '2023-04-16', '2023-04-17', 16, 12),
(31, '2023-04-16', '2023-04-17', 16, 12),
(32, '2023-04-16', '2023-04-25', 16, 12),
(33, '2023-04-16', '2023-04-19', 19, 12),
(38, '2023-04-13', '2023-04-19', 22, 15),
(35, '2023-04-15', '2023-04-19', 24, 15),
(37, '2023-04-15', '2023-04-18', 20, 14),
(39, '2023-04-16', '2023-04-22', 23, 16);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `studentId` int(11) NOT NULL,
  `id_no` int(10) NOT NULL,
  `email` varchar(60) NOT NULL,
  `dept` varchar(60) NOT NULL,
  `phoneNumber` varchar(11) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`studentId`, `id_no`, `email`, `dept`, `phoneNumber`, `name`) VALUES
(13, 0, 'cse.tusdipon@gmail.com', 'CSE', '01734892384', 'MD. TAUHID- UL SADIK'),
(14, 0, 'sojib@gmail.com', 'EEE', '01723000000', 'Sojib'),
(15, 0, 'didar@gmail.com', 'CSE', '01755000000', 'Didar'),
(16, 0, 'rofiq@gmail.com', 'Textile', '01737000000', 'Rafiq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminId`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrowId`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`studentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `borrow`
--
ALTER TABLE `borrow`
  MODIFY `borrowId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `studentId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
