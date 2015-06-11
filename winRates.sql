-- phpMyAdmin SQL Dump
-- version 3.5.8.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 03, 2015 at 11:01 AM
-- Server version: 5.5.42-37.1-log
-- PHP Version: 5.4.23

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `boostsho_loldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `winRates`
--

DROP TABLE IF EXISTS `winRates`;
CREATE TABLE IF NOT EXISTS `winRates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `championName` varchar(255) DEFAULT NULL,
  `winRates` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `winRates`
--

INSERT INTO `winRates` (`id`, `championName`, `winRates`) VALUES
(1, 'Janna', '53.9%'),
(2, 'Sejuani', '53.8%'),
(3, 'Amumu', '53.7%'),
(4, 'Malzahar', '53.6%'),
(5, 'Heimerdinger', '53.4%'),
(6, 'Ahri', '53.2%'),
(7, 'Ashe', '52.8%'),
(8, 'Wukong', '52.8%'),
(9, 'Katarina', '52.7%'),
(10, 'Swain', '52.6%');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
