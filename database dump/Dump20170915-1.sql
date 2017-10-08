CREATE DATABASE  IF NOT EXISTS `ifb299` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ifb299`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: ifb299
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `photo_name` varchar(256) DEFAULT NULL,
  `departments` varchar(256) DEFAULT NULL,
  `industry_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Queensland University of Technology','2 George St, Brisbane City QLD 4000','07 3138 2000','askqut@qut.edu.au','College','qut.jpg','Business, Creative Industries, Education, Health, Law, Science and Engineering',NULL),(2,'University of Queensland','St Lucia QLD 4072','07 3365 1111','help@its.uq.edu.au','College','uq.jpg','Business, Economics & Law, Engineering, Architecture & Information Technology, Health and Behavioural Sciences, Humanities and Social Sciences, Medicine and Science',NULL),(3,'Griffith University','176 Messines Ridge Road Mt Gravatt Qld 4122','07 3735 7111','ithelp@griffith.edu.au','College','griffith.jpg','Arts, Education and Law, Business, Health and Science',NULL),(4,'Brisbane Square Library','Brisbane Square, 266 George St, Brisbane City QLD 4000','07 3403 4166','','Library','Brisbane Square.jpg',NULL,NULL),(5,'State Library of Queensland','Stanley Pl, South Brisbane QLD 4101','07 3840 7666',NULL,'Library','State_Library_Of_Queensland.jpg',NULL,NULL),(6,'Brisbane City Council','13 Waldheim St, Annerley QLD 4103','07 3403 8888','','Industry','Brisbane_City_Council_logo.png',NULL,'Council'),(7,'Tourism Australia','Level 29, 420 George Street, Sydney, NSW, 2000, Australia','02 9360 1111','privacy@tourism.australia.com','Industry','tourism_australia.jpg',NULL,'Tourism'),(8,'Treasury Hotel','130 William St, Brisbane City QLD 4000','07 3306 8888','brtcswitchboard@star.com.au ','Hotel','treasuryhotel_hero.jpg',NULL,NULL),(9,'The Sebel Quay West Brisbane','132 Alice St, Brisbane City QLD 4000','07 3853 6000','H8783@accor.com','Hotel','Sebel Quay.jpg',NULL,NULL),(10,'City Botanic Gardens','Alice St, Brisbane City QLD 4000','07 3403 8888',NULL,'Park','Brisbane-City-botanic-gardens-Botanical-gardens.jpg',NULL,NULL),(11,'Brisbane Botanic Gardens Mt Coot-tha','152 Mount Coot Tha Rd, Mount Coot-Tha QLD 4066','‎07 34032535',NULL,'Park','Brisbane Botanic Gardens Mt Coottha.jpg',NULL,NULL),(12,'Australia Zoo','1638 Steve Irwin Way, Beerwah QLD 4519','07 5436 2000',NULL,'Zoo','australia zoo.JPG',NULL,NULL),(13,'Currumbin Wildlife Sanctuary','28 Tomewin St Currumbin QLD 4223','07 5534 1266','ENQUIRIES@CWS.ORG.AU','Zoo','currumbin-wildlife-sanctuary-logo.jpg',NULL,NULL),(14,'Queensland Museum & Science Centre','Grey St & Melbourne St, South Brisbane QLD 4101','07 3840 7555',NULL,'Museum','brisbane-museum.jpg',NULL,NULL),(15,'MacArthur Museum Brisbane','MacArthur Chambers, 201 Edward St, Brisbane City QLD 4000','07 3211 7052',NULL,'Museum','macarthur-museum-brisbane.jpg',NULL,NULL),(16,'Riverbar & Kitchen','71 Eagle St, Brisbane City QLD 4000','07 3211 9020','mail@riverbarandkitchen.com.au','Restaurant','riverbar.jpg',NULL,NULL),(17,'Funny Funny Korean Restaurant & Pub','85 George St, Brisbane City QLD 4000','07 3211 3431',NULL,'Restaurant','FunnyFunny.jpg',NULL,NULL),(18,'Myer Centre, Brisbane','91 Queen St, Brisbane City QLD 4000','07 3223 6900','Brisbane.MyerCentre@vicinity.com.au','Mall','themyercentre_queenstreetmall.jpg',NULL,NULL),(19,'Queen Street Mall','Queen Street mall, Queen St, Brisbane City QLD 4000','07 3006 6290',NULL,'Mall','Queen_Street_Mall_Brisbane.jpg',NULL,NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `salt` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
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

-- Dump completed on 2017-10-04 15:26:52
