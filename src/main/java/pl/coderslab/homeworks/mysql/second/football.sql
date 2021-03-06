-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: football
-- ------------------------------------------------------
-- Server version	5.7.16-0ubuntu0.16.04.1

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
-- Table structure for table `Games`
--

DROP TABLE IF EXISTS `Games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_home` int(11) DEFAULT NULL,
  `team_home_goals` int(11) DEFAULT NULL,
  `team_away` int(11) DEFAULT NULL,
  `team_away_goals` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Games_1_idx` (`team_home`),
  KEY `fk_Games_2_idx` (`team_away`),
  CONSTRAINT `fk_Games_1` FOREIGN KEY (`team_home`) REFERENCES `Teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Games_2` FOREIGN KEY (`team_away`) REFERENCES `Teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Games`
--

LOCK TABLES `Games` WRITE;
/*!40000 ALTER TABLE `Games` DISABLE KEYS */;
INSERT INTO `Games` VALUES
(17,1,0,4,1),
(18,1,1,5,0),
(19,1,3,6,0),
(20,1,5,8,0),
(21,1,1,9,0),
(22,1,1,10,0),
(23,1,3,14,2),
(24,1,3,16,2),
(25,2,2,1,1),
(26,2,2,4,0),
(27,2,2,5,0),
(28,2,0,6,1),
(29,2,2,9,1),
(30,2,2,14,1),
(31,2,5,16,2),
(32,3,1,1,3),
(33,3,1,2,5),
(34,3,1,4,1),
(35,3,3,7,2),
(36,3,4,12,1),
(37,3,5,16,2),
(38,4,0,5,2),
(39,4,2,6,0),
(40,4,1,7,1),
(41,4,4,9,3),
(42,4,2,11,0),
(43,4,1,14,1),
(44,4,4,15,3),
(48,5,1,3,2),
(49,5,0,7,0),
(50,5,2,8,3),
(51,5,3,9,1),
(52,5,0,10,3),
(53,5,1,11,0),
(54,5,2,15,0),
(55,6,2,3,3),
(56,6,1,5,3),
(57,6,1,8,1),
(58,6,0,9,1),
(59,6,2,10,1),
(60,6,1,11,0),
(61,6,4,13,0),
(62,6,4,14,1),
(63,7,1,1,2),
(64,7,0,2,4),
(65,7,1,6,0),
(66,7,1,11,1),
(67,7,2,12,0),
(68,7,1,14,2),
(69,7,0,16,1),
(70,8,0,3,2),
(71,8,0,4,0),
(72,8,0,7,2),
(73,8,1,10,2),
(74,8,0,11,1),
(75,8,2,12,3),
(76,8,3,13,0),
(77,8,5,15,1),
(78,9,2,3,5),
(79,9,0,7,0),
(80,9,1,8,1),
(81,9,2,10,1),
(82,9,1,11,2),
(83,9,4,13,0),
(84,9,4,15,2),
(85,10,0,2,0),
(86,10,1,3,3),
(87,10,2,4,6),
(88,10,3,7,1),
(89,10,2,11,1),
(90,10,1,12,0),
(91,10,2,13,2),
(92,10,0,15,4),
(93,11,2,1,3),
(94,11,1,2,0),
(95,11,0,5,1),
(96,11,5,12,0),
(97,11,2,14,2),
(98,11,3,16,2),
(99,12,1,1,1),
(100,12,1,2,5),
(101,12,2,4,1),
(102,12,1,5,2),
(103,12,0,6,0),
(104,12,0,9,5),
(105,12,3,14,1),
(106,12,2,16,1),
(107,13,1,1,2),
(108,13,0,2,2),
(109,13,1,4,5),
(110,13,0,7,2),
(111,13,2,11,1),
(112,13,2,12,1),
(113,13,1,15,0),
(114,13,3,16,1),
(115,14,0,3,5),
(116,14,2,5,3),
(117,14,2,8,3),
(118,14,1,9,1),
(119,14,2,10,1),
(120,14,1,13,1),
(121,14,3,15,2),
(122,15,0,1,1),
(123,15,1,2,3),
(124,15,1,6,0),
(125,15,0,7,3),
(126,15,3,11,2),
(127,15,1,12,4),
(128,15,2,16,1),
(129,16,1,3,3),
(130,16,0,4,2),
(131,16,0,5,4),
(132,16,1,6,4),
(133,16,1,8,3),
(134,16,3,9,0),
(135,16,2,10,1),
(136,16,4,14,0);
/*!40000 ALTER TABLE `Games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) COLLATE utf8_polish_ci NOT NULL,
  `points` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES (1,'Piast Piast??w',37),
(2,'Per??a Z??otok??os',34),
(3,'LKS Chlebnia',34),
(4,'Naprz??d Brwin??w',28),
(5,'KS Teresin',26),
(6,'J??zefovia J??zef??w',20),
(7,'Ok??cie Warszawa',19),
(8,'??yrardowianka ??yrard??w',18),
(9,'Przysz??o???? W??ochy',18),
(10,'Ry?? Laski',17),
(11,'SEMP Ursyn??w',17),
(12,'Promyk Nowa Sucha',15),
(13,'??wit Warszawa',13),
(14,'FC Lesznowola',12),
(15,'Pogo?? II Grodzisk Mazowiecki',12),
(16,'Milan Milan??wek',12);
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-14 15:50:11