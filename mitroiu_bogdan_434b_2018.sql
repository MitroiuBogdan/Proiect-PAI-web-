CREATE DATABASE  IF NOT EXISTS `mitroiu_bogdan_434b_2018` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mitroiu_bogdan_434b_2018`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mitroiu_bogdan_434b_2018
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `locatiefabrica`
--

DROP TABLE IF EXISTS `locatiefabrica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locatiefabrica` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locatie` varchar(50) DEFAULT NULL,
  `locatie_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `locatie_id` (`locatie_id`),
  CONSTRAINT `locatiefabrica_ibfk_1` FOREIGN KEY (`locatie_id`) REFERENCES `producatori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locatiefabrica`
--

LOCK TABLES `locatiefabrica` WRITE;
/*!40000 ALTER TABLE `locatiefabrica` DISABLE KEYS */;
INSERT INTO `locatiefabrica` VALUES (1,'Italy',1),(2,'France',1),(3,'Poland',1),(4,'Belgium',2),(5,'Germany',2),(6,'Denmark',2),(7,'Malta',3),(8,'UK',3),(9,'Slovakia',3),(10,'Germany',4),(11,'Spain',4),(12,'Sweden',4),(13,'Romania',5),(14,'France',5),(15,'Greece',5),(16,'Ireland',6),(17,'Hungary',6),(18,'Croatia',6),(19,'Cyprus',7),(20,'Latvia',7),(21,'Austria',7),(22,'Finland',8),(23,'Germany',8),(24,'Italy',8),(25,'Japain',9),(26,'Denmark',9),(27,'Netherlands',9),(28,'Austria',9),(30,'Lituania',2),(35,'Belarus',3);
/*!40000 ALTER TABLE `locatiefabrica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `masini`
--

DROP TABLE IF EXISTS `masini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masini` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) DEFAULT NULL,
  `masina_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `masina_id` (`masina_id`),
  CONSTRAINT `masini_ibfk_1` FOREIGN KEY (`masina_id`) REFERENCES `producatori` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `masini`
--

LOCK TABLES `masini` WRITE;
/*!40000 ALTER TABLE `masini` DISABLE KEYS */;
INSERT INTO `masini` VALUES (1,'MiTo',1),(2,'Giulietta',1),(3,'4C',1),(4,'147',1),(5,'A3 Sedan 1.6',2),(6,'A4 2.0 TDI Quattro S-Tronic',2),(7,'Q3 1.4 TFSI S-Tronic',2),(9,'1 Serisi 120i',3),(10,'2 Serisi 216d Gran Tourer',3),(11,'4 Serisi 428i xDrive Coupe',3),(12,'5 Serisi 535d xDrive Otomatik',3),(13,'Cruze 1.4 T LTZ',4),(14,'Cruze HB 1.6 Sport Plus Otomatik',4),(15,'Lacetti 1.6 SX',4),(16,'Rezzo 1.6 SX Comfort Special Edition',4),(17,'C3',5),(18,'Nemo',5),(19,'Berlingo',5),(20,'Xsara',5),(21,'Duster',6),(22,'Sandero',6),(23,'Logan MCV',6),(24,'Dokker',6),(25,'Focus',7),(26,'Mondeo',7),(27,'B-Max',7),(28,'Mustang',7),(29,'911',8),(30,'Cayanne',8),(31,'Cayman',8),(32,'Panamera',8),(33,'Boxster',8),(34,'Qashqai',9),(35,'X-Trail',9),(36,'200 SX',9),(37,'Pathfinder',9);
/*!40000 ALTER TABLE `masini` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producatori`
--

DROP TABLE IF EXISTS `producatori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producatori` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nume` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producatori`
--

LOCK TABLES `producatori` WRITE;
/*!40000 ALTER TABLE `producatori` DISABLE KEYS */;
INSERT INTO `producatori` VALUES (1,'Alfa Romeo'),(2,'Audi'),(3,'BMW'),(4,'Chevrolet'),(5,'Citroen'),(6,'Dacia'),(7,'Ford'),(8,'Porsche'),(9,'Nissan'),(14,'test');
/*!40000 ALTER TABLE `producatori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-28 16:21:26
