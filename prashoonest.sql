    -- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Mar 21, 2021 at 10:31 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prashoonest`
--

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `user` varchar(50) NOT NULL,
  `friend` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`user`, `friend`) VALUES
('prashoon', 'tejas'),
('prashoon', 'matthi'),
('ishan', 'prashoon'),
('jestin', 'prashoon'),
('kevin', 'prashoon'),
('ishan', 'tejas'),
('ishan', 'matthi'),
('jestin', 'matthi'),
('kevin', 'matthi'),
('tejas', 'matthi'),
('matthi', 'kevin'),
('prashoon', 'kevin'),
('ishan', 'kevin'),
('tejas', 'kevin'),
('tejas', 'ishan'),
('matthi', 'prashoon'),
('tejas', 'prashoon'),
('kevin', 'ishan'),
('matthi', 'ishan'),
('prashoon', 'ishan');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `user` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`user`, `nickname`) VALUES
('tejas', 'tekli'),
('kevin', 'kewdi'),
('ishan', 'ishbeck'),
('prashoon', 'pranshu'),
('matthi', 'matti');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `auth` varchar(50) NOT NULL,
  `recip` varchar(50) NOT NULL,
  `pm` char(1) NOT NULL,
  `time` int(6) NOT NULL,
  `text` varchar(500) NOT NULL,
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`auth`, `recip`, `pm`, `time`, `text`, `id`) VALUES
('prashoon', 'ishan', '1', 1616173032, 'hii ishan', 3),
('prashoon', 'ishan', '1', 1616173866, 'hey ishan', 4),
('prashoon', 'ishan', '0', 1616174445, 'AUR BHAI KAISE', 6),
('prashoon', 'tejas', '0', 1616228609, 'hello public', 7),
('prashoon', 'tejas', '1', 1616228616, 'hii tejas', 8),
('prashoon', 'prashoon', '0', 1616238937, 'vvf', 9),
('prashoon', 'jestin', '0', 1616238959, 'lol', 10),
('prashoon', 'matthi', '1', 1616239075, 'ccc', 11);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `user` varchar(50) NOT NULL,
  `text` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`user`, `text`) VALUES
('prashoon', 'i am prashoon i am a software developerr i am a dancer i am a good boy'),
('ishan', 'i am ishan, i am an international singer, i love to sing.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userss`
--

CREATE TABLE `userss` (
  `user_name` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userss`
--

INSERT INTO `userss` (`user_name`, `pass`) VALUES
('prashoon', 'prash'),
('tejas', 'tekli'),
('matthi', 'matti'),
('kevin', 'kewdi'),
('ishan', 'ishbeck');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
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
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
