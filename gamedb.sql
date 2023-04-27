-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2023 at 09:53 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `leaderboard`
--

CREATE TABLE `leaderboard` (
  `name` varchar(500) NOT NULL,
  `score` int(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaderboard`
--

INSERT INTO `leaderboard` (`name`, `score`, `Date`) VALUES
('dummy1', 5000, '2023-04-01'),
('dummy2', 2000, '2023-04-04'),
('dummy1', 5000, '2023-04-06'),
('dummy1', 1500, '2023-04-04'),
('tester', 500, '2023-04-07'),
('Hasin', 840, '2023-04-15'),
('Hasin', 850, '2023-04-15'),
('Hasin', 160, '2023-04-15'),
('Hasin', 890, '2023-04-15'),
('Hasin', 440, '2023-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `obstacles`
--

CREATE TABLE `obstacles` (
  `name` varchar(50) NOT NULL,
  `oid` int(2) NOT NULL,
  `directory` varchar(500) NOT NULL,
  `dimensions` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Obstacle details';

--
-- Dumping data for table `obstacles`
--

INSERT INTO `obstacles` (`name`, `oid`, `directory`, `dimensions`) VALUES
('plastic', 1, 'image/objects/bottle.png', '75x250'),
('rottenApple', 2, 'image/objects/eaten_apple.png', '50x50'),
('scrap', 3, 'image/objects/scrap metal.png', '20x20'),
('medium_scrap', 4, 'image/objects/scrap metal.png', '100x100'),
('large_scrap', 5, 'image/objects/scrap metal.png', '250x250');

-- --------------------------------------------------------

--
-- Table structure for table `savedgames`
--

CREATE TABLE `savedgames` (
  `loc` varchar(100) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `savedgames`
--

INSERT INTO `savedgames` (`loc`, `Date`) VALUES
('instances/2023-04-15 16-57-19.txt', '2023-04-15'),
('instances/2023-04-15 21-28-56.txt', '2023-04-15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `obstacles`
--
ALTER TABLE `obstacles`
  ADD UNIQUE KEY `oid` (`oid`);

--
-- Indexes for table `savedgames`
--
ALTER TABLE `savedgames`
  ADD UNIQUE KEY `loc` (`loc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
