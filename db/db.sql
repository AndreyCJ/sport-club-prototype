-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2020 at 11:02 AM
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
-- Database: `спортивный_клуб`
--
CREATE DATABASE IF NOT EXISTS `спортивный_клуб` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `спортивный_клуб`;

-- --------------------------------------------------------

--
-- Table structure for table `посетители`
--

CREATE TABLE `посетители` (
  `id_посетителя` int(11) NOT NULL,
  `ФИО` varchar(255) NOT NULL,
  `возраст` int(11) NOT NULL,
  `пол` varchar(1) NOT NULL,
  `вид спорта` varchar(255) NOT NULL,
  `дата_начала_занятий` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `посетители`
--

INSERT INTO `посетители` (`id_посетителя`, `ФИО`, `возраст`, `пол`, `вид спорта`, `дата_начала_занятий`) VALUES
(1, 'Фёдоров Власий Васильевич', 23, 'м', 'Тяжелая атлетика', '2020-03-24'),
(2, 'Павлов Моисей Антонинович', 37, 'м', 'Легкая атлетика', '2020-03-30'),
(6, 'фывыфв выффы фвыфыв', 12, 'м', 'фвыфыфв', '0000-00-00'),
(8, 'Иванов Василий Петрович', 19, 'м', 'Плаванье', '0000-00-00'),
(9, 'Тест', 228, 'ж', 'Киберспорт', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `работники`
--

CREATE TABLE `работники` (
  `id_работника` int(11) NOT NULL,
  `фио` varchar(255) NOT NULL,
  `возраст` int(11) NOT NULL,
  `пол` varchar(1) NOT NULL,
  `вид_спорта` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `работники`
--

INSERT INTO `работники` (`id_работника`, `фио`, `возраст`, `пол`, `вид_спорта`) VALUES
(1, 'Петрова Элина Сергеевна', 21, 'ж', 'Легкая атлетика'),
(2, 'Суворова Карина Евгеньевна', 46, 'ж', 'Тяжелая атлетика');

-- --------------------------------------------------------

--
-- Table structure for table `тренажеры`
--

CREATE TABLE `тренажеры` (
  `id_тренажера` int(11) NOT NULL,
  `название_тренажера` varchar(255) NOT NULL,
  `вид_спорта` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `тренажеры`
--

INSERT INTO `тренажеры` (`id_тренажера`, `название_тренажера`, `вид_спорта`) VALUES
(1, 'Беговая дорожка', 'Легкая атлетика'),
(2, 'Гантели', 'Тяжелая атлетика');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `посетители`
--
ALTER TABLE `посетители`
  ADD PRIMARY KEY (`id_посетителя`);

--
-- Indexes for table `работники`
--
ALTER TABLE `работники`
  ADD PRIMARY KEY (`id_работника`);

--
-- Indexes for table `тренажеры`
--
ALTER TABLE `тренажеры`
  ADD PRIMARY KEY (`id_тренажера`),
  ADD KEY `вид_спорта` (`вид_спорта`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `посетители`
--
ALTER TABLE `посетители`
  MODIFY `id_посетителя` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `работники`
--
ALTER TABLE `работники`
  MODIFY `id_работника` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `тренажеры`
--
ALTER TABLE `тренажеры`
  MODIFY `id_тренажера` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `тренажеры`
--
ALTER TABLE `тренажеры`
  ADD CONSTRAINT `тренажеры_ibfk_1` FOREIGN KEY (`вид_спорта`) REFERENCES `посетители` (`вид спорта`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
