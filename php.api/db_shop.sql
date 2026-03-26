-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2026 at 07:30 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `firstName`, `lastName`, `phone`, `username`, `password`) VALUES
(1, 'สมชาย', 'ใจดี', '0812345678', 'somchai', 'pass1234'),
(2, 'วิภา', 'สุขสันต์', '0898765432', 'wipa', 'wipa2025'),
(3, 'John', 'Doe', '0991122334', 'johnd', 'securepwd'),
(4, 'ภานุพงศ์', 'กระทู้พัฒน์', '0630364233', 'aun', 'sara1235'),
(5, 'หญิง', 'ดีใจ', '0690213356', 'plum', 'papu2025'),
(6, 'สมมติ', 'อุ้มดี', '0660491125', 'king', 'swawrumol'),
(7, 'wddw', 'wdw', '0691234555', 'etgeg', '$2y$10$Sj3S5W4O7UMnxTQMNoTTfOgCY3ARyHS0I.mJMDT/L1ssY9U1CvJGm');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `full_name`, `department`, `salary`, `active`, `created_at`) VALUES
(5, 'สมชาย ใจดี', 'IT', '35000.00', 1, '2026-03-26 03:39:04'),
(6, 'สมหญิง ดีงาม', 'บัญชี', '28000.00', 1, '2026-03-26 03:39:04'),
(7, 'อนันต์ สุขใจ', 'การตลาด', '25000.00', 0, '2026-03-26 03:39:04'),
(8, 'สุดา พรมดี', 'ทรัพยากรบุคคล', '32000.00', 1, '2026-03-26 03:39:04'),
(9, 'wwew', 'คอมพิวเตอร์', '32323.00', 1, '2026-03-26 05:21:02'),
(10, 'fefe', 'คอมพิวเตอร์', '424244.00', 1, '2026-03-26 05:24:46'),
(11, 'sadwad', 'บัญชี', '41564.00', 1, '2026-03-26 05:26:29'),
(12, 'sadwa', 'บัญชี', '4345.00', 1, '2026-03-26 05:27:15'),
(13, 'dwdwwd', 'คอมพิวเตอร์', '2323232.00', 1, '2026-03-26 06:26:41'),
(14, 'efwfwef', 'คอมพิวเตอร์', '4324324.00', 1, '2026-03-26 06:27:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
