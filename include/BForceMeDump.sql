-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (x86_64)
--
-- Host: mysql.develdevil.net    Database: bforceme
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `bforceme`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bforceme` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bforceme`;

--
-- Table structure for table `keystore`
--

DROP TABLE IF EXISTS `keystore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keystore` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `secret` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `alias` varchar(16) NOT NULL COMMENT 'Public name for each user',
  `email` varchar(100) NOT NULL COMMENT 'Private info, it''ll never be shared!',
  `privatepass` varchar(4) NOT NULL COMMENT 'Each user has a unique password, to avoid solution sharing',
  `tries` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Each persons tries counter. I feel so curious...',
  `lastkey` varchar(20) DEFAULT NULL COMMENT 'Last key the user tried. Just to know if they are in the proper path...',
  `lasttry` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was the last time the user had any activity? (Just some kind of delay generator)',
  `registeredon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date-time of the registration, to calculate who needed the least time to solve',
  `IP` varchar(16) DEFAULT NULL COMMENT 'Store IP for each request. We don''t store all the attempts, but we want to chek if someone is using multiple accounts...',
  `solvedon` datetime DEFAULT NULL COMMENT 'Will many people solve it? Who will be the first doing so?',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-24  6:09:05