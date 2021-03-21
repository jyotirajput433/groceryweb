-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2021 at 04:13 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grocery_bag`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `id` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `status` enum('PENDING','BOUGHT','NOT AVAILABLE','') NOT NULL,
  `created_at` datetime NOT NULL,
  `is_deleted` tinyint(4) NOT NULL,
  `deleted_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`id`, `item_name`, `quantity`, `status`, `created_at`, `is_deleted`, `deleted_time`) VALUES
(1, 'kljkj', 'kljkj', 'PENDING', '2021-03-21 00:00:00', 1, '2021-03-21 01:43:18'),
(2, 'kljkj', 'kljkj', 'BOUGHT', '0000-00-00 00:00:00', 1, '2021-03-21 01:43:58'),
(3, 'jkjkjjknmnmmn', 'jkjkjjknmnmmn', 'PENDING', '2021-03-20 00:00:00', 0, '0000-00-00 00:00:00'),
(4, 'jkhjkjhj', '7', 'BOUGHT', '2021-12-31 00:00:00', 0, '0000-00-00 00:00:00'),
(5, 'jkjhjkh', '88', 'NOT AVAILABLE', '2021-12-31 00:00:00', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`id`, `user_name`, `password`, `status`) VALUES
(1, 'admin', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userdetails`
--
ALTER TABLE `userdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
