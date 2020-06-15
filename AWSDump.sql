CREATE DATABASE  IF NOT EXISTS `voter` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `voter`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: ce407.caxbvvreuw0w.us-east-1.rds.amazonaws.com    Database: voter
-- ------------------------------------------------------
-- Server version	8.0.17

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `candidate`
--

DROP TABLE IF EXISTS `candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `candidate` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL DEFAULT 'Not_Set',
  `Vote_Count` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `can_info` (`Name`,`Vote_Count`),
  CONSTRAINT `candidate_chk_1` CHECK ((char_length(`Name`) > 0)),
  CONSTRAINT `candidate_chk_2` CHECK ((`Vote_Count` > -1))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `candidate`
--

LOCK TABLES `candidate` WRITE;
/*!40000 ALTER TABLE `candidate` DISABLE KEYS */;
INSERT INTO `candidate` VALUES (4,'Cem Evrendilek',20),(1,'Kaya Oğuz',16),(2,'Süleyman Kondakçı',12),(3,'Turhan Tunalı',12);
/*!40000 ALTER TABLE `candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `integrity`
--

DROP TABLE IF EXISTS `integrity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `integrity` (
  `delete_count` int(11) NOT NULL DEFAULT '0',
  `insert_count` int(11) NOT NULL DEFAULT '0',
  `update_count` int(11) NOT NULL DEFAULT '0',
  CONSTRAINT `integrity_chk_1` CHECK ((`delete_count` > -(1))),
  CONSTRAINT `integrity_chk_2` CHECK ((`insert_count` > -(1))),
  CONSTRAINT `integrity_chk_3` CHECK ((`update_count` > -(1)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `integrity`
--

LOCK TABLES `integrity` WRITE;
/*!40000 ALTER TABLE `integrity` DISABLE KEYS */;
INSERT INTO `integrity` VALUES (1,4,9019);
/*!40000 ALTER TABLE `integrity` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `RESTRICT_INSERT` BEFORE INSERT ON `integrity` FOR EACH ROW BEGIN  
SIGNAL SQLSTATE '45000'  SET MESSAGE_TEXT = "insertion is prohibited in this  table";  
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`admin`@`%`*/ /*!50003 TRIGGER `RESTRICT_DELETE` BEFORE DELETE ON `integrity` FOR EACH ROW BEGIN 

SIGNAL SQLSTATE '45000' 
SET MESSAGE_TEXT = "Deletion on this table is prohibited.";

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `voter`
--

DROP TABLE IF EXISTS `voter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voter` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(200) DEFAULT 'Not_set',
  `Password` varchar(200) DEFAULT 'Not_Set',
  `Voted` tinyint(1) NOT NULL DEFAULT '0',
  `Code` int(11) DEFAULT '0',
  `Is_validated` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID_UNIQUE` (`ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voter`
--

LOCK TABLES `voter` WRITE;
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` VALUES (1,'atahanekici@hotmail.com','21232f297a57a5a743894a0e4a801fc3',1,8154,1),(5,'oksanekici73@hotmail.com','8f10d078b2799206cfe914b32cc6a5e9',1,NULL,0),(18,'laythese@gmail.com','5f771ae29967699c4787831d1464aeaa',1,0,0),(19,'oksanekici70@gmail.com','35149df3f0fce3c761af1fe9de9f7914',1,0,0),(20,'sarp@3dkafasi.com','80928403be8058d37eef6418922773ef',1,0,0),(21,'onatcan3@hotmail.com','f856f739d19cf1fb6f878b6485143551',1,0,0),(22,'alperdemir.metu@gmail.com','df421d5d671496fbfca0066bc313d324',1,0,0),(23,'hacermuleyke.kurnaz@gmail.com','a70d5cf4a176d78736091e0822c07205',1,0,0),(24,'hakanekici71@hotmail.com','06eede10b30e3c847e5af8b12d8e6a0b',1,0,0),(25,'ahmet76@hotmail.com','81dc9bdb52d04dc20036dbd8313ed055',1,0,0),(26,'deneme@gmail.com','720efdeef05b82ba026b10bec66fa69c',1,0,0),(27,'deneme2@gmail.com','8f10d078b2799206cfe914b32cc6a5e9',1,0,0),(28,'deneme3@gmail.com','8f10d078b2799206cfe914b32cc6a5e9',1,0,0);
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'voter'
--

--
-- Dumping routines for database 'voter'
--
/*!50003 DROP PROCEDURE IF EXISTS `IfVoted` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `IfVoted`(IN voter_id varchar(11))
    READS SQL DATA
BEGIN

DECLARE id varchar(11);
DECLARE User_n varchar (200);
DECLARE Is_Voted BOOLEAN;
DECLARE temp BOOLEAN;
DECLARE no_more_rows BOOLEAN; 

DECLARE cur CURSOR FOR 
SELECT DISTINCT voter.ID,voter.Is_Voted FROM voter WHERE voter_id = voter.ID;

DECLARE CONTINUE HANDLER FOR NOT FOUND
SET no_more_rows = TRUE;  

OPEN cur;

read_loop: LOOP
 
FETCH cur INTO id,temp;

IF(no_more_rows = TRUE) THEN LEAVE read_loop;
 END IF;
 
 IF(voter_id = id) THEN SET Is_Voted = temp;
END IF;

END LOOP;

CLOSE cur;

SELECT Is_Voted;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Percentage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`admin`@`%` PROCEDURE `Percentage`( IN vot varchar(200))
    READS SQL DATA
BEGIN

DECLARE percentage FLOAT;
DECLARE Total_Vote INT;
DECLARE Particular_vote INT;
DECLARE candidate varchar(200);
DECLARE no_more_rows BOOLEAN;

DECLARE cur  CURSOR FOR
SELECT COUNT(candidate.Vote_Count),candidate.Vote_Count,candidate.Name FROM candidate;

DECLARE CONTINUE HANDLER FOR NOT FOUND
SET no_more_rows = TRUE;  

OPEN cur;

read_loop:LOOP
FETCH cur INTO Total_Vote,Particular_vote,candidate;

IF no_more_rows THEN 
  LEAVE read_loop;   
  END IF;
  
IF(candidate = vot ) THEN SET percentage = ( Particular_vote / Total_Vote ) * 100;
END IF;

END LOOP;
CLOSE cur;

SELECT candidate,percentage;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-06 12:51:21
