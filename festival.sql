-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 11:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `festival`
--
CREATE DATABASE IF NOT EXISTS `festival` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `festival`;

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `contactID` int(11) NOT NULL,
  `contactName` varchar(30) NOT NULL,
  `contactCont` varchar(40) NOT NULL,
  `contactDesc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`contactID`, `contactName`, `contactCont`, `contactDesc`) VALUES
(1, 'William Sephton', 'europe', 'I love this website!');

-- --------------------------------------------------------

--
-- Table structure for table `lineup`
--

CREATE TABLE `lineup` (
  `artistID` int(11) NOT NULL,
  `artistName` varchar(30) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `stage` varchar(20) NOT NULL,
  `website` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lineup`
--

INSERT INTO `lineup` (`artistID`, `artistName`, `genre`, `stage`, `website`) VALUES
(1, 'Post Malone', 'Pop', 'Main', 'https://www.postmalone.com'),
(2, 'Machine Gun Kelly', 'Pop Punk', 'Second Stage', 'www.machinegunkelly.com'),
(3, 'Juice WRLD', 'Rap', 'Alt Stage', 'https://www.999club.com');

-- --------------------------------------------------------

--
-- Table structure for table `stages`
--

CREATE TABLE `stages` (
  `stageID` int(11) NOT NULL,
  `stageName` varchar(30) NOT NULL,
  `stageLocation` varchar(30) NOT NULL,
  `stageGenre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stages`
--

INSERT INTO `stages` (`stageID`, `stageName`, `stageLocation`, `stageGenre`) VALUES
(1, 'Main', 'The back', 'Pop Punk'),
(2, 'Second Stage', 'The front', 'Heavy Metal'),
(3, 'Alt Stage', 'The side', 'Rap');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`contactID`);

--
-- Indexes for table `lineup`
--
ALTER TABLE `lineup`
  ADD PRIMARY KEY (`artistID`);

--
-- Indexes for table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`stageID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `contactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lineup`
--
ALTER TABLE `lineup`
  MODIFY `artistID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stages`
--
ALTER TABLE `stages`
  MODIFY `stageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;
