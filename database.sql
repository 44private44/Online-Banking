-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: banking
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact_table`
--

DROP TABLE IF EXISTS `contact_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_table` (
  `user_name` varchar(50) NOT NULL,
  `user_mobileno` varchar(10) NOT NULL,
  `user_mail` varchar(30) NOT NULL,
  `user_message` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_table`
--

LOCK TABLES `contact_table` WRITE;
/*!40000 ALTER TABLE `contact_table` DISABLE KEYS */;
INSERT INTO `contact_table` VALUES ('soham modi','9328243252','sohammodi13@gmail.com','I am JAVA developer...'),('kenvi modi','9328243252','sohammodi13@gmail.com','I am JAVA developer...'),('raju modi','9328243252','sohammodi13@gmail.com','I am JAVA developer...');
/*!40000 ALTER TABLE `contact_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login1`
--

DROP TABLE IF EXISTS `login1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login1` (
  `Userid` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  PRIMARY KEY (`Userid`),
  UNIQUE KEY `Userid_UNIQUE` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login1`
--

LOCK TABLES `login1` WRITE;
/*!40000 ALTER TABLE `login1` DISABLE KEYS */;
INSERT INTO `login1` VALUES ('123456','soham'),('1s2l3s','love'),('93282','gandhinagar'),('AQ2001','shuchi'),('gandhinagar','ahmedabad'),('soham modi78678','munabhai'),('soham modi89','soham');
/*!40000 ALTER TABLE `login1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_random`
--

DROP TABLE IF EXISTS `otp_random`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_random` (
  `otp` int NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobileno` varchar(10) NOT NULL,
  PRIMARY KEY (`otp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_random`
--

LOCK TABLES `otp_random` WRITE;
/*!40000 ALTER TABLE `otp_random` DISABLE KEYS */;
INSERT INTO `otp_random` VALUES (2481,'sohmmodi13@gmail.com','9328243252'),(2661,'sohmmodi13@gmail.com','9328243252'),(3074,'sohmmodi13@gmail.com','9328243252'),(5747,'sohammodi13@gmail.com','9328243252'),(7637,'sohmmodi13@gmail.com','9524584'),(8384,'sohmmodi13@gmail.com','9328243252'),(8890,'sohammodi13@gmail.com','9328243252');
/*!40000 ALTER TABLE `otp_random` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otp_table`
--

DROP TABLE IF EXISTS `otp_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `otp_table` (
  `otp` int NOT NULL,
  PRIMARY KEY (`otp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otp_table`
--

LOCK TABLES `otp_table` WRITE;
/*!40000 ALTER TABLE `otp_table` DISABLE KEYS */;
INSERT INTO `otp_table` VALUES (2481),(2661),(3074),(5377),(5747),(6377),(7513),(7637),(8384),(8890),(9740);
/*!40000 ALTER TABLE `otp_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reference_id`
--

DROP TABLE IF EXISTS `reference_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reference_id` (
  `refid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reference_id`
--

LOCK TABLES `reference_id` WRITE;
/*!40000 ALTER TABLE `reference_id` DISABLE KEYS */;
INSERT INTO `reference_id` VALUES ('ffqz'),('ld66'),('ssmm'),('yyqw'),('93soham93'),('91shuchi91'),('92bisag92');
/*!40000 ALTER TABLE `reference_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `security`
--

DROP TABLE IF EXISTS `security`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `security` (
  `security_pin` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `security`
--

LOCK TABLES `security` WRITE;
/*!40000 ALTER TABLE `security` DISABLE KEYS */;
INSERT INTO `security` VALUES ('123456'),('7777'),('111111'),('777777'),('111111'),('654321'),('4321'),('1234');
/*!40000 ALTER TABLE `security` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signon_final`
--

DROP TABLE IF EXISTS `signon_final`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signon_final` (
  `userid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(30) NOT NULL,
  `captcha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signon_final`
--

LOCK TABLES `signon_final` WRITE;
/*!40000 ALTER TABLE `signon_final` DISABLE KEYS */;
INSERT INTO `signon_final` VALUES ('123456','soham','Modi sohamkumar rajendrakumar ','12Q5ZM'),('123456','soham','Modi sohamkumar rajendrakumar ','12Q5ZM'),('soham modi','123456','Modi sohamkumar rajendrakumar ','12Q5ZM'),('123456','soham','Modi sohamkumar rajendrakumar ','12Q5ZM');
/*!40000 ALTER TABLE `signon_final` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup_data`
--

DROP TABLE IF EXISTS `signup_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup_data` (
  `signup_userid` varchar(20) NOT NULL,
  `signup_password` varchar(25) NOT NULL,
  `signup_confirm_password` varchar(25) NOT NULL,
  `signup_email` varchar(40) NOT NULL,
  `signup_accountno` varchar(14) NOT NULL,
  `signup_acoounttype` varchar(20) DEFAULT NULL,
  `signup_ifsc` varchar(10) NOT NULL,
  `signup_mobileno` varchar(10) NOT NULL,
  PRIMARY KEY (`signup_userid`,`signup_accountno`,`signup_ifsc`),
  UNIQUE KEY `user_id_UNIQUE` (`signup_userid`),
  UNIQUE KEY `signup_accountno_UNIQUE` (`signup_accountno`),
  UNIQUE KEY `signup_ifsc_UNIQUE` (`signup_ifsc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup_data`
--

LOCK TABLES `signup_data` WRITE;
/*!40000 ALTER TABLE `signup_data` DISABLE KEYS */;
INSERT INTO `signup_data` VALUES ('soham modi78678','munabhai','munabhai','sohammodi13@gmail.com','kjbkjbbab53876','Saving account','LLGG','9328243252'),('soham modi89','soham','soham','sohammodi13@gmail.com','hvhjvsjva','Current account','dffe','9328243252');
/*!40000 ALTER TABLE `signup_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `success_transfer_data`
--

DROP TABLE IF EXISTS `success_transfer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `success_transfer_data` (
  `id` varchar(10) NOT NULL,
  `account_no` varchar(45) NOT NULL,
  `money` varchar(45) NOT NULL,
  `rest_money` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `success_transfer_data`
--

LOCK TABLES `success_transfer_data` WRITE;
/*!40000 ALTER TABLE `success_transfer_data` DISABLE KEYS */;
INSERT INTO `success_transfer_data` VALUES ('101','123456Wsr4579','5000','20000.75'),('101','123456Wsr4579','4000','16000.75'),('101','123456Wsr4579','5000','20000.75'),('101','123456Wsr4579','5000','20000.75'),('101','123456Wsr4579','4000','16000.75');
/*!40000 ALTER TABLE `success_transfer_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_data`
--

DROP TABLE IF EXISTS `transfer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfer_data` (
  `account_number` varchar(20) NOT NULL,
  `transfer_money` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_data`
--

LOCK TABLES `transfer_data` WRITE;
/*!40000 ALTER TABLE `transfer_data` DISABLE KEYS */;
INSERT INTO `transfer_data` VALUES ('123456Wsr4579','4000'),('123456Wsr4579','12000'),('123456Wsr4579','1000'),('123456Wsr4579','5000'),('123456Wsr4579','4000'),('123456Wsr4579','5000'),('123456Wsr4579','5000'),('123456Wsr4579','4000');
/*!40000 ALTER TABLE `transfer_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-18 11:32:25
