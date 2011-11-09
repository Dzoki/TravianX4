/*
SQLyog Enterprise - MySQL GUI v7.02 
MySQL - 5.5.8-log : Database - travx450
*********************************************************************
*/ 
/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `s1_hero` */

CREATE TABLE `s1_hero` (
  `heroid` smallint(2) unsigned NOT NULL AUTO_INCREMENT,
  `uid` smallint(2) unsigned NOT NULL,
  `name` tinytext NOT NULL,
  `wref` mediumint(3) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `points` smallint(2) unsigned NOT NULL,
  `experience` mediumint(3) NOT NULL,
  `dead` tinyint(1) unsigned NOT NULL,
  `health` float(12,9) unsigned NOT NULL,
  `attack` tinyint(1) unsigned NOT NULL,
  `defence` tinyint(1) unsigned NOT NULL,
  `attackbonus` tinyint(1) unsigned NOT NULL,
  `defencebonus` tinyint(1) unsigned NOT NULL,
  `regeneration` tinyint(1) unsigned NOT NULL,
  `autoregen` int(2) NOT NULL,
  `trainingtime` mediumint(3) unsigned NOT NULL,
  `color` varchar(32) DEFAULT 'red',
  `face` int(5) DEFAULT '0',
  `eye` int(5) DEFAULT '1',
  `eyebrow` int(5) DEFAULT '2',
  `nose` int(5) DEFAULT '3',
  `mouth` int(5) DEFAULT '2',
  `ear` int(5) DEFAULT '4',
  `hair` int(5) DEFAULT '2',
  `beard` int(5) DEFAULT '3',
  `left_hand` varchar(32) DEFAULT 'lefthand_none',
  `right_hand` varchar(32) DEFAULT 'righthand_none',
  `chest` varchar(32) DEFAULT 'none',
  `feet` varchar(32) DEFAULT 'none',
  `head` varbinary(32) DEFAULT 'none',
  PRIMARY KEY (`heroid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
