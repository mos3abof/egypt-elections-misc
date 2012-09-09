-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 09, 2012 at 03:31 PM
-- Server version: 5.5.24
-- PHP Version: 5.3.10-1ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `electionswidget`
--

-- --------------------------------------------------------

--
-- Table structure for table `central_stations`
--

CREATE TABLE IF NOT EXISTS `central_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `governorate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_central_stations_governorates` (`governorate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=353 ;

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE IF NOT EXISTS `governorates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

-- --------------------------------------------------------

--
-- Table structure for table `polling_stations`
--

CREATE TABLE IF NOT EXISTS `polling_stations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `registered_voters_number` int(11) DEFAULT NULL,
  `central_stations_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_polling_stations_central_stations1` (`central_stations_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9004 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `central_stations`
--
ALTER TABLE `central_stations`
  ADD CONSTRAINT `fk_central_stations_governorates` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `polling_stations`
--
ALTER TABLE `polling_stations`
  ADD CONSTRAINT `fk_polling_stations_central_stations1` FOREIGN KEY (`central_stations_id`) REFERENCES `central_stations` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
