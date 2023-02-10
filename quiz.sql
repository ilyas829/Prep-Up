-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 03, 2019 at 10:15 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `mcq_aptitude`
--

DROP TABLE IF EXISTS `mcq_aptitude`;
CREATE TABLE IF NOT EXISTS `mcq_aptitude` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT 'category of question related to the domain',
  `question` varchar(700) NOT NULL,
  `option1` varchar(90) NOT NULL,
  `option2` varchar(90) NOT NULL,
  `option3` varchar(90) NOT NULL,
  `option4` varchar(90) NOT NULL,
  `correct_option` varchar(20) NOT NULL,
  `explanation` varchar(2000) NOT NULL COMMENT 'explanation about the question.',
  PRIMARY KEY (`sr`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_computer`
--

DROP TABLE IF EXISTS `mcq_computer`;
CREATE TABLE IF NOT EXISTS `mcq_computer` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT 'category of question related to the domain',
  `question` varchar(700) NOT NULL,
  `option1` varchar(90) NOT NULL,
  `option2` varchar(90) NOT NULL,
  `option3` varchar(90) NOT NULL,
  `option4` varchar(90) NOT NULL,
  `correct_option` varchar(20) NOT NULL,
  `explanation` varchar(2000) NOT NULL COMMENT 'explanation about the question.',
  PRIMARY KEY (`sr`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_english`
--

DROP TABLE IF EXISTS `mcq_english`;
CREATE TABLE IF NOT EXISTS `mcq_english` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT 'category of question related to the domain',
  `question` varchar(700) NOT NULL,
  `option1` varchar(90) NOT NULL,
  `option2` varchar(90) NOT NULL,
  `option3` varchar(90) NOT NULL,
  `option4` varchar(90) NOT NULL,
  `correct_option` varchar(20) NOT NULL,
  `explanation` varchar(2000) NOT NULL COMMENT 'explanation about the question.',
  PRIMARY KEY (`sr`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_gk`
--

DROP TABLE IF EXISTS `mcq_gk`;
CREATE TABLE IF NOT EXISTS `mcq_gk` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT 'category of question related to the domain',
  `question` varchar(700) NOT NULL,
  `option1` varchar(90) NOT NULL,
  `option2` varchar(90) NOT NULL,
  `option3` varchar(90) NOT NULL,
  `option4` varchar(90) NOT NULL,
  `correct_option` varchar(20) NOT NULL,
  `explanation` varchar(2000) NOT NULL COMMENT 'explanation about the question.',
  PRIMARY KEY (`sr`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mcq_gk`
--

INSERT INTO `mcq_gk` (`sr`, `category`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_option`, `explanation`) VALUES
(1, 'history', 'when india got independence?', '14 jan ', '15 aug', '5 feb', '26 jan', 'option2', '');

-- --------------------------------------------------------

--
-- Table structure for table `mcq_mix`
--

DROP TABLE IF EXISTS `mcq_mix`;
CREATE TABLE IF NOT EXISTS `mcq_mix` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT 'category of question related to the domain',
  `question` varchar(700) NOT NULL,
  `option1` varchar(90) NOT NULL,
  `option2` varchar(90) NOT NULL,
  `option3` varchar(90) NOT NULL,
  `option4` varchar(90) NOT NULL,
  `correct_option` varchar(20) NOT NULL,
  `explanation` varchar(2000) NOT NULL COMMENT 'explanation about the question.',
  PRIMARY KEY (`sr`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_reasoning`
--

DROP TABLE IF EXISTS `mcq_reasoning`;
CREATE TABLE IF NOT EXISTS `mcq_reasoning` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(30) NOT NULL COMMENT 'category of question related to the domain',
  `question` varchar(700) NOT NULL,
  `option1` varchar(90) NOT NULL,
  `option2` varchar(90) NOT NULL,
  `option3` varchar(90) NOT NULL,
  `option4` varchar(90) NOT NULL,
  `correct_option` varchar(20) NOT NULL,
  `explanation` varchar(2000) NOT NULL COMMENT 'explanation about the question.',
  PRIMARY KEY (`sr`),
  UNIQUE KEY `question` (`question`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saved_tests`
--

DROP TABLE IF EXISTS `saved_tests`;
CREATE TABLE IF NOT EXISTS `saved_tests` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saved_tests`
--

INSERT INTO `saved_tests` (`sr`, `username`, `subject`, `category`, `time`) VALUES
(20, 'manjit@gmail.com', 'mix', 'level1', '2019-08-12 12:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `test_record`
--

DROP TABLE IF EXISTS `test_record`;
CREATE TABLE IF NOT EXISTS `test_record` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `test_given` int(11) NOT NULL DEFAULT '0',
  `last_test_score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_record`
--

INSERT INTO `test_record` (`sr`, `username`, `test_given`, `last_test_score`) VALUES
(8, 'manjit@gmail.com', 0, 0),
(9, 'vivant@gmail.com', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `sr` int(11) NOT NULL AUTO_INCREMENT COMMENT 'serial number',
  `name` varchar(40) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`sr`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sr`, `name`, `gender`, `mobile`, `email`, `password`) VALUES
(37, 'test', 'M', '7878787878', 'test@test.com', 'test'),
(38, 'manpreet singh', 'M', '9592343434', 'manjit@gmail.com', 'manjit'),
(39, 'vivant', 'M', '1234567890', 'vivant@gmail.com', 'vivant');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
