-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: localhost    Database: lms
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book_details`
--

DROP TABLE IF EXISTS `book_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book_details` (
  `bookID` varchar(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `authour` varchar(45) NOT NULL,
  `subClasiID` int(11) NOT NULL,
  `yearOfPublishing` int(11) NOT NULL,
  `lastPrintedYear` int(11) NOT NULL,
  `ISBNno` varchar(45) NOT NULL,
  `NoOfPages` int(11) NOT NULL,
  PRIMARY KEY (`bookID`),
  UNIQUE KEY `bookID_UNIQUE` (`bookID`),
  KEY `SubForeignkey_idx` (`subClasiID`),
  CONSTRAINT `SubForeignkey` FOREIGN KEY (`subClasiID`) REFERENCES `sub_classification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_details`
--

LOCK TABLES `book_details` WRITE;
/*!40000 ALTER TABLE `book_details` DISABLE KEYS */;
INSERT INTO `book_details` VALUES ('B002','C#','Gru',9,1900,1900,'23e',500),('B005','Home Medicien','Jenath',11,1927,1981,'3454790K',5000),('Boo4','Medicine Book','Krish',11,1928,2016,'3435S',4000),('Boo5','Java ee','Yaso',7,1925,2013,'9080M',90);
/*!40000 ALTER TABLE `book_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_classification`
--

DROP TABLE IF EXISTS `main_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `main_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_classification`
--

LOCK TABLES `main_classification` WRITE;
/*!40000 ALTER TABLE `main_classification` DISABLE KEYS */;
INSERT INTO `main_classification` VALUES (16,'Engineering'),(17,'Medicine'),(19,'Law'),(20,'Technologies');
/*!40000 ALTER TABLE `main_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_classification`
--

DROP TABLE IF EXISTS `sub_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sub_classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_classification_id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `subForeign_idx` (`main_classification_id`),
  CONSTRAINT `SubFrign` FOREIGN KEY (`main_classification_id`) REFERENCES `main_classification` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_classification`
--

LOCK TABLES `sub_classification` WRITE;
/*!40000 ALTER TABLE `sub_classification` DISABLE KEYS */;
INSERT INTO `sub_classification` VALUES (7,16,'Software'),(9,16,'Computer'),(10,17,'Gentral'),(11,17,'Ayulvedha'),(12,17,'homopathy'),(13,19,'Asian'),(14,16,'Srilakan'),(15,19,'Srilakan'),(16,20,'Bio'),(20,16,'Softwaret');
/*!40000 ALTER TABLE `sub_classification` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-20 17:15:54
