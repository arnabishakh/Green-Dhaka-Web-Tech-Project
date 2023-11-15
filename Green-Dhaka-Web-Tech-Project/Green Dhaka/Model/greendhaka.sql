-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2023 at 06:29 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greendhaka`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptedgarden`
--

CREATE TABLE `acceptedgarden` (
  `email` varchar(100) NOT NULL,
  `rArea` int(100) NOT NULL,
  `gArea` int(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `tin` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acceptedgarden`
--

INSERT INTO `acceptedgarden` (`email`, `rArea`, `gArea`, `loc`, `tin`) VALUES
('tawki@gmail.com', 7000, 3900, 'Bashundhara', 541232453);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`email`, `pass`, `phone`) VALUES
('admin@gmail.com', 'admin', '01754649180'),
('nadim@gmail.com', 'Na!1', '01987654321'),
('arnab@gmail.com', 'nN1@', '01234567890');

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `email` varchar(100) NOT NULL,
  `donation` varchar(100) NOT NULL,
  `address` varchar(2000) NOT NULL,
  `area` varchar(50) NOT NULL,
  `zip` int(10) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`email`, `donation`, `address`, `area`, `zip`, `date`, `description`) VALUES
('bishakh99@gmail.com', 'MONEY', '7a, Dhanmondi\r\n', 'Dhanmondi', 1209, '2023-11-22', 'I want to give some money\r\n                                '),
('bishakh99@gmail.com', 'FOOD', '7a, Dhanmondi\r\n', 'Dhanmondi', 1209, '2023-11-22', 'I want to give some food\r\n                                '),
('bishakh99@gmail.com', 'CLOTHES', '7a, Dhanmondi\r\n', 'Dhanmondi', 1209, '2023-11-22', 'I want to give some clothes\r\n                                '),
('bishakh99@gmail.com', 'FOOD', '10/24,Tajmahal Road', 'Mohammadpur', 1207, '2023-11-20', 'Tasty Food for poor'),
('abc@gmail.com', 'CLOTHES', 'kuratoli', 'Khilkhet', 1229, '2023-11-23', 'clolthes dibo!');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `email` varchar(200) NOT NULL,
  `feedback` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`email`, `feedback`) VALUES
('bishakh99@gmail.com', 'Improve please'),
('bishakh99@gmail.com', 'Please bring eshop'),
('bishakh99@gmail.com', 'News Feed Needed'),
('nadim@gmail.com', 'Website tar layout arektu valo dorkar');

-- --------------------------------------------------------

--
-- Table structure for table `garden`
--

CREATE TABLE `garden` (
  `email` varchar(100) NOT NULL,
  `rArea` int(20) NOT NULL,
  `gArea` int(20) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `tin` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `garden`
--

INSERT INTO `garden` (`email`, `rArea`, `gArea`, `loc`, `tin`) VALUES
('apurbo@gmail.com', 7000, 1000, 'MS', 1111111),
('bishakh99@gmail.com', 5000, 2222, 'asf', 13);

-- --------------------------------------------------------

--
-- Table structure for table `gardener`
--

CREATE TABLE `gardener` (
  `email` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `loc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gardener`
--

INSERT INTO `gardener` (`email`, `date`, `time`, `loc`) VALUES
('bishakh99@gmail.com', '2023-11-15', '17:09:00', 'banani'),
('apurbo@gmail.com', '2023-11-17', '16:11:00', 'kuril'),
('abc@gmail.com', '2023-11-06', '15:11:00', 'Bashundhara');

-- --------------------------------------------------------

--
-- Table structure for table `solar`
--

CREATE TABLE `solar` (
  `email` varchar(100) NOT NULL,
  `rArea` int(100) NOT NULL,
  `sArea` int(100) NOT NULL,
  `loc` varchar(100) NOT NULL,
  `tin` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `solar`
--

INSERT INTO `solar` (`email`, `rArea`, `sArea`, `loc`, `tin`) VALUES
('bishakh99@gmail.com', 20, 10, 'hdfg', 2435),
('bishakh99@gmail.com', 30, 10, 'hdfg', 2435),
('abc@gmail.com', 100, 30, 'Bashundhara', 41234);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `email` varchar(100) NOT NULL,
  `name1` varchar(100) NOT NULL,
  `name2` varchar(100) NOT NULL,
  `cnum` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `pass` varchar(20) NOT NULL,
  `cpass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `name1`, `name2`, `cnum`, `dob`, `pass`, `cpass`) VALUES
('bishakh99@gmail.com', 'Arnab', 'Bishakh', '01843075460', '2023-11-10', 'a@a1', ''),
('nadim@gmail.com', 'Nadim', 'Hossain', '11111111111', '2023-11-16', 'a@a1', ''),
('tawki@gmail.com', 'Ishrakul ', 'Tahmid', '00000000000', '2023-11-02', 'p@p1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `garden`
--
ALTER TABLE `garden`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
