# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.26)
# Database: SMU PLAY&STUDY
# Generation Time: 2021-03-29 17:12:10 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table Chapter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Chapter`;

CREATE TABLE `Chapter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Cohort
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Cohort`;

CREATE TABLE `Cohort` (
  `id` varchar(11) NOT NULL DEFAULT '',
  `CourseName` varchar(45) DEFAULT NULL,
  `ProfessorID` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ProfessorID` (`ProfessorID`),
  CONSTRAINT `ProfessorID` FOREIGN KEY (`ProfessorID`) REFERENCES `User` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `Cohort` WRITE;
/*!40000 ALTER TABLE `Cohort` DISABLE KEYS */;

INSERT INTO `Cohort` (`id`, `CourseName`, `ProfessorID`)
VALUES
	('CS321','Introduction to software engineering',763),
	('CS412','Cyber security management',763),
	('CS421','Requirements and user experience',763),
	('CS428','Software quality and testing',763),
	('CS434','Data analytics',763),
	('ISS497','Research Methods',763);

/*!40000 ALTER TABLE `Cohort` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Professor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Professor`;

CREATE TABLE `Professor` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Professor_Subjects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Professor_Subjects`;

CREATE TABLE `Professor_Subjects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Professor_Id` int(11) DEFAULT NULL,
  `Subject_Name` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Quiz
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Quiz`;

CREATE TABLE `Quiz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Slides
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Slides`;

CREATE TABLE `Slides` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table Student
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Student`;

CREATE TABLE `Student` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table User
# ------------------------------------------------------------

DROP TABLE IF EXISTS `User`;

CREATE TABLE `User` (
  `Email` varchar(50) NOT NULL DEFAULT '',
  `Id` int(11) DEFAULT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Email`),
  UNIQUE KEY `Prim` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;

INSERT INTO `User` (`Email`, `Id`, `Name`, `Password`)
VALUES
	('',NULL,NULL,NULL),
	('emna@medtech.tn',789,'yemna','vv'),
	('ranim@medtech.tn',123,'ranim','aa'),
	('salma.hamza@medtech.tn',763,'Salma Hamza','qwerty'),
	('skander.bahrini@medtech.tn',134,'skander bahrini','eee'),
	('soumaya.labbene@medtech.tn',1810837,'Soumaya Labbene','azerty');

/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
