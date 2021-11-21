-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 06:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `post` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `post`) VALUES
(1, 'Sprots', 1),
(2, 'Politicik', 0),
(3, 'Entertainment', 3),
(4, 'Health ', 0),
(5, 'Agriculture', 1),
(6, 'E-commerce', 0),
(7, 'International News', 0);

-- --------------------------------------------------------

--
-- Table structure for table `newwebsite`
--

CREATE TABLE `newwebsite` (
  `id` int(255) NOT NULL,
  `fastname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `usermail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `newwebsite`
--

INSERT INTO `newwebsite` (`id`, `fastname`, `lastname`, `username`, `usermail`, `password`, `role`) VALUES
(1, 'joya ', 'Khan', 'joyar khan', 'joyakhan@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Admin'),
(2, 'Rashid', 'Khan', 'Rashid khan', 'rashid@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Admin'),
(4, 'piya', 'Khan', 'piya khan', 'piya@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Admin'),
(5, 'a', 'a', 'a', 'a@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Normal User'),
(6, 'b', 'b', ' b', 'b@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Normal User'),
(7, 'roni', 'Khan', 'Roni khan ', 'roni@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Normal User'),
(8, 'Nil ', 'pori ', 'nil pori', 'nilpori@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Admin'),
(9, 'mina', 'islam', 'mina islam', 'minaislam@gmail.com', '0937afa17f4dc08f3c0e5dc908158370ce64df86', 'Normal User');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `post_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(53, 'Bangladesh nature beauty', 'Bangladesh has a land of enormous beauty, hundreds of serpentine rivers, crystal clear water lakes surrounded by ever green hills, luxuriant tropical rain forests, beautiful cascades of green tea gardens, world\'s largest mangrove forest preserved as World', 'Entertainment', '16,Nov,2021', 'Admin', 'images (1).jpg'),
(60, 'Bangladesh has a land', 'Bangladesh has a land of enormous beauty, hundreds of serpentine rivers, crystal clear water lakes surrounded by ever green hills, luxuriant tropical rain forests, beautiful cascades of green tea gardens, world\'s largest mangrove forest preserved as World', 'Entertainment', '16,Nov,2021', 'Admin', 'images.jpg'),
(61, 'Bangladesh has a land of enormous beauty', 'Bangladesh has a land of enormous beauty, hundreds of serpentine rivers, crystal clear water lakes surrounded by ever green hills, luxuriant tropical rain forests, beautiful cascades of green tea gardens, world\'s largest mangrove forest preserved as World', 'Entertainment', '16,Nov,2021', 'Admin', 'agricultural-machine-bangladesh-evergreen-green-rever-wallpaper-preview.jpg'),
(62, 'Bangladesh has a land of enormous beauty,', 'Bangladesh has a land of enormous beauty, hundreds of serpentine rivers, crystal clear water lakes surrounded by ever green hills, luxuriant tropical rain forests, beautiful cascades of green tea gardens, world\'s largest mangrove forest preserved as World', 'Agriculture', '16,Nov,2021', 'mina islam', '77ea6d59c910b1fcd4cc3a32f52c5189.jpg'),
(63, 'BD sport', 'Tickets will be sold in ticket selling booth located at Shaheed Suhrawardi Indoor Stadium in Mirpur', 'Sprots', '17,Nov,2021', 'Admin', '3819158.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(255) NOT NULL,
  `website_name` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `footer_dis` varchar(255) NOT NULL,
  `contacts_link` varchar(255) NOT NULL,
  `contacts_link_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `website_name`, `logo`, `footer_dis`, `contacts_link`, `contacts_link_name`) VALUES
(1, 'news web', 'news.jpg', ' Copyright 2019 News | Powered by', 'https://www.facebook.com/profile.php?id=100026716455859', 'Rashid khan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newwebsite`
--
ALTER TABLE `newwebsite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `newwebsite`
--
ALTER TABLE `newwebsite`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
