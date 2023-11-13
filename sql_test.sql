-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)
--
-- Host: localhost    Database: sql_test
-- ------------------------------------------------------
-- Server version	5.7.42-0ubuntu0.18.04.1

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
-- Table structure for table `inspection_parcel`
--

DROP TABLE IF EXISTS `inspection_parcel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspection_parcel` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `inspection_id` bigint(11) unsigned NOT NULL,
  `parcel_id` bigint(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspection_parcel`
--

LOCK TABLES `inspection_parcel` WRITE;
/*!40000 ALTER TABLE `inspection_parcel` DISABLE KEYS */;
INSERT INTO `inspection_parcel` VALUES (1,1,4),(2,2,20),(3,2,19),(4,3,4),(5,3,14),(6,4,19),(7,5,4),(8,6,4),(9,6,14),(10,7,1),(11,7,14),(12,8,7),(13,8,19),(14,9,4),(15,9,5),(16,9,16),(17,9,17),(18,10,17),(19,11,16),(20,12,16),(21,13,4),(22,14,1),(23,15,19),(24,16,7),(25,17,5),(26,18,15),(27,19,4),(28,19,14),(29,20,8),(30,21,1),(31,22,7),(32,23,6),(33,24,9),(34,25,7),(35,26,8),(36,27,5),(37,27,8),(38,28,2),(39,29,7),(40,30,11),(41,31,16),(42,32,11),(43,33,4),(44,34,9),(45,36,4),(46,37,7),(47,38,8),(48,39,5),(49,40,1),(50,40,7),(51,1,11);
/*!40000 ALTER TABLE `inspection_parcel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspections`
--

DROP TABLE IF EXISTS `inspections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspections` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `inspector` bigint(11) unsigned DEFAULT NULL,
  `cost_per_parcel` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspections`
--

LOCK TABLES `inspections` WRITE;
/*!40000 ALTER TABLE `inspections` DISABLE KEYS */;
INSERT INTO `inspections` VALUES (1,'2023-11-13',1,500.00),(2,'2021-05-15',3,1100.00),(3,'2021-10-19',4,1200.00),(4,'2021-11-14',2,100.00),(5,'2021-12-03',10,600.00),(6,'2022-03-09',5,1200.00),(7,'2022-04-30',9,800.00),(8,'2022-06-07',8,500.00),(9,'2022-08-02',2,1100.00),(10,'2022-09-01',4,1600.00),(11,'2023-01-03',9,2000.00),(12,'2023-01-06',5,1300.00),(13,'2023-01-13',7,1300.00),(14,'2023-02-04',1,1900.00),(15,'2023-02-18',7,700.00),(16,'2023-02-22',7,100.00),(17,'2023-03-10',8,300.00),(18,'2023-03-18',3,900.00),(19,'2023-03-27',9,600.00),(20,'2023-04-09',5,1700.00),(21,'2023-04-11',4,600.00),(22,'2023-04-27',2,1500.00),(23,'2023-05-05',9,1200.00),(24,'2023-05-19',10,200.00),(25,'2023-05-24',2,800.00),(26,'2023-06-08',2,400.00),(27,'2023-06-11',3,1200.00),(28,'2023-06-25',4,1100.00),(29,'2023-07-08',7,100.00),(30,'2023-07-21',9,1300.00),(31,'2023-08-13',7,600.00),(32,'2023-08-17',1,2000.00),(33,'2023-09-05',8,900.00),(34,'2023-09-29',0,1700.00),(35,'2023-10-02',10,2000.00),(36,'2023-10-16',9,500.00),(37,'2023-11-01',0,1900.00),(38,'2023-11-14',9,300.00),(39,'2023-12-22',5,800.00),(40,'2023-12-30',4,1500.00);
/*!40000 ALTER TABLE `inspections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inspectors`
--

DROP TABLE IF EXISTS `inspectors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inspectors` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `phone` char(14) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inspectors`
--

LOCK TABLES `inspectors` WRITE;
/*!40000 ALTER TABLE `inspectors` DISABLE KEYS */;
INSERT INTO `inspectors` VALUES (1,'Emma Johnson','(216) 555-1234'),(2,'Michael Anderson','(330) 555-5678'),(3,'Sophia Martinez','(440) 555-7890'),(4,'William Davis','(234) 555-2345'),(5,'Olivia White','(216) 555-9876'),(6,'James Thompson','(330) 555-3456'),(7,'Isabella Harris','(440) 555-8765'),(8,'Benjamin Wilson','(234) 555-6789'),(9,'Mia Brown','(216) 555-4321'),(10,'Daniel Clark','(330) 555-8769');
/*!40000 ALTER TABLE `inspectors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parcels`
--

DROP TABLE IF EXISTS `parcels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parcels` (
  `id` bigint(11) unsigned NOT NULL AUTO_INCREMENT,
  `ppn` char(12) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parcels`
--

LOCK TABLES `parcels` WRITE;
/*!40000 ALTER TABLE `parcels` DISABLE KEYS */;
INSERT INTO `parcels` VALUES (1,'782-07-024','19121 Raymond St Maple Heights, OH'),(2,'646-23-040','1470 E 196th St Euclid, OH'),(3,'008-06-035','3134 W 18 St Cleveland, OH'),(4,'812-25-007','271 W Grace St Bedford, OH'),(5,'671-04-049','1576 E 133rd St East Cleveland, OH'),(6,'672-23-062','1891 Knowles St East Cleveland, OH'),(7,'011-13-080','4408 Buechner Ave Cleveland, OH'),(8,'672-15-132','1839 Farmington Rd East Cleveland, OH'),(9,'671-10-168','14221 Strathmore Ave East Cleveland, OH'),(10,'671-12-141','13908 Potomac Ave East Cleveland, OH'),(11,'812-12-027','64 Center Rd Bedford, OH'),(12,'127-24-027','10213 Union Ave Cleveland, OH'),(13,'672-07-110','1767 Elberon Ave East Cleveland, OH'),(14,'672-25-048','1883 Rosemont Rd East Cleveland, OH'),(15,'671-04-041','1548 E 133rd St East Cleveland, OH'),(16,'671-10-113','14213 Orinoco Ave East Cleveland, OH'),(17,'762-01-009','18104 Garden Blvd Warrensville Heights, OH'),(18,'687-09-009','3314 Tullamore Cleveland Heights, OH'),(19,'472-21-083','8699 Lynnhaven Dr Parma Heights, OH'),(20,'672-04-009','1209 E 125th St East Cleveland, OH');
/*!40000 ALTER TABLE `parcels` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-13 10:19:38
