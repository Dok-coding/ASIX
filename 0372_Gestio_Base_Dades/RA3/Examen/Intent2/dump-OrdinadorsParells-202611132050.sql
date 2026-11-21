/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.8-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.122.254    Database: OrdinadorsParells
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
-- Current Database: `OrdinadorsParells`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `OrdinadorsParells` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;

USE `OrdinadorsParells`;

--
-- Table structure for table `FITXER`
--

DROP TABLE IF EXISTS `FITXER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FITXER` (
  `id_fitxer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tipus` varchar(100) DEFAULT NULL,
  `nom` varchar(100) NOT NULL,
  `ruta` varchar(255) NOT NULL,
  PRIMARY KEY (`id_fitxer`),
  UNIQUE KEY `FITXER_UNIQUE` (`ruta`),
  CONSTRAINT `ck_tipus` CHECK (`tipus` in ('llibres','apunts','revistes'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TEMA`
--

DROP TABLE IF EXISTS `TEMA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `TEMA` (
  `id_tema` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tema`),
  UNIQUE KEY `TEMATICA_UNIQUE` (`nom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TEMA_FITXER`
--

DROP TABLE IF EXISTS `TEMA_FITXER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `TEMA_FITXER` (
  `id_tema` int(10) unsigned NOT NULL,
  `id_fitxer` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_tema`,`id_fitxer`),
  KEY `TEMA_FITXER_FITXER_FK` (`id_fitxer`),
  CONSTRAINT `TEMA_FITXER_FITXER_FK` FOREIGN KEY (`id_fitxer`) REFERENCES `FITXER` (`id_fitxer`) ON UPDATE CASCADE,
  CONSTRAINT `TEMA_FITXER_TEMA_FK` FOREIGN KEY (`id_tema`) REFERENCES `TEMA` (`id_tema`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'OrdinadorsParells'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-11-13 20:50:03
