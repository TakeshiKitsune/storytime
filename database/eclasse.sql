-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 06:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eclasse`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `Movie` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Phonenumber` text NOT NULL,
  `Date` date NOT NULL,
  `Time` time(6) NOT NULL,
  `Ordernumber` varchar(255) NOT NULL,
  `Amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Phonenumber` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movie_list`
--

CREATE TABLE `movie_list` (
  `Id` int(11) NOT NULL,
  `img` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Genre` varchar(255) NOT NULL,
  `Duration` varchar(255) NOT NULL,
  `ReleaseDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie_list`
--

INSERT INTO `movie_list` (`Id`, `img`, `Title`, `Genre`, `Duration`, `ReleaseDate`) VALUES
(28, 'Avatar The Way of Water.jpg', 'Avatar The Way of Water', 'Action', '2hours', '2023-09-07'),
(30, 'ANT MAN & WASP QUANTUMANIA.jpg', 'ANT MAN & WASP QUANTUMANIA', 'action', '2hours', '2023-09-29'),
(31, 'Black Adam.jpg', 'Black Adam', 'Action', '2hours', '2023-09-14'),
(32, 'Black Panther Wakanda Forever.jpg', 'Black Panther Wakanda Forever', 'Action', '2hours', '2023-09-12'),
(33, 'GAADI CHILDREN OF THE SUN.jpg', 'GAADI CHILDREN OF THE SUN', 'Action', '2hours', '2023-09-21'),
(34, 'JOHN WICK CHAPTER 4.jpg', 'JOHN WICK CHAPTER 4', 'Action', '2hours', '2023-09-18'),
(35, 'OPERATION FORTUNE RUSE DE GUERRE.jpg', 'OPERATION FORTUNE RUSE DE GUERRE', 'Action', '2hours', '2023-09-23'),
(36, 'SHAZAM FURY OF THE GODS.jpg', 'SHAZAM FURY OF THE GODS', 'Action', '2hours', '2023-09-15'),
(37, 'THE SUPER MARIO BROS. MOVIE.jpg', 'THE SUPER MARIO BROS. MOVIE', 'Action', '2hours', '2023-09-20'),
(38, 'Gajaman.jpeg', 'Gajaman', 'Action', '2hours', '2023-09-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `Email`, `Password`) VALUES
(4, 'admin', 'admin@gmail.com', 'admin123'),
(5, 'detha', 'k.b.ravindusankalpaac@gmail.com', 'admin123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie_list`
--
ALTER TABLE `movie_list`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie_list`
--
ALTER TABLE `movie_list`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
