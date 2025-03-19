-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Mar 19, 2025 at 12:59 PM
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
-- Database: `flutter_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL COMMENT 'ไอดี',
  `name` text NOT NULL COMMENT 'ชื่อ',
  `image` text NOT NULL COMMENT 'รูปภาพ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `name`, `image`) VALUES
(1, '123', 'me1.png');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `password`, `email`) VALUES
(1, 'first', '123456789', ''),
(2, 'huh', 'd41d8cd98f00b204e9800998ecf8427e', ''),
(3, 'game', '20cf775fa6b5dfe621ade096f5d85d52', ''),
(23, 'gigi', '25f9e794323b453885f5181f1b624d0b', 'puttachai.2546@gmail.com'),
(36, 'hihi', '25f9e794323b453885f5181f1b624d0b', 'asdas123132@gmail.com'),
(38, 'asdas', '25f9e794323b453885f5181f1b624d0b', 'asdasd213465@#'),
(39, 'fitstgame', '25f9e794323b453885f5181f1b624d0b', '43264sa#@'),
(48, 'dfdsf', '202cb962ac59075b964b07152d234b70', 'dsfdsf'),
(49, 'adads', '202cb962ac59075b964b07152d234b70', 'sadasd'),
(50, 'frsit', '202cb962ac59075b964b07152d234b70', 'first@'),
(51, 'nagito', '202cb962ac59075b964b07152d234b70', 'nagito'),
(52, 'sdfsd1', '202cb962ac59075b964b07152d234b70', 'dsfsf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดี', AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
