CREATE DATABASE  IF NOT EXISTS `tpms` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `tpms`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 172.27.29.135    Database: tpms
-- ------------------------------------------------------
-- Server version	5.7.41-log

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
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity` (
  `activityId` int(11) NOT NULL AUTO_INCREMENT,
  `activityName` varchar(96) DEFAULT NULL,
  `description` varchar(248) DEFAULT NULL,
  `responsPerson1` varchar(96) DEFAULT NULL,
  `responsPerson2` varchar(96) DEFAULT NULL,
  `isAsesmentEnable` bit(1) DEFAULT b'0',
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  `isProject` bit(1) DEFAULT b'0',
  PRIMARY KEY (`activityId`),
  KEY `fk_activity_createdBy` (`createdBy`),
  KEY `fk_activity_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_activity_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_activity_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (1,'Java 17','java 17','Saroj Mohanty','Chidananda Sutar',_binary '',NULL,'2024-04-29 11:35:30',NULL,NULL,_binary '\0',_binary '\0'),(2,'TPMS Project','Talent Pool Management System','Chidananda Sutar','Saroj Mohanty',_binary '\0',NULL,'2024-04-29 15:57:36',NULL,NULL,_binary '\0',_binary ''),(3,'Activity One ','Activity Description','Activity Response Person','Activity Response Person ',_binary '',NULL,'2024-04-30 10:54:48',NULL,NULL,_binary '\0',_binary '\0'),(4,'Activity Name One ','Activity Description One','Activity Response Person One','Activity Response Person Two',_binary '',NULL,'2024-04-30 10:59:39',NULL,NULL,_binary '\0',_binary ''),(5,'Data structure','saroj sir trainer','saroj sir','',_binary '\0',NULL,'2024-05-01 15:34:59',NULL,NULL,_binary '\0',_binary '\0'),(6,'Spring security','spring security training','anshuman das','chidananda sutar',_binary '\0',NULL,'2024-05-03 10:31:32',NULL,NULL,_binary '\0',_binary '\0'),(7,'Type scropt','type script training for angular','saroj mohanty','bibhubhusan sahoo',_binary '\0',NULL,'2024-05-03 10:32:30',NULL,NULL,_binary '\0',_binary '\0'),(8,'Sql','sql for database','sunil chowdary','bisnu rath',_binary '\0',NULL,'2024-05-03 10:34:00',NULL,'2024-05-06 11:30:34',_binary '\0',_binary '\0'),(9,'Power bi','python basics','suraj singh','jiban bisoyee',_binary '\0',NULL,'2024-05-03 10:35:52',NULL,NULL,_binary '\0',_binary '\0'),(10,'Adv java','servelet jsp','haramohan mohanty','',_binary '\0',NULL,'2024-05-03 10:36:40',NULL,NULL,_binary '\0',_binary '\0'),(11,'Collection in java','collection in java to be discussed with practical uses','chidananda sutar','',_binary '\0',NULL,'2024-05-03 10:38:13',NULL,NULL,_binary '\0',_binary '\0'),(12,'Pl sql','pl sql training','sunil chowdary','',_binary '\0',NULL,'2024-05-03 10:39:35',NULL,NULL,_binary '\0',_binary '\0');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_allocation`
--

DROP TABLE IF EXISTS `activity_allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_allocation` (
  `activityAllocateId` int(11) NOT NULL AUTO_INCREMENT,
  `activityFromDate` date NOT NULL,
  `activityToDate` date NOT NULL,
  `activityId` int(4) DEFAULT NULL,
  `activityFor` int(4) DEFAULT NULL,
  `fromHours` varchar(8) DEFAULT NULL,
  `toHours` varchar(8) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`activityAllocateId`),
  KEY `fk_activity_allocation_activityId` (`activityId`),
  KEY `fk_activity_allocation_createdBy` (`createdBy`),
  KEY `fk_activity_allocation_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_activity_allocation_activityId` FOREIGN KEY (`activityId`) REFERENCES `activity` (`activityId`),
  CONSTRAINT `fk_activity_allocation_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_activity_allocation_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_allocation`
--

LOCK TABLES `activity_allocation` WRITE;
/*!40000 ALTER TABLE `activity_allocation` DISABLE KEYS */;
INSERT INTO `activity_allocation` VALUES (1,'2024-04-15','2024-04-19',2,3,'09:00','18:00',NULL,'2024-05-01 11:16:04',NULL,NULL,_binary '\0'),(2,'2024-04-15','2024-04-19',1,1,'12:00','13:00',NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(3,'2024-05-02','2024-05-03',1,1,'09:00','13:00',NULL,'2024-05-02 15:02:08',NULL,NULL,_binary '\0'),(4,'2024-05-06','2024-05-10',1,1,'09:00','13:00',NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `activity_allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_allocation_details`
--

DROP TABLE IF EXISTS `activity_allocation_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `activity_allocation_details` (
  `activityAllocateDetId` int(11) NOT NULL AUTO_INCREMENT,
  `activityAllocateId` int(4) DEFAULT NULL,
  `resourceId` int(4) DEFAULT NULL,
  `platformId` int(4) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`activityAllocateDetId`),
  KEY `fk_activity_allocation_details_activityAllocateId` (`activityAllocateId`),
  KEY `fk_activity_allocation_details_resourceId_idx` (`resourceId`),
  KEY `fk_activity_allocation_details_platformId` (`platformId`),
  KEY `fk_activity_allocation_details_createdBy` (`createdBy`),
  KEY `fk_activity_allocation_details_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_activity_allocation_details_activityAllocateId` FOREIGN KEY (`activityAllocateId`) REFERENCES `activity_allocation` (`activityAllocateId`),
  CONSTRAINT `fk_activity_allocation_details_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_activity_allocation_details_platformId` FOREIGN KEY (`platformId`) REFERENCES `platforms` (`platformId`),
  CONSTRAINT `fk_activity_allocation_details_resourceId` FOREIGN KEY (`resourceId`) REFERENCES `resource_pool` (`resourceId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_activity_allocation_details_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_allocation_details`
--

LOCK TABLES `activity_allocation_details` WRITE;
/*!40000 ALTER TABLE `activity_allocation_details` DISABLE KEYS */;
INSERT INTO `activity_allocation_details` VALUES (1,1,3,2,NULL,'2024-05-01 11:16:04',NULL,NULL,_binary '\0'),(2,1,4,2,NULL,'2024-05-01 11:16:04',NULL,NULL,_binary '\0'),(3,1,5,2,NULL,'2024-05-01 11:16:04',NULL,NULL,_binary '\0'),(4,1,6,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(5,1,17,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(6,1,23,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(7,1,24,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(8,1,25,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(9,1,26,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(10,1,28,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(11,1,29,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(12,1,32,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(13,1,34,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(14,1,35,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(15,1,36,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(16,1,37,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(17,1,38,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(18,1,39,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(19,1,40,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(20,1,41,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(21,1,45,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(22,1,46,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(23,1,47,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(24,1,48,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(25,1,50,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(26,1,51,2,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(28,1,44,6,NULL,'2024-05-01 11:16:05',NULL,NULL,_binary '\0'),(29,2,4,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(30,2,5,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(32,2,39,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(33,2,40,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(34,2,38,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(35,2,37,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(36,2,6,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(37,2,17,2,NULL,'2024-05-01 11:21:12',NULL,NULL,_binary '\0'),(38,3,3,2,NULL,'2024-05-02 15:02:08',NULL,NULL,_binary '\0'),(39,3,4,2,NULL,'2024-05-02 15:02:08',NULL,NULL,_binary '\0'),(40,3,5,2,NULL,'2024-05-02 15:02:08',NULL,NULL,_binary '\0'),(41,3,6,2,NULL,'2024-05-02 15:02:08',NULL,NULL,_binary '\0'),(42,3,17,2,NULL,'2024-05-02 15:02:08',NULL,NULL,_binary '\0'),(43,3,23,2,NULL,'2024-05-02 15:02:08',NULL,NULL,_binary '\0'),(44,3,24,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(45,3,25,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(46,3,26,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(47,3,28,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(48,3,29,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(49,3,32,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(50,3,34,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(51,3,35,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(52,3,36,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(53,3,37,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(54,3,38,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(55,3,39,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(56,3,40,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(57,3,41,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(58,3,45,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(59,3,46,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(60,3,47,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(61,3,48,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(62,3,50,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(63,3,51,2,NULL,'2024-05-02 15:02:09',NULL,NULL,_binary '\0'),(64,4,3,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(65,4,4,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(66,4,5,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(67,4,6,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(68,4,17,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(69,4,23,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(70,4,24,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(71,4,25,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(72,4,26,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(73,4,28,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(74,4,29,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(75,4,32,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(76,4,34,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(77,4,35,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(78,4,36,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(79,4,37,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(80,4,38,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(81,4,39,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(82,4,40,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(83,4,41,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(84,4,45,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(85,4,46,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(86,4,47,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(87,4,48,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(88,4,50,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0'),(89,4,51,2,NULL,'2024-05-08 20:24:46',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `activity_allocation_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assessment`
--

DROP TABLE IF EXISTS `assessment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assessment` (
  `asesmentId` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` int(4) DEFAULT NULL,
  `activityFromDate` date DEFAULT NULL,
  `activityToDate` date DEFAULT NULL,
  `asesmentDate` date DEFAULT NULL,
  `activityId` int(4) DEFAULT NULL,
  `doubleActivityMark` double(5,2) DEFAULT NULL,
  `doubleSecuredMark` double(5,2) DEFAULT NULL,
  `asesmentHours` double(5,2) DEFAULT NULL,
  `remark` varchar(248) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`asesmentId`),
  KEY `fk_assessment_details_resourceId` (`resourceId`),
  KEY `fk_assessment_details_activityId` (`activityId`),
  KEY `fk_assessment_details_createdBy` (`createdBy`),
  KEY `fk_Assessment_details_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_Assessment_details_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_assessment_details_activityId` FOREIGN KEY (`activityId`) REFERENCES `activity` (`activityId`),
  CONSTRAINT `fk_assessment_details_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_assessment_details_resourceId` FOREIGN KEY (`resourceId`) REFERENCES `resource_pool` (`resourceId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assessment`
--

LOCK TABLES `assessment` WRITE;
/*!40000 ALTER TABLE `assessment` DISABLE KEYS */;
INSERT INTO `assessment` VALUES (1,45,'2024-04-15','2024-04-19','2024-04-19',2,40.00,32.00,2.00,'ok',NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(2,29,'2024-04-15','2024-04-19','2024-04-19',2,40.00,30.00,2.00,'ok',NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(3,28,'2024-04-15','2024-04-19','2024-04-19',2,40.00,30.00,2.00,'ok',NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(4,32,'2024-04-15','2024-04-19','2024-04-19',2,40.00,28.00,2.00,'ok',NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(5,44,'2024-04-15','2024-04-19','2024-04-19',2,40.00,24.00,2.00,'ok',NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(6,41,'2024-04-15','2024-04-19','2024-04-19',2,40.00,37.00,2.00,'ok',NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(7,50,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(8,26,'2024-04-15','2024-04-19','2024-04-19',2,40.00,25.00,2.00,'ok',NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(9,51,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(10,39,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(11,35,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(12,4,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(13,47,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(14,3,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(15,40,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(16,36,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(17,5,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(18,25,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(19,34,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(20,48,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(21,38,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(22,17,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(23,23,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(24,46,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(25,37,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(26,6,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0'),(27,24,'2024-04-15','2024-04-19','2024-04-19',2,40.00,NULL,2.00,NULL,NULL,'2024-05-01 11:32:17',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `assessment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `atendanceId` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` int(4) DEFAULT NULL,
  `activityAllocateId` int(4) DEFAULT NULL,
  `activityAllocateDetId` int(4) DEFAULT NULL,
  `atendanceDate` datetime DEFAULT NULL,
  `atendanceFor` int(4) DEFAULT NULL,
  `isPresent` bit(1) DEFAULT b'0',
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`atendanceId`),
  KEY `fk_attendance_resourceId` (`resourceId`),
  KEY `fk_Attendance_ActivityAllocateId` (`activityAllocateId`),
  KEY `fk_attendance_activityAllocateDetId` (`activityAllocateDetId`),
  KEY `fk_Attendance_createdBy` (`createdBy`),
  KEY `fk_ttendance_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_Attendance_ActivityAllocateId` FOREIGN KEY (`activityAllocateId`) REFERENCES `activity_allocation` (`activityAllocateId`),
  CONSTRAINT `fk_Attendance_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_attendance_activityAllocateDetId` FOREIGN KEY (`activityAllocateDetId`) REFERENCES `activity_allocation_details` (`activityAllocateDetId`),
  CONSTRAINT `fk_attendance_resourceId` FOREIGN KEY (`resourceId`) REFERENCES `resource_pool` (`resourceId`),
  CONSTRAINT `fk_ttendance_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (1,45,1,21,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(2,29,1,11,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(3,28,1,10,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(4,32,1,12,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(5,44,1,28,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(6,41,1,20,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(7,50,1,25,'2024-04-15 00:00:00',3,_binary '\0',1,'2024-05-01 11:24:26',1,NULL,NULL),(8,26,1,9,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(9,51,1,26,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(10,39,1,18,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(11,35,1,14,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(12,4,1,2,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(13,47,1,23,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(14,3,1,1,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(15,40,1,19,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(16,36,1,15,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(17,5,1,3,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(18,25,1,8,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(19,34,1,13,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(20,48,1,24,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(21,38,1,17,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(22,17,1,5,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(23,23,1,6,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(24,46,1,22,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(25,37,1,16,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(26,6,1,4,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(27,24,1,7,'2024-04-15 00:00:00',3,_binary '',1,'2024-05-01 11:24:26',1,NULL,NULL),(28,39,2,32,'2024-04-15 00:00:00',1,_binary '',1,'2024-05-01 11:27:16',1,NULL,NULL),(29,4,2,29,'2024-04-15 00:00:00',1,_binary '\0',1,'2024-05-01 11:27:16',1,NULL,NULL),(30,40,2,33,'2024-04-15 00:00:00',1,_binary '',1,'2024-05-01 11:27:16',1,NULL,NULL),(31,5,2,30,'2024-04-15 00:00:00',1,_binary '',1,'2024-05-01 11:27:16',1,NULL,NULL),(32,38,2,34,'2024-04-15 00:00:00',1,_binary '',1,'2024-05-01 11:27:16',1,NULL,NULL),(33,17,2,37,'2024-04-15 00:00:00',1,_binary '',1,'2024-05-01 11:27:16',1,NULL,NULL),(34,37,2,35,'2024-04-15 00:00:00',1,_binary '',1,'2024-05-01 11:27:16',1,NULL,NULL),(35,6,2,36,'2024-04-15 00:00:00',1,_binary '',1,'2024-05-01 11:27:16',1,NULL,NULL),(36,45,1,21,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(37,29,1,11,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(38,28,1,10,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(39,32,1,12,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(40,44,1,28,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(41,41,1,20,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(42,50,1,25,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(43,26,1,9,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(44,51,1,26,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(45,39,1,18,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(46,35,1,14,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(47,4,1,2,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(48,47,1,23,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(49,3,1,1,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(50,40,1,19,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(51,36,1,15,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(52,5,1,3,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(53,25,1,8,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(54,34,1,13,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(55,48,1,24,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(56,38,1,17,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(57,17,1,5,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(58,23,1,6,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(59,46,1,22,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(60,37,1,16,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(61,6,1,4,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:14',1,NULL,NULL),(62,24,1,7,'2024-04-16 00:00:00',3,_binary '',1,'2024-05-01 11:36:15',1,NULL,NULL),(63,39,2,32,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(64,4,2,29,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(65,40,2,33,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(66,5,2,30,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(67,38,2,34,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(68,17,2,37,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(69,37,2,35,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(70,6,2,36,'2024-04-16 00:00:00',1,_binary '',1,'2024-05-01 11:36:25',1,NULL,NULL),(71,45,1,21,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(72,29,1,11,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(73,28,1,10,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(74,32,1,12,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(75,44,1,28,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(76,41,1,20,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(77,50,1,25,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(78,26,1,9,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(79,51,1,26,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(80,39,1,18,'2024-04-17 00:00:00',3,_binary '\0',1,'2024-05-01 11:38:53',1,NULL,NULL),(81,35,1,14,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(82,4,1,2,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(83,47,1,23,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(84,3,1,1,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(85,40,1,19,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(86,36,1,15,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(87,5,1,3,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(88,25,1,8,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(89,34,1,13,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(90,48,1,24,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(91,38,1,17,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(92,17,1,5,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(93,23,1,6,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(94,46,1,22,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(95,37,1,16,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(96,6,1,4,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(97,24,1,7,'2024-04-17 00:00:00',3,_binary '',1,'2024-05-01 11:38:53',1,NULL,NULL),(98,39,2,32,'2024-04-17 00:00:00',1,_binary '',1,'2024-05-01 11:39:05',1,NULL,NULL),(99,4,2,29,'2024-04-17 00:00:00',1,_binary '',1,'2024-05-01 11:39:05',1,NULL,NULL),(100,40,2,33,'2024-04-17 00:00:00',1,_binary '',1,'2024-05-01 11:39:05',1,NULL,NULL),(101,5,2,30,'2024-04-17 00:00:00',1,_binary '',1,'2024-05-01 11:39:05',1,NULL,NULL),(102,38,2,34,'2024-04-17 00:00:00',1,_binary '',1,'2024-05-01 11:39:05',1,NULL,NULL),(103,17,2,37,'2024-04-17 00:00:00',1,_binary '\0',1,'2024-05-01 11:39:05',1,NULL,NULL),(104,37,2,35,'2024-04-17 00:00:00',1,_binary '',1,'2024-05-01 11:39:05',1,NULL,NULL),(105,6,2,36,'2024-04-17 00:00:00',1,_binary '',1,'2024-05-01 11:39:05',1,NULL,NULL),(106,45,4,84,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:03',1,NULL,NULL),(107,29,4,74,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:03',1,NULL,NULL),(108,28,4,73,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:03',1,NULL,NULL),(109,32,4,75,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:03',1,NULL,NULL),(110,41,4,83,'2024-05-08 00:00:00',1,_binary '\0',1,'2024-05-08 20:27:03',1,NULL,NULL),(111,50,4,88,'2024-05-08 00:00:00',1,_binary '\0',1,'2024-05-08 20:27:04',1,NULL,NULL),(112,26,4,72,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(113,51,4,89,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(114,39,4,81,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(115,35,4,77,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(116,4,4,65,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(117,47,4,86,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(118,3,4,64,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(119,40,4,82,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(120,36,4,78,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(121,5,4,66,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(122,25,4,71,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(123,34,4,76,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(124,48,4,87,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(125,38,4,80,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(126,17,4,68,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(127,23,4,69,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(128,46,4,85,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(129,37,4,79,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(130,6,4,67,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL),(131,24,4,70,'2024-05-08 00:00:00',1,_binary '',1,'2024-05-08 20:27:04',1,NULL,NULL);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communication_content_type`
--

DROP TABLE IF EXISTS `communication_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `communication_content_type` (
  `commTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `commType` varchar(45) DEFAULT NULL,
  `contents` text,
  `subject` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`commTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication_content_type`
--

LOCK TABLES `communication_content_type` WRITE;
/*!40000 ALTER TABLE `communication_content_type` DISABLE KEYS */;
INSERT INTO `communication_content_type` VALUES (4,'Allocation','<p>Dear All,</p><p>As per departmental protocol, all&nbsp;talent&nbsp;pool&nbsp;resources stationed at Bhubaneswar must present from&nbsp;<strong>dateinput</strong>&nbsp;onwards physically at the 4th floor, OCAC Tower, for an up-skilling/engagement program. Attendance is mandatory for all resources, and failure will be marked as an absence.</p><p>Additionally, it\'s important to inform you that if you are absent for three consecutive days without prior notice, this information will be shared with the HR department.</p><p>*<strong>Those who are not located in Bhubaneswar city, please connect with your mentor.</strong></p><p><strong>PFA For Weekly engagement planner&nbsp;</strong>','Weekly Engagement planner for talent pool resources'),(5,'Attendance','Dear Sir/Madam,<br> Please find an attachment for the attendance details report of the talent pool resources for the period fromdate to todate.','Attendance Details For Talent Pool Resources'),(6,'Assesment',NULL,NULL);
/*!40000 ALTER TABLE `communication_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `excel_upload_history`
--

DROP TABLE IF EXISTS `excel_upload_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `excel_upload_history` (
  `excelFileId` int(11) NOT NULL AUTO_INCREMENT,
  `fileName` varchar(96) DEFAULT NULL,
  `allocationDate` date NOT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`excelFileId`),
  KEY `fk_excel_upload_history_createdBy` (`createdBy`),
  KEY `fk_excel_upload_history_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_excel_upload_history_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_excel_upload_history_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `excel_upload_history`
--

LOCK TABLES `excel_upload_history` WRITE;
/*!40000 ALTER TABLE `excel_upload_history` DISABLE KEYS */;
INSERT INTO `excel_upload_history` VALUES (1,'Resource_File_15042024.xlsx','2024-04-15',1,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(2,'Resource_File_22042024.xlsx','2024-04-22',1,'2024-05-02 09:42:57',NULL,NULL,_binary '\0'),(3,'Resource_File_01042024.xlsx','2024-04-01',1,'2024-05-02 16:27:51',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `excel_upload_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforms`
--

DROP TABLE IF EXISTS `platforms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforms` (
  `platformId` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(24) NOT NULL,
  `platformCode` varchar(16) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`platformId`),
  KEY `fk_platforms_createdBy` (`createdBy`),
  KEY `fk_platforms_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_platforms_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_platforms_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforms`
--

LOCK TABLES `platforms` WRITE;
/*!40000 ALTER TABLE `platforms` DISABLE KEYS */;
INSERT INTO `platforms` VALUES (1,'PHP','PH',1,'2024-05-01 11:10:21',NULL,NULL,_binary '\0'),(2,'JAVA','JA',1,'2024-05-01 11:10:21',NULL,NULL,_binary '\0'),(3,'Database Testing','Da',1,'2024-05-01 11:10:21',NULL,NULL,_binary '\0'),(4,'ASP.NET','AS',1,'2024-05-01 11:10:21',NULL,NULL,_binary '\0'),(5,'Python','Py',1,'2024-05-01 11:10:21',NULL,NULL,_binary '\0'),(6,'SQL Server','SQ',1,'2024-05-01 11:10:21',NULL,NULL,_binary '\0'),(7,'SAS VA','SA',1,'2024-05-01 11:10:21',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `platforms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_pool`
--

DROP TABLE IF EXISTS `resource_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_pool` (
  `resourceId` int(11) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(104) DEFAULT NULL,
  `resourceCode` varchar(16) DEFAULT NULL,
  `designation` varchar(96) NOT NULL,
  `platform` varchar(48) DEFAULT NULL,
  `location` varchar(64) NOT NULL,
  `engagementPlan` varchar(96) DEFAULT NULL,
  `experience` varchar(8) DEFAULT NULL,
  `allocationDate` date NOT NULL,
  `phoneNo` varchar(16) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`resourceId`),
  KEY `fk_resource_pool_createdBy` (`createdBy`),
  KEY `fk_resource_pool_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_resource_pool_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_resource_pool_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_pool`
--

LOCK TABLES `resource_pool` WRITE;
/*!40000 ALTER TABLE `resource_pool` DISABLE KEYS */;
INSERT INTO `resource_pool` VALUES (1,'Debesh Patnaik','01-3126','Software Engineer','PHP','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','debas@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(2,'Manish Kumar','01-3516','Programmer Analyst','PHP','Bhubaneswar','Standard Orientation Program','3.7','2024-04-15','1234567890','manis@gmail.com',NULL,'2024-05-01 11:10:22',NULL,'2024-05-02 16:27:51',_binary ''),(3,'Mohammad Uvesh','15-3515','Programmer Analyst','JAVA','Delhi','Standard Orientation Program','4.11','2024-04-15','1234567890','uvvesh@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(4,'Lovenish','15-3328','Programmer','JAVA','Delhi','UP Skilling Program','7.1','2024-04-15','1234567890','lovenish@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(5,'Ratiranjan Jadav','01-2659','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.2','2024-04-15','1234567890','ratiranjan@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(6,'Suraj Kumar Khuntia','01-2811','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','suraj@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(7,'Rohit Kumar Sha','01-3426','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','rohit@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(8,'Debadatta Brahma','01-3428','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','debadatta@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(9,'Amit Sinha','04-3424','Junior Software Engineer','ASP.NET','Patna','UP Skilling Program','0.5','2024-04-15','1234567890','amit@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(10,'Abhishek Kumar','04-3418','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-15','1234567890','abhishek@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(11,'Avinash Kumar','04-3413','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-15','1234567890','avinash@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(12,'Chandan Kumar Nayak','01-3412','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','chandan@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(13,'Subrat Kumar Nayak','01-3411','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','subrat@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(14,'Suchismita Mahanta','01-3409','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','suchismita@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(15,'Binayak Padhi','01-3429','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','binay@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(16,'Rajalaxmi Samantaray','01-3410','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','rajalaxmi@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(17,'Somen Mitra','01-3397','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','somen@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(18,'Soubhagya Ranjan Samal','01-3427','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','soubhagya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(19,'Ashish Choudhury','01-3408','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','ashish@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(20,'Abhishek Nayak','01-3407','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','abhishek@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(21,'Sudeep Ranjan Pattanaik','01-3406','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','sudeep@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(22,'Abinash Rout','01-3405','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','abina@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(23,'Soumya Sourav Behera','01-3402','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','soumya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(24,'Trilochan Das','01-3401','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','trilochan@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(25,'Rudranarayan Behera','01-3400','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','rudra@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(26,'Dibyapriyadarsini Panda','01-3399','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','dibya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(27,'Sonali Jena','01-2909','Programmer Analyst','PHP','Bhubaneswar','UP Skilling Program','5.4','2024-04-15','1234567890','sonali@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(28,'Asutosh Padhi','01-2451','Sr. Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','3.5','2024-04-15','1234567890','ashiutosh@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(29,'Amit Kumar Mittal','15-3478','Programmer Analyst','JAVA','Delhi','UP Skilling Program','6.2','2024-04-15','1234567890','amitmittal@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(30,'Dibyajyoti Sahoo','01-2775','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','dibyasahoo@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(31,'Sunil Kumar Baral','01-2787','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','sunil@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(32,'Ayash Kumar Parida','01-2834','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','ayash@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(33,'Binayak Prasad','01-2950','Software Engineer','SAS VA','Bhubaneswar','UP Skilling Program','1.7','2024-04-15','1234567890','binayak@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(34,'Satyam Dixit','15-3466','Programmer Analyst','JAVA','Delhi','UP Skilling Program','5.6','2024-04-15','1234567890','satyam@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(35,'Kiran Swain','01-2814','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','kiran@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(36,'Priyanka Priyadarsini Biswal','01-2846','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','priyanka@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(37,'Subhasmita Jena','01-2840','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','subhasmita@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(38,'Shushree Sangita Mahapatra','01-2838','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','shushree@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(39,'Jiban Jena','01-2815','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','jibanj@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(40,'Prasanjit Tarai','01-2618','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.3','2024-04-15','1234567890','prasanjit@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(41,'Chinmaya Jena','01-2987','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-15','1234567890','chinmaya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(42,'Abhisekh Nayak','01-2635','Software Engineer','Python','Bhubaneswar','UP Skilling Program','2.1','2024-04-15','1234567890','abhisheknayak@gmail.com',NULL,'2024-05-01 11:10:22',NULL,'2024-05-02 16:28:03',_binary '\0'),(43,'Pranav S','01-3297','Associate Engineer','Python','Bhubaneswar','UP Skilling Program','0.9','2024-04-15','1234567890','prana@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(44,'Biswajit Panda',' 01-2786','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','biswa@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(45,'Akshaykirti Muduli','01-3109','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','akahay@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(46,'Subham Prusty','01-3105','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','subham@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(47,'Megha Kumari','01-2844','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','meghna@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(48,'Shahbaj Hussan',' 04-2478','Software Engineer','JAVA','Patna','UP Skilling Program','3.1','2024-04-15','1234567890','shabaj@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(49,'Balmukund Kumar','01-3244','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.1','2024-04-15','1234567890','balmukund@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(50,'Dhanpati Bhakat','01-3104','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','dhanpati@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(51,'Harshikesh Singh','01-2972','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-15','1234567890','harshakesh@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `resource_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_pool_history`
--

DROP TABLE IF EXISTS `resource_pool_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource_pool_history` (
  `resourceHistoryId` int(11) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(104) DEFAULT NULL,
  `resourceCode` varchar(16) DEFAULT NULL,
  `designation` varchar(96) NOT NULL,
  `platform` varchar(48) DEFAULT NULL,
  `location` varchar(64) NOT NULL,
  `engagementPlan` varchar(96) DEFAULT NULL,
  `experience` varchar(8) DEFAULT NULL,
  `allocationDate` date NOT NULL,
  `phoneNo` varchar(16) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`resourceHistoryId`),
  KEY `fk_Resource_pool_history_createdBy` (`createdBy`),
  KEY `fk_Resource_pool_history_updatedBy` (`updatedBy`),
  CONSTRAINT `fk_Resource_pool_history_createdBy` FOREIGN KEY (`createdBy`) REFERENCES `user` (`userId`),
  CONSTRAINT `fk_Resource_pool_history_updatedBy` FOREIGN KEY (`updatedBy`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_pool_history`
--

LOCK TABLES `resource_pool_history` WRITE;
/*!40000 ALTER TABLE `resource_pool_history` DISABLE KEYS */;
INSERT INTO `resource_pool_history` VALUES (1,'Debesh Patnaik','01-3126','Software Engineer','PHP','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','debas@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(2,'Manish Kumar','01-3516','Programmer Analyst','PHP','Bhubaneswar','Standard Orientation Program','3.7','2024-04-15','1234567890','manis@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(3,'Mohammad Uvesh','15-3515','Programmer Analyst','JAVA','Delhi','Standard Orientation Program','4.11','2024-04-15','1234567890','uvvesh@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(4,'Lovenish','15-3328','Programmer','JAVA','Delhi','UP Skilling Program','7.1','2024-04-15','1234567890','lovenish@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(5,'Ratiranjan Jadav','01-2659','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.2','2024-04-15','1234567890','ratiranjan@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(6,'Suraj Kumar Khuntia','01-2811','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','suraj@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(7,'Rohit Kumar Sha','01-3426','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','rohit@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(8,'Debadatta Brahma','01-3428','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','debadatta@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(9,'Amit Sinha','04-3424','Junior Software Engineer','ASP.NET','Patna','UP Skilling Program','0.5','2024-04-15','1234567890','amit@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(10,'Abhishek Kumar','04-3418','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-15','1234567890','abhishek@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(11,'Avinash Kumar','04-3413','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-15','1234567890','avinash@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(12,'Chandan Kumar Nayak','01-3412','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','chandan@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(13,'Subrat Kumar Nayak','01-3411','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','subrat@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(14,'Suchismita Mahanta','01-3409','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','suchismita@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(15,'Binayak Padhi','01-3429','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','binay@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(16,'Rajalaxmi Samantaray','01-3410','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','rajalaxmi@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(17,'Somen Mitra','01-3397','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','somen@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(18,'Soubhagya Ranjan Samal','01-3427','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','soubhagya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(19,'Ashish Choudhury','01-3408','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','ashish@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(20,'Abhishek Nayak','01-3407','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','abhishek@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(21,'Sudeep Ranjan Pattanaik','01-3406','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','sudeep@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(22,'Abinash Rout','01-3405','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','abina@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(23,'Soumya Sourav Behera','01-3402','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','soumya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(24,'Trilochan Das','01-3401','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','trilochan@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(25,'Rudranarayan Behera','01-3400','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','rudra@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(26,'Dibyapriyadarsini Panda','01-3399','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-15','1234567890','dibya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(27,'Sonali Jena','01-2909','Programmer Analyst','PHP','Bhubaneswar','UP Skilling Program','5.4','2024-04-15','1234567890','sonali@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(28,'Asutosh Padhi','01-2451','Sr. Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','3.5','2024-04-15','1234567890','ashiutosh@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(29,'Amit Kumar Mittal','15-3478','Programmer Analyst','JAVA','Delhi','UP Skilling Program','6.2','2024-04-15','1234567890','amitmittal@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(30,'Dibyajyoti Sahoo','01-2775','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','dibyasahoo@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(31,'Sunil Kumar Baral','01-2787','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','sunil@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(32,'Ayash Kumar Parida','01-2834','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','ayash@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(33,'Binayak Prasad','01-2950','Software Engineer','SAS VA','Bhubaneswar','UP Skilling Program','1.7','2024-04-15','1234567890','binayak@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(34,'Satyam Dixit','15-3466','Programmer Analyst','JAVA','Delhi','UP Skilling Program','5.6','2024-04-15','1234567890','satyam@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(35,'Kiran Swain','01-2814','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','kiran@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(36,'Priyanka Priyadarsini Biswal','01-2846','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','priyanka@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(37,'Subhasmita Jena','01-2840','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','subhasmita@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(38,'Shushree Sangita Mahapatra','01-2838','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','shushree@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(39,'Jiban Jena','01-2815','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','jibanj@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(40,'Prasanjit Tarai','01-2618','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.3','2024-04-15','1234567890','prasanjit@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(41,'Chinmaya Jena','01-2987','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-15','1234567890','chinmaya@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(42,'Abhisekh Nayak','01-2635','Software Engineer','Python','Bhubaneswar','UP Skilling Program','2.1','2024-04-15','1234567890','abhisheknayak@gmail.com',NULL,'2024-05-01 11:10:22',NULL,'2024-05-02 16:28:03',_binary '\0'),(43,'Pranav S','01-3297','Associate Engineer','Python','Bhubaneswar','UP Skilling Program','0.9','2024-04-15','1234567890','prana@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(44,'Biswajit Panda',' 01-2786','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','biswa@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(45,'Akshaykirti Muduli','01-3109','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','akahay@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(46,'Subham Prusty','01-3105','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','subham@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(47,'Megha Kumari','01-2844','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-15','1234567890','meghna@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(48,'Shahbaj Hussan',' 04-2478','Software Engineer','JAVA','Patna','UP Skilling Program','3.1','2024-04-15','1234567890','shabaj@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(49,'Balmukund Kumar','01-3244','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.1','2024-04-15','1234567890','balmukund@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(50,'Dhanpati Bhakat','01-3104','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-15','1234567890','dhanpati@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(51,'Harshikesh Singh','01-2972','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-15','1234567890','harshakesh@gmail.com',NULL,'2024-05-01 11:10:22',NULL,NULL,_binary '\0'),(52,'Debesh Patnaik','01-3126','Software Engineer','PHP','Bhubaneswar','UP Skilling Program','1.3','2024-04-22','1234567890','debas@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(53,'Manish Kumar','01-3516','Programmer Analyst','PHP','Bhubaneswar','Standard Orientation Program','3.7','2024-04-22','1234567890','manis@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(54,'Mohammad Uvesh','15-3515','Programmer Analyst','JAVA','Delhi','Standard Orientation Program','4.11','2024-04-22','1234567890','uvvesh@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(55,'Lovenish','15-3328','Programmer','JAVA','Delhi','UP Skilling Program','7.1','2024-04-22','1234567890','lovenish@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(56,'Ratiranjan Jadav','01-2659','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.2','2024-04-22','1234567890','ratiranjan@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(57,'Suraj Kumar Khuntia','01-2811','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','suraj@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(58,'Rohit Kumar Sha','01-3426','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','rohit@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(59,'Debadatta Brahma','01-3428','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','debadatta@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(60,'Amit Sinha','04-3424','Junior Software Engineer','ASP.NET','Patna','UP Skilling Program','0.5','2024-04-22','1234567890','amit@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(61,'Abhishek Kumar','04-3418','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-22','1234567890','abhishek@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(62,'Avinash Kumar','04-3413','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-22','1234567890','avinash@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(63,'Chandan Kumar Nayak','01-3412','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','chandan@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(64,'Subrat Kumar Nayak','01-3411','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','subrat@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(65,'Suchismita Mahanta','01-3409','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','suchismita@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(66,'Binayak Padhi','01-3429','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','binay@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(67,'Rajalaxmi Samantaray','01-3410','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','rajalaxmi@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(68,'Somen Mitra','01-3397','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','somen@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(69,'Soubhagya Ranjan Samal','01-3427','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','soubhagya@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(70,'Ashish Choudhury','01-3408','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','ashish@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(71,'Abhishek Nayak','01-3407','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','abhishek@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(72,'Sudeep Ranjan Pattanaik','01-3406','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','sudeep@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(73,'Abinash Rout','01-3405','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','abina@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(74,'Soumya Sourav Behera','01-3402','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','soumya@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(75,'Trilochan Das','01-3401','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','trilochan@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(76,'Rudranarayan Behera','01-3400','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','rudra@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(77,'Dibyapriyadarsini Panda','01-3399','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-22','1234567890','dibya@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(78,'Sonali Jena','01-2909','Programmer Analyst','PHP','Bhubaneswar','UP Skilling Program','5.4','2024-04-22','1234567890','sonali@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(79,'Asutosh Padhi','01-2451','Sr. Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','3.5','2024-04-22','1234567890','ashiutosh@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(80,'Amit Kumar Mittal','15-3478','Programmer Analyst','JAVA','Delhi','UP Skilling Program','6.2','2024-04-22','1234567890','amitmittal@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(81,'Dibyajyoti Sahoo','01-2775','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','dibyasahoo@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(82,'Sunil Kumar Baral','01-2787','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','sunil@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(83,'Ayash Kumar Parida','01-2834','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','ayash@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(84,'Binayak Prasad','01-2950','Software Engineer','SAS VA','Bhubaneswar','UP Skilling Program','1.7','2024-04-22','1234567890','binayak@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(85,'Satyam Dixit','15-3466','Programmer Analyst','JAVA','Delhi','UP Skilling Program','5.6','2024-04-22','1234567890','satyam@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(86,'Kiran Swain','01-2814','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','kiran@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(87,'Priyanka Priyadarsini Biswal','01-2846','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','priyanka@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(88,'Subhasmita Jena','01-2840','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','subhasmita@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(89,'Shushree Sangita Mahapatra','01-2838','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','shushree@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(90,'Jiban Jena','01-2815','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','jibanj@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(91,'Prasanjit Tarai','01-2618','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.3','2024-04-22','1234567890','prasanjit@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(92,'Chinmaya Jena','01-2987','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-22','1234567890','chinmaya@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(93,'Abhisekh Nayak','01-2635','Software Engineer','Python','Bhubaneswar','UP Skilling Program','2.3','2024-04-22','1234567890','abhisheknayak@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(94,'Pranav S','01-3297','Associate Engineer','Python','Bhubaneswar','UP Skilling Program','0.9','2024-04-22','1234567890','prana@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(95,'Biswajit Panda',' 01-2786','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','biswa@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(96,'Akshaykirti Muduli','01-3109','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-22','1234567890','akahay@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(97,'Subham Prusty','01-3105','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-22','1234567890','subham@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(98,'Megha Kumari','01-2844','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-22','1234567890','meghna@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(99,'Shahbaj Hussan',' 04-2478','Software Engineer','JAVA','Patna','UP Skilling Program','3.1','2024-04-22','1234567890','shabaj@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(100,'Balmukund Kumar','01-3244','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.1','2024-04-22','1234567890','balmukund@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(101,'Dhanpati Bhakat','01-3104','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-22','1234567890','dhanpati@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(102,'Harshikesh Singh','01-2972','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-22','1234567890','harshakesh@gmail.com',NULL,'2024-05-02 09:42:56',NULL,NULL,_binary '\0'),(103,'Debesh Patnaik','01-3126','programmer analysist','php','ROURKELA','type script','4.7','2024-04-01','9087654321','debas@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(104,'Mohammad Uvesh','15-3515','Programmer Analyst','JAVA','Delhi','Standard Orientation Program','4.11','2024-04-01','1234567890','uvvesh@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(105,'Lovenish','15-3328','Programmer','JAVA','Delhi','UP Skilling Program','7.1','2024-04-01','1234567890','lovenish@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(106,'Ratiranjan Jadav','01-2659','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.2','2024-04-01','1234567890','ratiranjan@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(107,'Suraj Kumar Khuntia','01-2811','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','suraj@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(108,'Rohit Kumar Sha','01-3426','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','rohit@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(109,'Debadatta Brahma','01-3428','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','debadatta@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(110,'Amit Sinha','04-3424','Junior Software Engineer','ASP.NET','Patna','UP Skilling Program','0.5','2024-04-01','1234567890','amit@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(111,'Abhishek Kumar','04-3418','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-01','1234567890','abhishek@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(112,'Avinash Kumar','04-3413','Junior Software Engineer','PHP','Patna','UP Skilling Program','0.5','2024-04-01','1234567890','avinash@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(113,'Chandan Kumar Nayak','01-3412','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','chandan@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(114,'Subrat Kumar Nayak','01-3411','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','subrat@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(115,'Suchismita Mahanta','01-3409','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','suchismita@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(116,'Binayak Padhi','01-3429','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','binay@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(117,'Rajalaxmi Samantaray','01-3410','Junior Software Engineer','PHP','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','rajalaxmi@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(118,'Somen Mitra','01-3397','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','somen@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(119,'Soubhagya Ranjan Samal','01-3427','Junior Software Engineer','Database Testing','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','soubhagya@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(120,'Ashish Choudhury','01-3408','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','ashish@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(121,'Abhishek Nayak','01-3407','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','abhishek@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(122,'Sudeep Ranjan Pattanaik','01-3406','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','sudeep@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(123,'Abinash Rout','01-3405','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','abina@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(124,'Soumya Sourav Behera','01-3402','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','soumya@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(125,'Trilochan Das','01-3401','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','trilochan@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(126,'Rudranarayan Behera','01-3400','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','rudra@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(127,'Dibyapriyadarsini Panda','01-3399','Junior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','0.5','2024-04-01','1234567890','dibya@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(128,'Sonali Jena','01-2909','Programmer Analyst','PHP','Bhubaneswar','UP Skilling Program','5.4','2024-04-01','1234567890','sonali@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(129,'Asutosh Padhi','01-2451','Sr. Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','3.5','2024-04-01','1234567890','ashiutosh@gmail.com',NULL,'2024-05-02 16:27:50',NULL,NULL,_binary '\0'),(130,'Amit Kumar Mittal','15-3478','Programmer Analyst','JAVA','Delhi','UP Skilling Program','6.2','2024-04-01','1234567890','amitmittal@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(131,'Dibyajyoti Sahoo','01-2775','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','dibyasahoo@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(132,'Sunil Kumar Baral','01-2787','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','sunil@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(133,'Ayash Kumar Parida','01-2834','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','ayash@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(134,'Binayak Prasad','01-2950','Software Engineer','SAS VA','Bhubaneswar','UP Skilling Program','1.7','2024-04-01','1234567890','binayak@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(135,'Satyam Dixit','15-3466','Programmer Analyst','JAVA','Delhi','UP Skilling Program','5.6','2024-04-01','1234567890','satyam@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(136,'Kiran Swain','01-2814','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','kiran@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(137,'Priyanka Priyadarsini Biswal','01-2846','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','priyanka@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(138,'Subhasmita Jena','01-2840','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','subhasmita@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(139,'Shushree Sangita Mahapatra','01-2838','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','shushree@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(140,'Jiban Jena','01-2815','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','jibanj@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(141,'Prasanjit Tarai','01-2618','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','2.3','2024-04-01','1234567890','prasanjit@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(142,'Chinmaya Jena','01-2987','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-01','1234567890','chinmaya@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(143,'Abhisekh Nayak','01-2635','Software Engineer','Python','Bhubaneswar','UP Skilling Program','2.3','2024-04-01','1234567890','abhisheknayak@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(144,'Pranav S','01-3297','Associate Engineer','Python','Bhubaneswar','UP Skilling Program','0.9','2024-04-01','1234567890','prana@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(145,'Biswajit Panda',' 01-2786','Software Engineer','SQL Server','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','biswa@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(146,'Akshaykirti Muduli','01-3109','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-01','1234567890','akahay@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(147,'Subham Prusty','01-3105','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-01','1234567890','subham@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(148,'Megha Kumari','01-2844','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.11','2024-04-01','1234567890','meghna@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(149,'Shahbaj Hussan',' 04-2478','Software Engineer','JAVA','Patna','UP Skilling Program','3.1','2024-04-01','1234567890','shabaj@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(150,'Balmukund Kumar','01-3244','Junior Software Engineer','Python','Bhubaneswar','UP Skilling Program','0.1','2024-04-01','1234567890','balmukund@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(151,'Dhanpati Bhakat','01-3104','Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.3','2024-04-01','1234567890','dhanpati@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0'),(152,'Harshikesh Singh','01-2972','Senior Software Engineer','JAVA','Bhubaneswar','UP Skilling Program','1.7','2024-04-01','1234567890','harshakesh@gmail.com',NULL,'2024-05-02 16:27:51',NULL,NULL,_binary '\0');
/*!40000 ALTER TABLE `resource_pool_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(16) DEFAULT NULL,
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'Admin',1,'2024-03-05 16:19:55',1,'2024-03-20 10:21:19',_binary '\0'),(2,'RCM',1,'2024-03-05 16:19:55',NULL,'2024-03-22 11:53:59',_binary '\0'),(3,'L&K',1,'2024-03-05 16:19:55',NULL,'2024-03-22 11:53:59',_binary '\0'),(4,'User',1,'2024-03-21 09:50:44',NULL,'2024-03-21 09:51:12',_binary '\0');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userFullName` varchar(64) DEFAULT NULL,
  `userName` varchar(16) DEFAULT NULL,
  `password` varchar(104) DEFAULT NULL,
  `roleId` int(4) DEFAULT NULL,
  `phoneNo` varchar(16) DEFAULT NULL,
  `email` varchar(96) DEFAULT NULL,
  `isFirstLogin` bit(1) DEFAULT b'0',
  `createdBy` int(4) DEFAULT NULL,
  `createdOn` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatedBy` int(4) DEFAULT NULL,
  `updatedOn` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deletedFlag` bit(1) DEFAULT b'0',
  `signature` varchar(1005) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  KEY `fk_user_roleId` (`roleId`),
  CONSTRAINT `fk_user_roleId` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Manoj Singh','manoj','$2a$12$77eAVtQguUU6p0OWangJXOyx/yt6W1oWbamyi1zjZt1A8QobMfRm6',1,'9987666112','manojsingh@gmail.com',_binary '\0',1,'2024-03-22 11:56:13',NULL,'2024-05-17 11:14:22',_binary '\0','<p>With Regards,</p><p><strong>Manoj Ku Singh| Consultant&nbsp;</strong>(L&amp;K)</p><p>CSM Technologies Pvt. Ltd.&nbsp;<strong>(A CMMI ML5 Company)</strong></p><p><strong>A:</strong>&nbsp;Level-6, OCAC Tower, Bhubaneswar<strong>-</strong>13, Odisha, India</p><p><strong>Extn : </strong>5395&nbsp;<strong>M:</strong>&nbsp;+91&nbsp;9437943676,&nbsp;</p><p>Email id:&nbsp;<a href=\"mailto:Manoj.Singh@csm.co.in\">Manoj.Singh@csm.</a>tech</p><p><a href=\"http://www.csm.tech/\">www.csm.tech</a>&nbsp;<a href=\"https://www.facebook.com/CSMPL\">Facebook</a>&nbsp;|&nbsp;<a href=\"https://twitter.com/CSMTechnologies\">Twitter</a>&nbsp;|&nbsp;<a href=\"https://www.linkedin.com/in/csmtechnologies\">LinkedIn</a></p>'),(2,'Kiran','kiran@123','$2a$10$7UZJR0n/Tcpn7YhrUhdq/.1youX17/zm13jbXq.j5iTJdtNmcrE2u',2,'9987666113','kiran@gmail.com',_binary '',NULL,'2024-03-25 12:45:02',NULL,'2024-03-25 12:48:17',_binary '',NULL),(3,'Bilu Barber','bilei','$2a$10$TGVzPGXjlTx9sfvhULEibeEK5cPpSlvz89J7l5HzGwWNoGG0E25RO',3,'2323221323','chidananda.sutar@csm.tech',_binary '',1,'2024-04-24 17:00:23',NULL,'2024-05-13 15:30:16',_binary '\0',NULL),(4,'satyam Dixit','satyam','$2a$10$KrFjTFiVk3Y2KAdQ/eeq1ODjGJuLJ2MGeqMvq23u/C64zSbT42MKK',1,'9616714339','satyam@gmail.com',_binary '',1,'2024-05-08 13:12:29',NULL,'2024-05-08 13:17:50',_binary '',NULL);
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

-- Dump completed on 2024-05-24 12:38:21
