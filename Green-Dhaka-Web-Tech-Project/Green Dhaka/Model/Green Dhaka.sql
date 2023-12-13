-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 10:58 PM
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
('tawki@gmail.com', 7000, 3900, 'Bashundhara', 541232453),
('bishakh99@gmail.com', 5000, 2222, 'asf', 13);

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
('arnab@gmail.com', 'nN1@', '01234567890'),
('ishrakultahmid@gmail.com', 'Tahmid@123', '01890434372');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `expert_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `expert_id`, `appointment_date`, `request_date`, `status`) VALUES
(1, 1, '2023-12-14', '2023-12-12 23:29:16', 'Pending'),
(18, 3, '2023-12-30', '2023-12-12 23:37:18', 'Pending'),
(19, 1, '2023-12-15', '2023-12-12 23:38:41', 'Pending'),
(20, 1, '2023-12-16', '2023-12-12 23:59:40', 'Pending'),
(21, 3, '2023-12-23', '2023-12-13 04:03:48', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(0, 'Seeds', 100, 'bowl-of-sunflower-seeds-royalty-free-image-1673637175.jpg', 2);

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
-- Table structure for table `experts`
--

CREATE TABLE `experts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `availability` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experts`
--

INSERT INTO `experts` (`id`, `name`, `availability`) VALUES
(1, 'Arnab', 'Monday, Wednesday, Friday'),
(2, 'Tawki', 'Tuesday, Thursday, Saturday'),
(3, 'Nadim', 'Monday, Tuesday, Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `pid` varchar(200) NOT NULL,
  `email` varchar(20) NOT NULL,
  `caption` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`pid`, `email`, `caption`, `image`, `date`) VALUES
('6578cddcd24b0', 'bishakh99@gmail.com', 'This is my garden', '6578cddcd24b0.jpg', '2023-12-12 10:17:16.000000'),
('6578ce1b106e1', 'tawki@gmail.com', 'my rooftop', '6578ce1b106e1.jpg', '2023-12-12 10:18:19.000000'),
('6578ce467f30f', 'tawki@gmail.com', 'Hello', '', '2023-12-12 10:19:02.000000'),
('6578ce58021bc', 'bishakh99@gmail.com', 'hello', '', '2023-12-12 10:19:20.000000');

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
('nadim@gmail.com', 'Website tar layout arektu valo dorkar'),
('bishakh99@gmail.com', 'Please Fix support chatbox');

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
('apurbo@gmail.com', 7000, 1000, 'MS', 1111111);

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
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `username`, `message`, `timestamp`) VALUES
(2, 'bishakh99@gmail.com', 'hello', '2023-12-12 22:10:40'),
(3, 'tawki@gmail.com', 'hi', '2023-12-12 22:11:50'),
(4, 'admin@gmail.com', 'hi', '2023-12-12 22:15:49'),
(5, 'bishakh99@gmail.com', 'hello', '2023-12-13 00:01:00'),
(6, 'admin@gmail.com', 'hello', '2023-12-13 00:01:46'),
(7, 'admin@gmail.com', 'hi', '2023-12-13 00:01:52'),
(8, 'bishakh99@gmail.com', 'I need suggestions', '2023-12-13 04:05:55'),
(9, 'bishakh99@gmail.com', 'hi', '2023-12-13 10:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pin_code` varchar(255) NOT NULL,
  `total_products` varchar(5000) NOT NULL,
  `total_price` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(0, 'Arnab', 1754649180, 'bishakh99@gmail.com', 'bKash', 'House#1/B, Road-7A, Zigatola, Dhanmondi', 'Zigatola', 'Dhaka', 'Dhaka', 'Bangladesh', '1209', 'Seeds (4) ', 400),
(0, 'Arnab', 1754649180, 'bishakh99@gmail.com', 'Credit or Debit card', 'House#1/B, Road-7A, Zigatola, Dhanmondi', 'Zigatola', 'Dhaka', 'Dhaka', 'Bangladesh', '1209', 'Gloves (1) ', 800),
(0, 'Arnab', 1754649180, 'bishakh99@gmail.com', 'Credit or Debit card', 'House#1/B, Road-7A, Zigatola, Dhanmondi', 'Zigatola', 'Dhaka', 'Dhaka', 'Bangladesh', '1209', 'Seeds (12) ', 1),
(0, 'Arnab', 1754649180, 'bishakh99@gmail.com', 'Credit or Debit card', 'House#1/B, Road-7A, Zigatola, Dhanmondi', 'Zigatola', 'Dhaka', 'Dhaka', 'Bangladesh', '1209', 'Gloves (1) ', 800);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Seeds', '100', 'bowl-of-sunflower-seeds-royalty-free-image-1673637175.jpg'),
(2, 'Shavel', '500', 'shavel-website.jpg');

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
('abc@gmail.com', 100, 30, 'Bashundhara', 41234),
('admin@gmail.com', 0, 0, '', 0),
('bishakh99@gmail.com', 0, 0, '', 0);

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
('nadim@gmail.com', 'Nadim', 'Hossain', '11111111111', '2023-11-16', 'a@a1', ''),
('tawki@gmail.com', 'Ishrakul ', 'Tahmid', '00000000000', '2023-11-02', 'p@p1', ''),
('bishakh99@gmail.com', 'arnab', 'arnab1', '01843075468', '2023-12-13', 'a@a1', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expert_id` (`expert_id`);

--
-- Indexes for table `experts`
--
ALTER TABLE `experts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `garden`
--
ALTER TABLE `garden`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `experts`
--
ALTER TABLE `experts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`expert_id`) REFERENCES `experts` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
