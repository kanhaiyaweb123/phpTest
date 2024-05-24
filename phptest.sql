-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 10:44 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phptest`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctor_details`
--

CREATE TABLE `doctor_details` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(255) NOT NULL,
  `Last_Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `phone_number` varchar(12) NOT NULL,
  `doc_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_details`
--

INSERT INTO `doctor_details` (`id`, `First_Name`, `Last_Name`, `Email`, `phone_number`, `doc_type`) VALUES
(10, 'kanhaiya', 'lal', 'kanhaiyalal@gmail.com', '7687686876', 'AMS'),
(18, 'DrRahul', 'Sharma', 'rahulsharma1@example.com', '9876543210', 'MBBS'),
(19, 'DrPriya', 'Patel', 'priyapatel2@example.com', '9876543201', 'MS'),
(20, 'DrSuresh', 'Kumar', 'sureshkumar3@example.com', '9876543202', 'MD'),
(21, 'DrNeha', 'Singh', 'nehasingh4@example.com', '9876543203', 'BAMS'),
(22, 'DrAmit', 'Jain', 'amitjain5@example.com', '9876543204', 'BAMS'),
(23, 'DrPooja', 'Shah', 'poojashah6@example.com', '9876543205', 'MS'),
(24, 'DrAnkur', 'Gupta', 'ankurgupta7@example.com', '9876543206', 'MBBS'),
(25, 'DrKavita', 'Verma', 'kavitaverma8@example.com', '9876543207', 'MD'),
(26, 'DrRajesh', 'Choudhary', 'rajeshchoudhary9@example.com', '9876543208', 'BAMS'),
(27, 'DrAnjali', 'Mishra', 'anjalimishra10@example.com', '9876543209', 'MS'),
(28, 'DrVinay', 'Kumar', 'vinaykumar11@example.com', '9876543211', 'MBBS'),
(29, 'DrSwati', 'Trivedi', 'swatitrivedi12@example.com', '9876543212', 'MD'),
(30, 'DrSanjay', 'Singhal', 'sanjaysinghal13@example.com', '9876543213', 'BAMS'),
(31, 'DrAarti', 'Sharma', 'aartisharma14@example.com', '9876543214', 'MS'),
(32, 'DrAkash', 'Garg', 'akashgarg15@example.com', '9876543215', 'MBBS'),
(33, 'DrPreeti', 'Chauhan', 'preetichauhan16@example.com', '9876543216', 'MD'),
(34, 'DrRakesh', 'Mehta', 'rakeshmehta17@example.com', '9876543217', 'BAMS'),
(35, 'DrAnita', 'Sharma', 'anitasharma18@example.com', '9876543218', 'MS'),
(36, 'DrArun', 'Kumar', 'arunkumar19@example.com', '9876543219', 'MBBS'),
(37, 'DrNidhi', 'Pandey', 'nidhipandey20@example.com', '9876543220', 'MD'),
(38, 'DrManish', 'Srivastava', 'manishsrivastava21@example.com', '9876543221', 'BAMS'),
(39, 'DrSunita', 'Yadav', 'sunitayadav22@example.com', '9876543222', 'MS'),
(40, 'DrRohit', 'Sharma', 'rohitsharma23@example.com', '9876543223', 'MBBS'),
(41, 'DrShikha', 'Gupta', 'shikhagupta24@example.com', '9876543224', 'MD'),
(42, 'DrVivek', 'Verma', 'vivekverma25@example.com', '9876543225', 'BAMS'),
(43, 'DrDeepika', 'Singh', 'deepikasingh26@example.com', '9876543226', 'MS'),
(44, 'DrSunil', 'Kumar', 'sunilkumar27@example.com', '9876543227', 'MBBS'),
(45, 'DrAnanya', 'Sharma', 'ananyasharma28@example.com', '9876543228', 'MD'),
(46, 'DrRaj', 'Kumar', 'rajkumar29@example.com', '9876543229', 'BAMS'),
(47, 'DrShalini', 'Gupta', 'shalinigupta30@example.com', '9876543230', 'MS'),
(48, 'DrAlok', 'Singh', 'aloksingh31@example.com', '9876543231', 'MBBS'),
(49, 'DrPoonam', 'Choudhary', 'poonamchoudhary32@example.com', '9876543232', 'MD'),
(50, 'DrVikas', 'Sharma', 'vikassharma33@example.com', '9876543233', 'BAMS'),
(51, 'DrDivya', 'Verma', 'divyaverma34@example.com', '9876543234', 'MS'),
(52, 'DrRohini', 'Singh', 'rohinisingh35@example.com', '9876543235', 'MBBS'),
(53, 'DrArjun', 'Gupta', 'arjungupta36@example.com', '9876543236', 'MD'),
(54, 'DrKomal', 'Patel', 'komalpatel37@example.com', '9876543237', 'BAMS'),
(55, 'DrRishi', 'Sharma', 'rishisharma38@example.com', '9876543238', 'MS'),
(56, 'DrNisha', 'Kumari', 'nishakumari39@example.com', '9876543239', 'MBBS'),
(57, 'DrSachin', 'Kumar', 'sachinkumar40@example.com', '9876543240', 'MD'),
(58, 'DrShreya', 'Singh', 'shreyasingh41@example.com', '9876543241', 'BAMS'),
(59, 'DrRohit', 'Gupta', 'rohitgupta42@example.com', '9876543242', 'MS'),
(60, 'DrAnita', 'Verma', 'anitaverma43@example.com', '9876543243', 'MBBS'),
(61, 'DrAmita', 'Pandey', 'amitapandey44@example.com', '9876543244', 'MD');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctor_details`
--
ALTER TABLE `doctor_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `doctor_details`
--
ALTER TABLE `doctor_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
