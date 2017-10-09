-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: sigma
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle` (
  `vehicle_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reg` varchar(40) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `mileage` decimal(11,0) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `equipment` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `fuel` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `responsible` varchar(255) DEFAULT NULL,
  `vehicleImage` tinyblob,
  `vehicle_image` tinyblob,
  `is_avaliable` bit(1) DEFAULT NULL,
  `vehicle_image_link` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'LFC860',NULL,0,'Station wagon','GPS-tracked','Volvo V60 DRIVe','Diesel','Gbg','Christian Björkman',NULL,NULL,NULL,'/csa/src/main/resources/images/vehicle/LFC860.jpeg'),(2,'ERF209',NULL,0,'Cabriolet','GPS-tracker','Volvo V60','Diesel','Vxö','Daniel Björkman',NULL,NULL,NULL,NULL),(3,'NEX816',NULL,0,'Station wagon','GPS-tracked','Volvo V60 DRIVe','Diesel','Södt','Rickard Gustafsson',NULL,NULL,NULL,NULL),(4,'GAR991',2015,50000,'SportCombi','Dragkrok','Saab 9-5 Bio Power','Etanol E85','Kstd','John Doe',NULL,NULL,NULL,NULL),(5,'MYJ078',NULL,NULL,'Station wagon','GPS-tracked','Volvo V60 DRIVe','Diesel','Sthm','Patrik Almström',NULL,NULL,NULL,NULL),(6,'XHB808',2014,520000,'Station wagon','GPS-tracked','Volvo V80','Gas','Gbg','EH',NULL,NULL,'\0',NULL);
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09 10:05:30
