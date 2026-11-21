/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.8-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.122.254    Database: problemahoras
-- ------------------------------------------------------
-- Server version	11.8.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `data`
--

DROP TABLE IF EXISTS `data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `data` (
  `dia` tinyint(2) NOT NULL,
  `mes` tinyint(2) NOT NULL,
  `year` smallint(4) NOT NULL,
  CONSTRAINT `ck_format_correcte` CHECK (
                                          (`dia` BETWEEN 1 AND 31)
                                      AND (`mes` BETWEEN 1 AND 12)
                                      AND (`year` > 0)
                                      AND (`mes` in (4,6,9,11) and `dia` between 1 and 30 or `mes` in (1,3,5,7,8,10,12) and `dia` between 1 and 31 or (`mes` = 2 and `dia` between 1 and 28) or (`mes` = 2 and `dia` between 1 and 29 AND (`year` % 4 = 0 AND `year` % 100 != 0 or `year` % 400 = 0))
                                          )
                                        )
                    ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `data` WRITE;
/*!40000 ALTER TABLE `data` DISABLE KEYS */;
INSERT INTO `data` VALUES
(23,10,2026),
(20,2,2026),
(23,12,2000);
/*!40000 ALTER TABLE `data` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-10-23 19:39:22


title-page:
  title:
    font-color: #ffffff
    font-size: 30
    font-style: bold
    top: 0%
  background-image: image:0372.jpg[fit=none, pdfwidth=100%, position=center]
  subtitle:
    font-color: #cccccc
    font-size: 26
    margin-top: 600
  authors:
    content: |-
      *Autor:* {author} {email} +
      *Versió:* {revnumber} +
      *Data:* {revdate}    
    font-size: 10
    font-color: #cccccc
    margin-top: 28
  revision:
    display: none