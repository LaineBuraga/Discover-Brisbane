CREATE DATABASE  IF NOT EXISTS `ifb299` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ifb299`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: ifb299
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$6y26O3zsPzZs$cRgrNRTYErEktIaPVUA10V5gcTyJYLU1okolMCnbpS0=','2017-10-17 02:10:54.363917',1,'admin','Susan','Susan','admin@example.com',1,1,'2017-09-19 09:20:32.000000'),(2,'test',NULL,1,'JohnS','John','Smith','js@gmail.com',1,0,'2017-10-23 01:41:32.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `client_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_number` varchar(10) DEFAULT NULL,
  `client_type` enum('Tourist','Student','Business','Admin') NOT NULL,
  PRIMARY KEY (`client_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES ('pbkdf2_sha256$30000$9vFZIePsEpMJ$KIeRNktYBCA9c1yDT2HQn7ufubyqq/7u/dHHt9DnN2Y=','2017-10-24 00:40:59.872232',0,'asd','sam','wells','asd@asd.com',0,1,'2017-10-16 11:00:14.000000',1,'1233456768','Tourist'),('pbkdf2_sha256$30000$6HQb3m8nCj7n$doUjoJ+4qWsPYeCB81pdPqtQ9v3NhhDG3rJakDyOJ9g=','2017-10-24 00:43:07.769957',1,'Susan','','','susan@gmail.com',1,1,'2017-10-22 04:24:48.328597',2,NULL,'Admin'),('pbkdf2_sha256$30000$dyRdynRaGguM$CGmTFeTYxM9U+9Kd7Ji11N9pWHQ4d1lAII3JtObYEfo=','2017-10-24 00:41:54.259009',0,'tesing','Testing','Testing','testing@gmail.com',0,1,'2017-10-23 22:23:18.472967',8,'0123456789','Business'),('pbkdf2_sha256$30000$UDJdgYjkAVLF$Fqt9jQiWi/J5kiqIsFQ+SXOob3ZQuzzYLeA/iWRTPUQ=','2017-10-24 00:42:18.711923',0,'student','student','student','student@gmail.com',0,1,'2017-10-23 23:56:36.965517',9,'0123456789','Student'),('pbkdf2_sha256$30000$9yhKtpPlo0ty$q2/PUFNBUTwtq9EMn8Gp9k662fLwXDcbmKi+FLTMjbA=','2017-10-24 00:30:50.660985',0,'la','Hi','B','laine@hotmail.com',0,1,'2017-10-24 00:30:50.580985',10,'0123456789','Business');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_groups`
--

DROP TABLE IF EXISTS `client_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_groups`
--

LOCK TABLES `client_groups` WRITE;
/*!40000 ALTER TABLE `client_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_user_permissions`
--

DROP TABLE IF EXISTS `client_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_user_permissions`
--

LOCK TABLES `client_user_permissions` WRITE;
/*!40000 ALTER TABLE `client_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-08 04:36:01.026827','1','admin',2,'[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]',3,1),(2,'2017-10-23 01:41:34.656957','2','John Smith',1,'[{\"added\": {}}]',4,2),(3,'2017-10-23 01:42:00.552414','2','John Smith',2,'[{\"changed\": {\"fields\": [\"username\"]}}]',4,2),(5,'2017-10-23 01:43:04.801837','2','John Smith',2,'[]',4,2),(6,'2017-10-23 01:43:27.676611','jess@gmail.com','jess@gmail.com',3,'',3,2),(7,'2017-10-23 01:46:59.867665','20','Test',1,'[{\"added\": {}}]',5,2),(8,'2017-10-23 01:47:31.910611','20','Test',2,'[{\"changed\": {\"fields\": [\"email\"]}}]',5,2),(9,'2017-10-23 01:47:39.531886','20','Test',3,'',5,2),(11,'2017-10-23 04:39:09.395008','1','sam wells',2,'[]',1,2),(13,'2017-10-23 05:24:35.466548','2','John Smith',2,'[{\"changed\": {\"fields\": [\"is_active\"]}}]',4,2),(15,'2017-10-24 00:43:44.652893','2','John Smith',2,'[]',4,2),(16,'2017-10-24 00:44:27.499878','11','Laine Buraga',3,'',1,2),(17,'2017-10-24 00:45:16.333301','5','Andrew ( andrew@gmail.com )',3,'',3,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (2,'auth','group'),(4,'discoverBris','authuser'),(1,'discoverBris','client'),(3,'discoverBris','feedback'),(5,'discoverBris','location');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2017-10-16 10:56:22.495456'),(2,'contenttypes','0002_remove_content_type_name','2017-10-16 10:56:22.684855'),(3,'auth','0001_initial','2017-10-16 10:56:23.208201'),(4,'auth','0002_alter_permission_name_max_length','2017-10-16 10:56:23.313517'),(5,'auth','0003_alter_user_email_max_length','2017-10-16 10:56:23.320560'),(6,'auth','0004_alter_user_username_opts','2017-10-16 10:56:23.328098'),(7,'auth','0005_alter_user_last_login_null','2017-10-16 10:56:23.335117'),(8,'auth','0006_require_contenttypes_0002','2017-10-16 10:56:23.340131'),(9,'auth','0007_alter_validators_add_error_messages','2017-10-16 10:56:23.353165'),(10,'auth','0008_alter_user_username_max_length','2017-10-16 10:56:23.359715');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('815uot8qmi85czu1qv9wte10dgs3j4xz','YmE4NTZiY2Y2OTc0OTg5OTE0OTZjMjlmN2M0ZmNkNTE1ZTM4YzVhMjp7fQ==','2017-10-30 11:00:37.676237'),('954nw0m8ch46o9cwnf1e3phx5a2x551x','YTkwNDU2MDM4MGI2NmI5MjAwZDQwMTgxOGUxODFjYTNiN2ZkYTk0Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIwNDIzN2ZlNGQ2N2M2ODEwMDcwZDM4ODkyN2I0NjkwM2M5NTYwMTYzIn0=','2017-10-30 11:01:39.174575'),('tcf9l0ius45ohe5ovgmmkot19si9e0aa','ZGUwMWQ3YjA2YTg1ZWRkYTEwMjZmOWEyNmRiNDIyY2Q1Nzk2Yzk1Yzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1NjZkYjk1NWViOWU2ZDI5YzI0Njg0NDkwZDc5OGU4NzJlNGUyNzA2In0=','2017-10-17 00:35:03.573510');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `email` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `name` varchar(45) NOT NULL,
  `feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`feedback_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `location` (
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Queensland University of Technology','2 George St, Brisbane City QLD 4000','07 3138 2000','askqut@qut.edu.au','College','qut.jpg','Business, Creative Industries, Education, Health, Law, Science and Engineering',NULL),(2,'University of Queensland','St Lucia QLD 4072','07 3365 1111','help@its.uq.edu.au','College','UQ_Bris.jpg','Business, Economics & Law, Engineering, Architecture & Information Technology, Health and Behavioural Sciences, Humanities and Social Sciences, Medicine and Science',NULL),(3,'Griffith University','176 Messines Ridge Road Mt Gravatt Qld 4122','07 3735 7111','ithelp@griffith.edu.au','College','griffith.jpg','Arts, Education and Law, Business, Health and Science',NULL),(4,'Brisbane Square Library','Brisbane Square, 266 George St, Brisbane City QLD 4000','07 3403 4166','','Library','Brisbane Square.jpg',NULL,NULL),(5,'State Library of Queensland','Stanley Pl, South Brisbane QLD 4101','07 3840 7666',NULL,'Library','State_Library_Of_Queensland.jpg',NULL,NULL),(6,'Brisbane City Council','13 Waldheim St, Annerley QLD 4103','07 3403 8888','','Industry','Brisbane_City_Council_logo.png',NULL,'Council'),(7,'Tourism Australia','Level 29, 420 George Street, Sydney, NSW, 2000, Australia','02 9360 1111','privacy@tourism.australia.com','Industry','tourism_australia.jpg',NULL,'Tourism'),(8,'Treasury Hotel','130 William St, Brisbane City QLD 4000','07 3306 8888','brtcswitchboard@star.com.au ','Hotel','treasuryhotel_hero.jpg',NULL,NULL),(9,'The Sebel Quay West Brisbane','132 Alice St, Brisbane City QLD 4000','07 3853 6000','H8783@accor.com','Hotel','Sebel Quay.jpg',NULL,NULL),(10,'City Botanic Gardens','Alice St, Brisbane City QLD 4000','07 3403 8888',NULL,'Park','Brisbane-City-botanic-gardens-Botanical-gardens.jpg',NULL,NULL),(11,'Brisbane Botanic Gardens Mt Coot-tha','152 Mount Coot Tha Rd, Mount Coot-Tha QLD 4066','‎07 34032535',NULL,'Park','Brisbane Botanic Gardens Mt Coottha.jpg',NULL,NULL),(12,'Australia Zoo','1638 Steve Irwin Way, Beerwah QLD 4519','07 5436 2000',NULL,'Zoo','australia zoo.JPG',NULL,NULL),(13,'Currumbin Wildlife Sanctuary','28 Tomewin St Currumbin QLD 4223','(07) 5534 1266','ENQUIRIES@CWS.ORG.AU','Zoo','currumbin-wildlife-sanctuary-logo.jpg',NULL,NULL),(14,'Queensland Museum & Science Centre','Grey St & Melbourne St, South Brisbane QLD 4101','07 3840 7555',NULL,'Museum','brisbane-museum.jpg',NULL,NULL),(15,'MacArthur Museum Brisbane','MacArthur Chambers, 201 Edward St, Brisbane City QLD 4000','07 3211 7052',NULL,'Museum','macarthur-museum-brisbane.jpg',NULL,NULL),(16,'Riverbar & Kitchen','71 Eagle St, Brisbane City QLD 4000','07 3211 9020','mail@riverbarandkitchen.com.au','Restaurant','riverbar.jpg',NULL,NULL),(17,'Funny Funny Korean Restaurant & Pub','85 George St, Brisbane City QLD 4000','07 3211 3431',NULL,'Restaurant','FunnyFunny.jpg',NULL,NULL),(18,'Myer Centre, Brisbane','91 Queen St, Brisbane City QLD 4000','07 3223 6900','Brisbane.MyerCentre@vicinity.com.au','Mall','themyercentre_queenstreetmall.jpg',NULL,NULL),(19,'Queen Street Mall','Queen Street mall, Queen St, Brisbane City QLD 4000','07 3006 6290',NULL,'Mall','Queen_Street_Mall_Brisbane.jpg',NULL,NULL);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-24 16:34:24
