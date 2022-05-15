-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 12:26 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employeeID` int(11) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `empphone` varchar(10) NOT NULL,
  `empaddress` varchar(100) NOT NULL,
  `empemail` varchar(50) NOT NULL,
  `emppassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employeeID`, `empname`, `empphone`, `empaddress`, `empemail`, `emppassword`) VALUES
(1, 'Buwaneka Perera', '0892345789', 'No.67, Kahampitiya Road, Kaburana', 'Buwaneka@yahoo.com', 'buwa1223'),
(2, 'Nirosha Perera', '0928976445', '22/4, Galle Road, Colombo 3', 'nirosha123@gmail.com', 'niro');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `name`, `phone`, `address`, `email`, `password`) VALUES
(4, 'chamoda de silva', '0763475709', ' No.45, Udugama Road, Makuluwa, Galle.', 'chamoda.desilva@aiesec.net', '123'),
(16, 'Tisal Rathnayake', '0781234578', 'No.33, Kandy Road, Malabe', 'Tisal123@yahoo.com', 'tisaaaa'),
(17, 'Adithya Wereharaa', '0719978678', 'No.33, Colombo 3', 'adithya.W@gmail.com', 'adithya'),
(18, 'Rashini Guruge', '0784567990', 'Akmeemana, Galle', 'RashG@yahoo.com', 'rashg'),
(19, 'Naveesha Landewatta', '0764589009', 'No.56,  New Kandy Road, Kadawatha', 'Navee.L@gmail.com', 'naveeL');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employeeID`),
  ADD UNIQUE KEY `empemail` (`empemail`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
