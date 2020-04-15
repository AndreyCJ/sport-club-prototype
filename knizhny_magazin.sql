-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2020 at 03:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `книжный_магазин`
--
CREATE DATABASE IF NOT EXISTS `книжный_магазин` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `книжный_магазин`;

-- --------------------------------------------------------

--
-- Table structure for table `Книги`
--

CREATE TABLE `Книги` (
  `id_книги` int(11) NOT NULL,
  `название_книги` varchar(255) NOT NULL,
  `автор` varchar(255) NOT NULL,
  `год_издания` int(11) NOT NULL,
  `остаток` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Книги`
--

INSERT INTO `Книги` (`id_книги`, `название_книги`, `автор`, `год_издания`, `остаток`) VALUES
(1, 'Теоритический минимум по Computer Science', 'Владстон Фейрерра', 2018, 20),
(2, 'English Grammar in Use', 'Murphy', 2019, 40);

-- --------------------------------------------------------

--
-- Table structure for table `Продажи`
--

CREATE TABLE `Продажи` (
  `id_книги` int(11) NOT NULL,
  `название_книги` varchar(255) NOT NULL,
  `дата_продажи` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Продажи`
--

INSERT INTO `Продажи` (`id_книги`, `название_книги`, `дата_продажи`) VALUES
(1, 'English Grammar in Use', '2020-03-19'),
(2, 'English Grammar in Use', '2020-03-20'),
(3, 'English Grammar in Use', '2020-03-26'),
(4, 'Теоритический минимум по Computer Science', '2020-03-28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Книги`
--
ALTER TABLE `Книги`
  ADD PRIMARY KEY (`id_книги`),
  ADD KEY `название_книги` (`название_книги`);

--
-- Indexes for table `Продажи`
--
ALTER TABLE `Продажи`
  ADD PRIMARY KEY (`id_книги`),
  ADD KEY `название_книги` (`название_книги`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Книги`
--
ALTER TABLE `Книги`
  MODIFY `id_книги` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Продажи`
--
ALTER TABLE `Продажи`
  MODIFY `id_книги` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Продажи`
--
ALTER TABLE `Продажи`
  ADD CONSTRAINT `Продажи_ibfk_1` FOREIGN KEY (`название_книги`) REFERENCES `Книги` (`название_книги`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
