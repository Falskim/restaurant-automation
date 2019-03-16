-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2019 at 05:29 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restaurant`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `name`) VALUES
(10001, 'Fawwaz Syiham M');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `id_drink` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`id_drink`, `name`, `price`) VALUES
(201, 'Es Jeruk', 8000),
(202, 'Kopi', 5000),
(203, 'Jus Alpukat', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id_food` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id_food`, `name`, `price`) VALUES
(101, 'Ayam Geprek', 15000),
(102, 'Nasi Goreng', 10000),
(103, 'Ikan Bakar', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `order_drink_detail`
--

CREATE TABLE `order_drink_detail` (
  `id_detail` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `drink` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_food_detail`
--

CREATE TABLE `order_food_detail` (
  `id_detail` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `food` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id_drink`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id_food`);

--
-- Indexes for table `order_drink_detail`
--
ALTER TABLE `order_drink_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `customer` (`customer`),
  ADD KEY `drink` (`drink`);

--
-- Indexes for table `order_food_detail`
--
ALTER TABLE `order_food_detail`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `customer` (`customer`),
  ADD KEY `food` (`food`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10002;

--
-- AUTO_INCREMENT for table `drink`
--
ALTER TABLE `drink`
  MODIFY `id_drink` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id_food` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `order_drink_detail`
--
ALTER TABLE `order_drink_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_food_detail`
--
ALTER TABLE `order_food_detail`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_drink_detail`
--
ALTER TABLE `order_drink_detail`
  ADD CONSTRAINT `order_drink_detail_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `order_drink_detail_ibfk_2` FOREIGN KEY (`drink`) REFERENCES `drink` (`id_drink`);

--
-- Constraints for table `order_food_detail`
--
ALTER TABLE `order_food_detail`
  ADD CONSTRAINT `order_food_detail_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `order_food_detail_ibfk_2` FOREIGN KEY (`food`) REFERENCES `food` (`id_food`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
