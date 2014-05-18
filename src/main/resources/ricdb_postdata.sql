CREATE DATABASE  IF NOT EXISTS `ricdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ricdb`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: ricdb
-- ------------------------------------------------------
-- Server version	5.1.30-community

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
-- Table structure for table `postdata`
--

DROP TABLE IF EXISTS `postdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `postdata` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `skill` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `exp_from` int(2) DEFAULT NULL,
  `exp_to` int(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `postdata`
--

LOCK TABLES `postdata` WRITE;
/*!40000 ALTER TABLE `postdata` DISABLE KEYS */;
INSERT INTO `postdata` VALUES (1,'software','java','Banglore',0,0),(2,'software','java','Banglore',3,5),(3,'Programmer','PLSQL','Hyderabad',5,7),(4,'TeamLeader','Ruby','Banglore',3,7),(5,'TeanLead','Java','Hyderabad',5,8),(6,'Architect','j2ee','Mumbai',8,10),(7,'AsssiatantProgrammer','java','Mumbai',4,5),(8,'Junior Programmer','j2ee','pune',5,9);
/*!40000 ALTER TABLE `postdata` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-05-18  9:50:01
