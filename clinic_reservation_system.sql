CREATE DATABASE clinic_reservation_system;
use clinic_reservation_system;


DROP TABLE IF EXISTS `doctor`;
CREATE TABLE `doctor` (
  `doctor id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `speciality` varchar(60) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`doctor id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `doctor` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `patient`;
CREATE TABLE `patient` (
  `patient id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `phone number` varchar(45) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `nationality` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`patient id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `patient` WRITE;
UNLOCK TABLES;



DROP TABLE IF EXISTS `slot`;
CREATE TABLE `slot` (
  `slot id` int NOT NULL AUTO_INCREMENT,
  `doctor name` varchar(60) NOT NULL,
  `patient id` int DEFAULT NULL,
  `start time` time NOT NULL,
  `end time` time NOT NULL,
  PRIMARY KEY (`slot id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `slot` WRITE;
UNLOCK TABLES;

