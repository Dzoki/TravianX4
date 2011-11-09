-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2011 at 04:47 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `travian`
--

-- --------------------------------------------------------

--
-- Table structure for table `s1_users`
--

CREATE TABLE IF NOT EXISTS `s1_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` text NOT NULL,
  `tribe` tinyint(1) unsigned NOT NULL,
  `access` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gold` int(9) unsigned NOT NULL DEFAULT '0',
  `silver` int(9) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `location` text NOT NULL,
  `profile_desc1` text NOT NULL,
  `profile_desc2` text NOT NULL,
  `plus_account` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_wood` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_clay` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_iron` int(10) unsigned NOT NULL DEFAULT '0',
  `plus_crop` int(10) unsigned NOT NULL DEFAULT '0',
  `sitter1` int(10) unsigned NOT NULL DEFAULT '0',
  `sitter2` int(10) unsigned NOT NULL DEFAULT '0',
  `alliance_id` int(10) unsigned NOT NULL DEFAULT '0',
  `sessid` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `att_points_all` int(10) unsigned NOT NULL DEFAULT '0',
  `att_points` int(10) unsigned NOT NULL DEFAULT '0',
  `def_points_all` int(10) unsigned NOT NULL DEFAULT '0',
  `def_points` int(10) unsigned NOT NULL DEFAULT '0',
  `beginners_protection` int(10) unsigned NOT NULL,
  `taskmaster` tinyint(2) NOT NULL,
  `culture_points` int(10) unsigned NOT NULL DEFAULT '1',
  `lastupdate` int(11) unsigned NOT NULL,
  `robbed_resources` int(255) NOT NULL DEFAULT '0',
  `climbers` bigint(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
