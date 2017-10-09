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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `destination` varchar(255) DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `ending_time` time DEFAULT NULL,
  `errand` varchar(255) DEFAULT NULL,
  `is_confirmed` bit(1) NOT NULL DEFAULT b'0',
  `purpose` varchar(255) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `starting_time` time DEFAULT NULL,
  `time_of_booking` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_user_id` bigint(20) DEFAULT NULL,
  `vehicle_vehicle_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdxt6l0m3hxp1frtqkkjxd1isj` (`user_user_id`),
  KEY `FKpypo0tfor6scc6h0etk7s4fev` (`vehicle_vehicle_id`),
  CONSTRAINT `FKdxt6l0m3hxp1frtqkkjxd1isj` FOREIGN KEY (`user_user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKpypo0tfor6scc6h0etk7s4fev` FOREIGN KEY (`vehicle_vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,'Lindholmen','2017-09-17','13:00:00','Volvo Cars','','Project briefing','2017-09-20','08:00:00','2017-09-21 11:18:52',1,1),(2,'Torslanda','2017-09-18','13:00:00','Volvo Trucks','','Kickoff meeting','2017-09-17','13:00:00','2017-09-21 11:18:52',3,2),(3,'Göteborg','2017-09-19','13:00:00','WirelessCar','\0','New Contract','2017-09-19','10:30:00','2017-01-01 18:33:00',1,3);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09 10:05:54
