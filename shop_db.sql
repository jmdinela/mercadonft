-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: fdb32.awardspace.net
-- Generation Time: Feb 08, 2023 at 04:15 AM
-- Server version: 5.7.20-log
-- PHP Version: 8.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `4111891_mercado`
--
CREATE DATABASE IF NOT EXISTS `4111891_mercado` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `4111891_mercado`;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(10, 5, 'Kawaii#0004', 5, 1, '4.png'),
(11, 5, 'XuWeili#0003', 10, 1, '12.png'),
(13, 5, 'AndreaDelZoppo#1002', 15, 1, '46.png'),
(15, 1, 'XuWeili#0003', 10, 1, '12.png'),
(18, 1, 'Kawaii#0001', 5, 1, '1.png');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(12, 'Kawaii#0001', 5, '1.png'),
(14, 'Kawaii#0002', 5, '2.png'),
(15, 'Kawaii#0003', 5, '3.png'),
(16, 'Kawaii#0004', 5, '4.png'),
(17, 'Kawaii#0005', 5, '6.png'),
(18, 'XuWeili#0001', 10, '10.png'),
(19, 'XuWeili#0002', 10, '11.png'),
(20, 'XuWeili#0003', 10, '12.png'),
(21, 'XuWeili#0004', 10, '16.png'),
(22, 'XuWeili#0005', 10, '22.png'),
(23, 'NilianStudios#1001', 3, '34.png'),
(24, 'NilianStudios#1002', 3, '37.png'),
(25, 'NilianStudios#1003', 3, '33.png'),
(26, 'NilianStudios#1004', 3, '35.png'),
(27, 'NilianStudios#1005', 3, '38.png'),
(28, 'AndreaDelZoppo#1001', 15, '39.png'),
(29, 'AndreaDelZoppo#1002', 15, '46.png'),
(30, 'AndreaDelZoppo#1003', 15, '45.png'),
(31, 'AndreaDelZoppo#1004', 15, '40.png'),
(32, 'AndreaDelZoppo#1005', 15, '44.png'),
(33, 'Anmp#0001', 5, 'anmp-baseketball-lakers-4k-removebg-preview.png'),
(34, 'Anmp#0002', 10, 'anmp-colored-removebg-preview.png'),
(35, 'Anmp#0003', 10, 'anmp-gucci-removebg-preview.png'),
(36, 'Anmp#0004', 5, 'anmp-prisoner-4k-removebg-preview.png'),
(37, 'Anmp#0005', 10, 'anmp-tupac-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'John Moren', 'dinelajohnmoren@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(2, 'John Moren', 'dinela.jm.bsinfotech@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'admin'),
(3, 'Marylyne', 'marlne12vargas@gmail.com', '510df334876eff9522f030cc7c087e95', 'user'),
(4, 'Mary', 'kaliverquez@gmail.com', '510df334876eff9522f030cc7c087e95', 'admin'),
(5, 'Mary', 'vargas.m.bsinfotech@gmail.com', '510df334876eff9522f030cc7c087e95', 'user'),
(6, 'admin', 'juego.n.bsinfotech@gmail.com', 'e00cf25ad42683b3df678c61f42c6bda', 'admin'),
(7, 'nicole', 'juego.n.bsinfotech@gmail.com', 'fc63f87c08d505264caba37514cd0cfd', 'user'),
(8, 'Patrick', 'patrickdinela50@gmail.com', '80907019d73ec95edd0ad23723f2c037', 'user'),
(9, 'Stephen', 'macaslin.sg.bsinfotech@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'user'),
(10, 'macaslin.sg.bsinfotech@gmail.com', 'macaslin.sg.bsinfotech@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
