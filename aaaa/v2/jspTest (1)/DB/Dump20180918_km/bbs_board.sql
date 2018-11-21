-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bbs
-- ------------------------------------------------------
-- Server version	5.1.41-community

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `btitle` varchar(30) NOT NULL,
  `bcontent` text NOT NULL,
  `bpass` varchar(20) NOT NULL,
  `bdate` date NOT NULL,
  `budate` date DEFAULT NULL,
  `id` varchar(20) NOT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'제목','내용1','1','2018-01-01','2018-01-01','0'),(5,'55','555','','2018-09-18',NULL,'123'),(7,'11','2222','','2018-09-18',NULL,'123'),(9,'????','????','','2018-09-18',NULL,'123'),(10,'????','????','','2018-09-18',NULL,'123'),(11,'??','??','','2018-09-18',NULL,'123'),(12,'ss','ss','','2018-09-18',NULL,'123'),(13,'aa','??','','2018-09-18',NULL,'123'),(14,'????','????','','2018-09-18',NULL,'123'),(15,'dddd??','??','','2018-09-18',NULL,'123'),(16,'???','???','','2018-09-18',NULL,'123'),(17,'????','????','','2018-09-18',NULL,'123'),(18,'ㅇㅇ','ㅇㅇ','','2018-09-18',NULL,'123'),(19,'ㅋㅋ','ㅋㅋ','','2018-09-18',NULL,'123'),(20,'ㄹㅇㄹㅇ','ㄹㅇㄹㅇㄹ','','2018-09-18',NULL,'123'),(21,'fsdfsda','fsdafasd','','2018-09-18',NULL,'123'),(22,'fsdafsad','fdsfsda','','2018-09-18',NULL,'123'),(23,'fsdafsd','fsdafsda','','2018-09-18',NULL,'123');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-18 10:08:18
