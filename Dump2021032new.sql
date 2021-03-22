-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sp2
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `darbuotojai`
--

DROP TABLE IF EXISTS `darbuotojai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `darbuotojai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vardas` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `pavarde` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `projektas` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `darbuotojai`
--

LOCK TABLES `darbuotojai` WRITE;
/*!40000 ALTER TABLE `darbuotojai` DISABLE KEYS */;
INSERT INTO `darbuotojai` VALUESx (1,'Rimas','Rimaitis','XYX','2021-03-20 05:13:59'),(2,'Jonas','Jonaitis','YXY','2021-03-20 05:17:50'),(3,'Ona','Rimaitiene','DDVD','2021-03-20 05:17:50'),(4,'Rasa','Petraitiene','VDVY','2021-03-20 05:17:50'),(5,'Kazys ','Antanaitis','YYYX','2021-03-20 05:17:50');
/*!40000 ALTER TABLE `darbuotojai` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projektai`
--

DROP TABLE IF EXISTS `projektai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projektai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projekto_pavadinimas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `priskirtas_darbuotojas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `darbuotojo_id` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `update_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projektai`
--

LOCK TABLES `projektai` WRITE;
/*!40000 ALTER TABLE `projektai` DISABLE KEYS */;
INSERT INTO `projektai` VALUES (1,'Naujas','Ona Rimaitiene','3','2021-03-21 05:05:41'),(2,'Senas','Jonas Jonaitis','2','2021-03-21 05:05:41'),(3,'Error','Rasa Petraitiene','4','2021-03-21 05:05:41'),(4,'Develop_of_senas ','Kazys Antanaitis','5','2021-03-21 05:05:41'),(5,'Head of projects','Rimas Rimaitis','1','2021-03-21 05:05:41');
/*!40000 ALTER TABLE `projektai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-21 11:28:54
