-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2022 at 08:20 AM
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
-- Database: `scd_129`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `username` varchar(15) NOT NULL,
  `phone_num` int(15) NOT NULL,
  `pwd` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email_id`, `username`, `phone_num`, `pwd`) VALUES
(4, 'asdasd', 'as@gmail.com', '', 16516521, ''),
(5, 'asdasd', 'as@gmail.com', '', 2147483647, 'ammar'),
(6, 'Ammar', 'ammarsiddiqui622@gmail.com', '', 2147483647, 'ammar1111'),
(7, 'Ammar', 'ammarsiddiqui622@gmail.com', '', 2147483647, 'ammar4444'),
(8, 'Ammar', 'ammarsiddiqui622@gmail.com', '', 2147483647, '156453'),
(9, 'Ammar', 'ammarsiddiqui622@gmail.com', '', 2147483647, '564d6asd'),
(10, 'Ammar', 'ammarsiddiqui622@gmail.com', '', 2147483647, 'asds'),
(15, 'asdasd', 'ammarsiddiqui622@gmail.com', 'ammar1441', 2147483647, 'asddasdsa'),
(16, 'Ammar', 'ammarsiddiqui622@gmail.com', 'Ammar Siddiqui', 16516521, 'ammar0000'),
(21, 'Ammar', 'ammarsiddiqui622@gmail.com', 'Ammar Siddiqui', 2147483647, '123132132'),
(22, 'asdasd', 'ammarsiddiqui622@gmail.com', 'ammar1441', 16516521, '123456'),
(23, 'Ammar', 'ammarsiddiqui9087@gmail.com', 'ammar1441', 2147483647, '0000');

-- --------------------------------------------------------

--
-- Table structure for table `phase_1`
--

CREATE TABLE `phase_1` (
  `id` int(11) NOT NULL,
  `#` int(111) NOT NULL,
  `Content` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phase_1`
--

INSERT INTO `phase_1` (`id`, `#`, `Content`) VALUES
(3, 3, 'Seed Sale'),
(5, 5, 'Private A & B Sales'),
(6, 6, 'IDO & Token DEX Listing'),
(38, 0, 'Contract Audit'),
(39, 0, 'Staking'),
(40, 0, 'Go-Live MoonStarter: BSC & ETH IDOs');

-- --------------------------------------------------------

--
-- Table structure for table `phase_2`
--

CREATE TABLE `phase_2` (
  `id` int(11) NOT NULL,
  `#` int(11) NOT NULL,
  `Content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phase_2`
--

INSERT INTO `phase_2` (`id`, `#`, `Content`) VALUES
(1, 1, 'Integration of POLYGON'),
(2, 2, 'Integration of AVALANCHE'),
(3, 3, 'Integration of FANTOM'),
(5, 5, 'Integration of POLKADOT (via MOONBEAM)'),
(6, 6, 'Integration of SOLANA'),
(7, 7, 'Integration of CARDANO'),
(8, 8, 'Governance: DAO for MoonStarter Decision');

-- --------------------------------------------------------

--
-- Table structure for table `phase_3`
--

CREATE TABLE `phase_3` (
  `id` int(11) NOT NULL,
  `#` int(11) NOT NULL,
  `Content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phase_3`
--

INSERT INTO `phase_3` (`id`, `#`, `Content`) VALUES
(1, 1, 'Integration of COSMOS'),
(2, 2, 'Integration of TRON'),
(3, 3, 'Integration of community-selected blockchains');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase_1`
--
ALTER TABLE `phase_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase_2`
--
ALTER TABLE `phase_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phase_3`
--
ALTER TABLE `phase_3`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `phase_1`
--
ALTER TABLE `phase_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `phase_2`
--
ALTER TABLE `phase_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `phase_3`
--
ALTER TABLE `phase_3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
