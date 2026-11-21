/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.8-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.122.254    Database: problema_nif
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
-- Table structure for table `nif`
--

DROP TABLE IF EXISTS `nif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `nif` (
  `dni_nie` varchar(9) NOT NULL,
  UNIQUE KEY `dni_nie` (`dni_nie`) ,
  CONSTRAINT ck_valid_nif check (char_length(dni_nie) = 9
  AND (
      (
        left(dni_nie,1) IN ('X','Y','Z')
        AND SUBSTRING(dni_nie, 2, 7) BETWEEN '0000000'AND '9999999'
        AND RIGHT (dni_nie,1) = SUBSTRING('TRWAGMYFPDXBNJZSQVHLCKE',
                (
                  CONCAT(
                  CASE LEFT(dni_nie,1)
                  WHEN 'X' THEN '0'
                  WHEN 'Y' THEN '1'
                  WHEN 'Z' THEN '2'
            END, SUBSTRING(dni_nie,2,7)) % 23) + 1 , 1)
      )
  OR 
      (
        left(dni_nie,1) between '0' and '9'
        AND left(dni_nie,8) between '00000000' and '99999999'
        AND RIGHT(dni_nie, 1) = SUBSTRING('TRWAGMYFPDXBNJZSQVHLCKE', (LEFT(dni_nie, 8) % 23) + 1, 1) 
      )
      )
                              )
                    )
ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nif`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `nif` WRITE;
/*!40000 ALTER TABLE `nif` DISABLE KEYS */;
/*!40000 ALTER TABLE `nif` ENABLE KEYS */;
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

-- Dump completed on 2026-10-24 12:49:16
