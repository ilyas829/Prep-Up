-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2019 at 06:32 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_aptitude`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_computer`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_english`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_gk`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_mix`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

-- --------------------------------------------------------

--
-- Table structure for table `mcq_reasoning`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `saved_tests`
--

CREATE TABLE IF NOT EXISTS `saved_tests` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

-- --------------------------------------------------------

--
-- Table structure for table `test_record`
--

CREATE TABLE IF NOT EXISTS `test_record` (
  `sr` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `test_given` int(11) NOT NULL DEFAULT '0',
  `last_test_score` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sr`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
