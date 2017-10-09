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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_approved` bit(1) DEFAULT b'0',
  `password` varchar(255) DEFAULT NULL,
  `total_bookings_year` int(11) DEFAULT NULL,
  `total_distance_year` double DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_image` tinyblob,
  `is_bookable` bit(1) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'','pass',1,200,'luh',NULL,'\0'),(2,'','1234',0,0,'ngn',NULL,'\0'),(3,'','word',2,200,'mgs',NULL,'\0'),(4,'','sigma',4,200,'rtg',NULL,'\0'),(6,'\0','grece',0,0,'jem',NULL,'\0'),(7,'\0','user',0,0,'jgh',NULL,'\0'),(8,'','mao',NULL,NULL,'mao',NULL,'\0'),(9,'','jji',NULL,NULL,'jji',NULL,'\0'),(10,'','jek',NULL,NULL,'jek',NULL,'\0'),(11,'','jee',NULL,NULL,'jee',NULL,'\0'),(12,'','vma',NULL,NULL,'vma',NULL,'\0'),(13,'','jmg',NULL,NULL,'jmg',NULL,'\0'),(14,'','bon',NULL,NULL,'bon',NULL,'\0'),(15,'\0','kao',NULL,NULL,'kao',NULL,'\0'),(16,'\0','lyk',NULL,NULL,'jyk',NULL,'\0'),(17,'\0','alz',NULL,NULL,'alz',NULL,'\0'),(18,'','msi',NULL,NULL,'msi',NULL,'\0'),(19,'','dsh',NULL,NULL,'dsh',NULL,'\0'),(20,'','csk',NULL,NULL,'csk',NULL,'\0'),(21,'','bte',NULL,NULL,'bte',NULL,'\0'),(22,'','jtm',NULL,NULL,'jtm',NULL,'\0'),(23,'','dty',NULL,NULL,'dty',NULL,'\0'),(24,'','hwn',NULL,NULL,'hwn',NULL,'\0'),(25,'','mje',NULL,NULL,'mje',NULL,'\0');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-09 10:05:02
