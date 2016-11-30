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
  `publicpass` varchar(32) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keystore`
--

LOCK TABLES `keystore` WRITE;
/*!40000 ALTER TABLE `keystore` DISABLE KEYS */;
INSERT INTO `keystore` VALUES (1,'2016-11-24 09:30:00','Integer in blandit nibh posuere.'),(2,'2016-11-24 09:58:39','Vivamus consectetur mattis amet.'),(3,'2016-11-24 10:00:29','Duis commodo non lorem volutpat.'),(4,'2016-11-24 11:54:00','Vestibulum sit amet maximus sed.'),(5,'2016-11-24 12:03:02','Vivamus vitae augue eros nullam.'),(6,'2016-11-24 12:15:47','Integer et sem nec nisi posuere.'),(7,'2016-11-24 12:37:28','Mauris sagittis vitae odio amet.'),(8,'2016-11-24 13:00:03','Aliquam ligula nisl, aliquam id.'),(9,'2016-11-24 14:16:04','Nullam porta sit amet libero id.'),(10,'2016-11-24 15:04:05','Proin nisl massa, ultricies sed.'),(11,'2016-11-24 15:05:14','Vestibulum pellentesque sit sed.'),(12,'2016-11-24 16:00:03','Maecenas commodo lacus a nullam.'),(13,'2016-11-24 17:00:05','Donec elementum purus sed metus.'),(14,'2016-11-24 18:00:03','Cras a metus eu massa cras amet.'),(15,'2016-11-24 19:00:04','Donec congue ut orci sit nullam.'),(16,'2016-11-24 20:00:04','Donec quis sollicitudin mi amet.'),(17,'2016-11-24 21:00:03','Cras euismod aliquam nunc metus.'),(18,'2016-11-24 22:00:02','Integer consectetur turpis duis.'),(19,'2016-11-24 23:00:07','Integer vehicula mattis dui sed.'),(20,'2016-11-25 00:00:04','Fusce volutpat vitae mi sit sed.'),(21,'2016-11-25 01:00:03','Vestibulum in suscipit volutpat.'),(22,'2016-11-25 02:00:02','Sed in maximus turpis, non amet.'),(23,'2016-11-25 03:00:03','Vivamus dui risus, viverra amet.'),(24,'2016-11-25 04:00:02','Aenean est ex, rutrum quis amet.'),(25,'2016-11-25 05:00:03','Nullam semper, ante eu volutpat.'),(26,'2016-11-25 06:00:03','Ut tincidunt pulvinar cras amet.'),(27,'2016-11-25 07:00:03','Pellentesque habitant morbi sed.'),(28,'2016-11-25 08:00:03','Nulla volutpat leo orci aliquam.'),(29,'2016-11-25 09:00:02','Nunc a turpis et eros cras amet.'),(30,'2016-11-25 10:00:03','Donec convallis mauris ex metus.'),(31,'2016-11-25 11:00:02','Cras efficitur sapien cras amet.'),(32,'2016-11-25 12:00:03','Morbi risus lectus, tempor amet.'),(33,'2016-11-25 13:00:03','Maecenas in ultricies dui metus.'),(34,'2016-11-25 14:00:04','Integer laoreet, urna sit metus.'),(35,'2016-11-25 15:00:03','Nunc consectetur rhoncus nullam.'),(36,'2016-11-25 16:00:03','Quisque vestibulum purus nullam.'),(37,'2016-11-25 17:00:02','Pellentesque pretium purus amet.'),(38,'2016-11-25 18:00:02','Morbi egestas, lorem eu posuere.'),(39,'2016-11-25 19:00:03','Suspendisse pretium odio nullam.'),(40,'2016-11-25 20:00:03','Maecenas aliquet porttitor amet.'),(41,'2016-11-25 21:00:03','Vestibulum in pulvinar volutpat.'),(42,'2016-11-25 22:00:02','Aenean dictum efficitur posuere.'),(43,'2016-11-25 23:00:03','Etiam tortor velit, tempus amet.'),(44,'2016-11-26 00:00:03','Pellentesque habitant morbi sed.'),(45,'2016-11-26 01:00:05','Quisque fringilla viverra fusce.'),(46,'2016-11-26 02:00:04','Aenean sed nisi aliquam posuere.'),(47,'2016-11-26 03:00:03','Maecenas fringilla euismod amet.'),(48,'2016-11-26 04:00:03','Aenean aliquet odio at odio sed.'),(49,'2016-11-26 05:00:03','Nam maximus lectus ac cras amet.'),(50,'2016-11-26 06:00:07','Morbi eget mauris viverra fusce.'),(51,'2016-11-26 07:00:02','Integer sollicitudin massa nunc.'),(52,'2016-11-26 08:00:03','Praesent sodales feugiat nullam.'),(53,'2016-11-26 09:00:03','Pellentesque non ex feugiat sed.'),(54,'2016-11-26 10:00:02','Aliquam tincidunt commodo metus.'),(55,'2016-11-26 11:00:03','Duis consectetur tellus ut amet.'),(56,'2016-11-26 12:00:03','Suspendisse cursus metus nullam.'),(57,'2016-11-26 13:00:04','Sed viverra nibh non magna amet.'),(58,'2016-11-26 14:00:02','Sed suscipit a nisi eu volutpat.'),(59,'2016-11-26 15:00:03','Morbi interdum metus nec nullam.'),(60,'2016-11-26 16:00:03','Nullam ornare mollis eros metus.'),(61,'2016-11-26 17:00:03','Nam nibh erat, suscipit nec sed.'),(62,'2016-11-26 18:00:03','Sed consectetur nisl risus amet.'),(63,'2016-11-26 19:00:03','Nunc et dolor quis lorem nullam.'),(64,'2016-11-26 20:00:02','Morbi ac odio rhoncus cras amet.'),(65,'2016-11-26 21:00:02','Nullam ut nisl porta massa nunc.'),(66,'2016-11-26 22:00:03','Vivamus aliquet congue volutpat.'),(67,'2016-11-26 23:00:03','Mauris iaculis lorem massa nunc.'),(68,'2016-11-27 00:00:03','Aliquam pretium lectus sit amet.'),(69,'2016-11-27 01:00:04','Donec ac tempus risus, eget sed.'),(70,'2016-11-27 02:00:03','Duis lacinia enim sit amet amet.'),(71,'2016-11-27 03:00:03','Vivamus id egestas lectus metus.'),(72,'2016-11-27 04:00:03','Maecenas quis enim orci aliquam.'),(73,'2016-11-27 05:00:03','Curabitur scelerisque diam amet.'),(74,'2016-11-27 06:00:03','Cras tincidunt odio diam nullam.'),(75,'2016-11-27 07:00:05','Nunc blandit lacinia massa nunc.'),(76,'2016-11-27 08:00:03','In vitae luctus nibh massa nunc.'),(77,'2016-11-27 09:00:02','Nunc lobortis porttitor posuere.'),(78,'2016-11-27 10:00:03','Suspendisse eget nisi quis amet.'),(79,'2016-11-27 11:00:03','Donec ac vestibulum orci nullam.'),(80,'2016-11-27 12:00:03','Sed non ipsum vitae leo posuere.'),(81,'2016-11-27 13:00:06','Donec rhoncus purus sit posuere.'),(82,'2016-11-27 14:00:03','Ut commodo enim sit amet nullam.'),(83,'2016-11-27 15:00:03','Pellentesque magna velit nullam.'),(84,'2016-11-27 16:00:05','Quisque facilisis felis posuere.'),(85,'2016-11-27 17:00:03','Nullam malesuada iaculis nullam.'),(86,'2016-11-27 18:00:03','Pellentesque consectetur nullam.'),(87,'2016-11-27 19:00:03','Nulla maximus elementum posuere.'),(88,'2016-11-27 20:00:03','Vivamus sagittis congue posuere.'),(89,'2016-11-27 21:00:02','Aliquam cursus accumsan posuere.'),(90,'2016-11-27 22:00:03','Aliquam aliquet, odio cras amet.'),(91,'2016-11-27 23:00:03','Vestibulum volutpat dolor metus.'),(92,'2016-11-28 00:00:03','Morbi iaculis nulla sapien amet.'),(93,'2016-11-28 01:00:03','Suspendisse risus ante volutpat.'),(94,'2016-11-28 02:00:03','Pellentesque ullamcorper nullam.'),(95,'2016-11-28 03:00:02','Mauris interdum leo sed posuere.'),(96,'2016-11-28 04:00:03','Vestibulum feugiat nulla in sed.'),(97,'2016-11-28 05:00:03','Pellentesque habitant morbi sed.'),(98,'2016-11-28 06:00:03','Duis eu risus ullamcorper metus.'),(99,'2016-11-28 07:00:03','Donec orci neque, egestas metus.'),(100,'2016-11-28 08:00:03','Ut fringilla vestibulum posuere.'),(101,'2016-11-28 09:00:07','Interdum et malesuada fames sed.'),(102,'2016-11-28 10:00:03','Aenean feugiat neque a mi metus.'),(103,'2016-11-28 11:00:03','Pellentesque urna nulla posuere.'),(104,'2016-11-28 12:00:03','Etiam quis nunc vitae eros amet.'),(105,'2016-11-28 13:00:02','Nam pretium ante quis nisl amet.'),(106,'2016-11-28 14:00:03','Vestibulum id dui non nulla sed.'),(107,'2016-11-28 15:00:03','Fusce mattis lorem id cras amet.'),(108,'2016-11-28 16:00:03','Donec et magna dui. Proin metus.'),(109,'2016-11-28 17:00:02','Suspendisse at condimentum amet.'),(110,'2016-11-28 18:00:03','Nam sit amet pulvinar odio amet.'),(111,'2016-11-28 19:00:04','Nunc aliquet mi sit amet nullam.'),(112,'2016-11-28 20:00:03','Vivamus vel commodo purus metus.'),(113,'2016-11-28 21:00:02','Vestibulum consectetur mi a sed.'),(114,'2016-11-28 22:00:02','Morbi eros velit, faucibus amet.'),(115,'2016-11-28 23:00:04','Curabitur porttitor augue metus.'),(116,'2016-11-29 00:00:02','Nunc efficitur felis vitae amet.'),(117,'2016-11-29 01:00:03','Aenean sed luctus dolor posuere.'),(118,'2016-11-29 02:00:03','Phasellus non sodales cras amet.'),(119,'2016-11-29 03:00:04','Aliquam posuere elementum metus.'),(120,'2016-11-29 04:00:02','Aliquam in nibh volutpat nullam.'),(121,'2016-11-29 05:00:04','Nulla sed urna gravida quam sed.'),(122,'2016-11-29 06:00:02','Pellentesque habitant morbi sed.'),(123,'2016-11-29 07:00:03','Sed bibendum convallis neque id.'),(124,'2016-11-29 08:00:04','Cras viverra efficitur volutpat.'),(125,'2016-11-29 09:00:03','Aenean molestie orci sed ex sed.'),(126,'2016-11-29 10:00:02','Mauris in maximus massa posuere.'),(127,'2016-11-29 11:00:03','Ut convallis in sem feugiat sed.'),(128,'2016-11-29 12:00:02','Nullam sodales finibus dui amet.'),(129,'2016-11-29 13:00:03','Duis eget odio a nibh porta sed.'),(130,'2016-11-29 14:00:06','Sed volutpat euismod orci metus.'),(131,'2016-11-29 15:00:02','Curabitur felis velit cras amet.'),(132,'2016-11-29 16:00:03','Phasellus aliquet tincidunt sed.'),(133,'2016-11-29 17:00:03','Fusce varius fermentum dui amet.'),(134,'2016-11-29 18:00:03','Quisque eros dui, scelerisque a.'),(135,'2016-11-29 19:00:03','Nullam elementum sed elit metus.'),(136,'2016-11-29 20:00:03','In id porttitor lacus cras amet.'),(137,'2016-11-29 21:00:02','Vivamus viverra non mi eget sed.'),(138,'2016-11-29 22:00:03','Morbi diam eros, consequat amet.'),(139,'2016-11-29 23:00:03','Nam at velit scelerisque nullam.'),(140,'2016-11-30 00:00:02','Sed eget ante ac lectus posuere.'),(141,'2016-11-30 01:00:03','In vulputate nulla a risus amet.'),(142,'2016-11-30 02:00:03','Nunc dignissim scelerisque amet.'),(143,'2016-11-30 03:00:03','Donec nec augue non est posuere.'),(144,'2016-11-30 04:00:03','Morbi aliquam laoreet diam amet.'),(145,'2016-11-30 05:00:03','Praesent eget erat aliquam amet.'),(146,'2016-11-30 06:00:03','Integer scelerisque et arcu sed.'),(147,'2016-11-30 07:00:03','Pellentesque ut quam sit nullam.'),(148,'2016-11-30 08:00:03','Quisque laoreet, est massa nunc.'),(149,'2016-11-30 09:00:02','Aenean id rhoncus est cras amet.'),(150,'2016-11-30 10:00:03','Pellentesque habitant morbi sed.'),(151,'2016-11-30 11:00:03','Aliquam vitae bibendum volutpat.'),(152,'2016-11-30 12:00:03','Maecenas suscipit enim et metus.'),(153,'2016-11-30 13:00:06','Nunc ultrices lacus mollis amet.'),(154,'2016-11-30 14:00:02','Duis nec semper tellus volutpat.'),(155,'2016-11-30 15:00:03','Donec sed metus nec nibh nullam.'),(156,'2016-11-30 16:00:02','Vivamus vehicula iaculis nullam.'),(157,'2016-11-30 17:00:03','Nullam maximus laoreet est amet.');
/*!40000 ALTER TABLE `keystore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `alias` varchar(16) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL COMMENT 'Public name for each user',
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL COMMENT 'Private info, it''ll never be shared!',
  `privatepass` varchar(4) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL COMMENT 'Each user has a unique password, to avoid solution sharing',
  `tries` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'Each persons tries counter. I feel so curious...',
  `lastpass` varchar(20) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL COMMENT 'Last key the user tried. Just to know if they are in the proper path...',
  `lasttry` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'When was the last time the user had any activity? (Just some kind of delay generator)',
  `registeredon` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date-time of the registration, to calculate who needed the least time to solve',
  `IP` varchar(16) CHARACTER SET latin1 COLLATE latin1_spanish_ci DEFAULT NULL COMMENT 'Store IP for each request. We don''t store all the attempts, but we want to chek if someone is using multiple accounts...',
  `solvedon` datetime DEFAULT NULL COMMENT 'Will many people solve it? Who will be the first doing so?',
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('JokinAU','jokinau@gmail.com','1aA-',5,'B2*c','2016-11-29 15:06:00','2016-11-29 14:52:09','62.99.70.156',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-30  9:27:21
