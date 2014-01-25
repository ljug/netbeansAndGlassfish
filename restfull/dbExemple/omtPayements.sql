-- MySQL dump 10.13  Distrib 5.5.35, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: omtPayements
-- ------------------------------------------------------
-- Server version	5.5.35-0ubuntu0.13.10.1

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
-- Current Database: `omtPayements`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `omtPayements` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `omtPayements`;

--
-- Table structure for table `payementlog`
--

DROP TABLE IF EXISTS `payementlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payementlog` (
  `ficheId` int(11) NOT NULL,
  `token` varchar(45) DEFAULT NULL COMMENT 'Le token utlisé pour la sécurité des reauetes correspondant au payement de la iche ficheId.\nlogin (ficheid, clé1) => géneration d''un token qui sera utilisé dans les requetes suivantes\n',
  `auditeursId` varchar(10) NOT NULL,
  `NomComplet` varchar(45) DEFAULT NULL,
  `NomCompletArabe` varchar(45) DEFAULT NULL,
  `montant` int(11) NOT NULL,
  `debutTraitement` datetime DEFAULT NULL,
  `findTraitement` datetime DEFAULT NULL,
  `prisEnCompte` tinyint(4) DEFAULT NULL COMMENT 'Pros en compte => on a marqué láuditeur ayant payé dans db_isae',
  PRIMARY KEY (`ficheId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payementlog`
--

LOCK TABLES `payementlog` WRITE;
/*!40000 ALTER TABLE `payementlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `payementlog` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-01-25 21:40:27
