/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-11.8.8-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.122.254    Database: Reserva_Tutories
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
-- Current Database: `Reserva_Tutories`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `Reserva_Tutories` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_uca1400_ai_ci */;

USE `Reserva_Tutories`;

--
-- Table structure for table `ALUMNE`
--

DROP TABLE IF EXISTS `ALUMNE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ALUMNE` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `cognoms` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_uk` (`email`),
  CONSTRAINT `EMAIL_CK` CHECK (`email` like '%@%.%')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ASSIGNATURA`
--

DROP TABLE IF EXISTS `ASSIGNATURA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSIGNATURA` (
  `codi_assignatura` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `nivell` varchar(255) NOT NULL,
  PRIMARY KEY (`codi_assignatura`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RESERVA`
--

DROP TABLE IF EXISTS `RESERVA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESERVA` (
  `id_reserva` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_alumne` int(10) unsigned NOT NULL,
  `id_tutor` int(10) unsigned NOT NULL,
  `codi_assignatura` varchar(255) NOT NULL,
  `data_reserva` date NOT NULL,
  `hora_inici` time NOT NULL,
  `duracio_minuts` int(10) unsigned NOT NULL,
  `canal` varchar(255) NOT NULL,
  `estat` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reserva`),
  KEY `RESERVA_ALUMNE_FK` (`id_alumne`),
  KEY `RESERVA_TUTOR_FK` (`id_tutor`),
  KEY `RESERVA_ASSIGNATURA_FK` (`codi_assignatura`),
  CONSTRAINT `RESERVA_ALUMNE_FK` FOREIGN KEY (`id_alumne`) REFERENCES `ALUMNE` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `RESERVA_ASSIGNATURA_FK` FOREIGN KEY (`codi_assignatura`) REFERENCES `ASSIGNATURA` (`codi_assignatura`) ON UPDATE CASCADE,
  CONSTRAINT `RESERVA_TUTOR_FK` FOREIGN KEY (`id_tutor`) REFERENCES `TUTOR` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CANAL_CK` CHECK (`canal` in ('aula','video')),
  CONSTRAINT `RESERVA_CHECK` CHECK (`estat` in ('pendent','confirmada','suspesa','realitzada')),
  CONSTRAINT `DURADA_CK` CHECK (`duracio_minuts` MOD 15 = 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `TUTOR`
--

DROP TABLE IF EXISTS `TUTOR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `TUTOR` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `modalitat_treball` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mail_uk` (`email`),
  CONSTRAINT `CK_MOD_TREBALL` CHECK (`modalitat_treball` in ('presencial','remot')),
  CONSTRAINT `EMAIL_CK` CHECK (`email` like '%@%.%')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping routines for database 'Reserva_Tutories'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-11-16 11:50:04
