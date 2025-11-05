-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: university
-- ------------------------------------------------------
-- Server version	8.0.42

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

--
-- Current Database: `university`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `university` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `university`;

--
-- Table structure for table `course_instructors`
--

DROP TABLE IF EXISTS `course_instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_instructors` (
  `StudentID` int DEFAULT NULL,
  `CourseID` text,
  `InstructorID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_instructors`
--

LOCK TABLES `course_instructors` WRITE;
/*!40000 ALTER TABLE `course_instructors` DISABLE KEYS */;
INSERT INTO `course_instructors` VALUES (1,'C101',10),(2,'C101',10),(2,'C101',11),(1,'C102',10),(3,'C103',12),(3,'C104',13),(4,'C105',14),(4,'C106',15),(2,'C107',16),(1,'C108',17),(3,'C108',17);
/*!40000 ALTER TABLE `course_instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courseinstructors`
--

DROP TABLE IF EXISTS `courseinstructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courseinstructors` (
  `StudentID` int DEFAULT NULL,
  `CourseID` text,
  `InstructorID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courseinstructors`
--

LOCK TABLES `courseinstructors` WRITE;
/*!40000 ALTER TABLE `courseinstructors` DISABLE KEYS */;
INSERT INTO `courseinstructors` VALUES (1,'C101',10),(2,'C101',10),(2,'C101',11),(1,'C102',10),(3,'C103',12),(3,'C104',13),(4,'C105',14),(4,'C106',15),(2,'C107',16),(1,'C108',17),(3,'C108',17);
/*!40000 ALTER TABLE `courseinstructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `CourseID` text,
  `CourseName` text,
  `Credits` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('C101','Intro to CS',3),('C102','Calculus I',4),('C103','Physics I',4),('C104','Modern Physics',3),('C105','Circuits I',4),('C106','Signals and Systems',3),('C107','Linear Algebra',3),('C108','Data Structures',4);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollments`
--

DROP TABLE IF EXISTS `enrollments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollments` (
  `StudentID` int DEFAULT NULL,
  `CourseID` text,
  `EnrollmentDate` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollments`
--

LOCK TABLES `enrollments` WRITE;
/*!40000 ALTER TABLE `enrollments` DISABLE KEYS */;
INSERT INTO `enrollments` VALUES (1,'C101','2025-09-01'),(2,'C101','2025-09-03'),(1,'C102','2025-09-02'),(3,'C103','2025-09-04'),(3,'C104','2025-09-05'),(4,'C105','2025-09-06'),(4,'C106','2025-09-07'),(2,'C107','2025-09-03'),(1,'C108','2025-09-08'),(3,'C108','2025-09-08');
/*!40000 ALTER TABLE `enrollments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instructors` (
  `InstructorID` int DEFAULT NULL,
  `InstructorName` text,
  `Phone` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructors`
--

LOCK TABLES `instructors` WRITE;
/*!40000 ALTER TABLE `instructors` DISABLE KEYS */;
INSERT INTO `instructors` VALUES (10,'Dr.Adams','555-0100'),(10,'Dr.Baker','555-0111'),(11,'Dr.Adams','555-0111'),(12,'Dr.Clark','555-0122'),(13,'Dr.Daniels','555-0122'),(14,'Dr. Evans','555-0144'),(15,'Dr. Foster','555-0155'),(16,'Dr. Green','555-0166'),(17,'Dr. Hill','555-0177');
/*!40000 ALTER TABLE `instructors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students1`
--

DROP TABLE IF EXISTS `students1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students1` (
  `StudentID` int DEFAULT NULL,
  `StudentName` text,
  `Major` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students1`
--

LOCK TABLES `students1` WRITE;
/*!40000 ALTER TABLE `students1` DISABLE KEYS */;
INSERT INTO `students1` VALUES (1,'Alice Smith','Computer Science'),(2,'Bob Jones','Mathematics'),(3,'Carol Lee','physics'),(4,'David Kim','Electrical Engineering');
/*!40000 ALTER TABLE `students1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `univ_denorm`
--

DROP TABLE IF EXISTS `univ_denorm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `univ_denorm` (
  `StudentID` int DEFAULT NULL,
  `studentName` text,
  `Major` text,
  `CourseID` text,
  `CourseName` text,
  `Credits` int DEFAULT NULL,
  `EnrollmentDate` text,
  `InstructorID` int DEFAULT NULL,
  `InstructorName` text,
  `Phone` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `univ_denorm`
--

LOCK TABLES `univ_denorm` WRITE;
/*!40000 ALTER TABLE `univ_denorm` DISABLE KEYS */;
INSERT INTO `univ_denorm` VALUES (1,'Alice Smith','Computer Science','C101','Intro to CS',3,'2025-09-01',10,'Dr.Adams','555-0100'),(1,'Alice Smith','Computer Science','C101','Intro to CS',3,'2025-09-01',10,'Dr.Baker','555-0111'),(2,'Bob Jones','Mathematics','C101','Intro to CS',3,'2025-09-03',10,'Dr.Adams','555-0100'),(2,'Bob Jones','Mathematics','C101','Intro to CS',3,'2025-09-03',11,'Dr.Adams','555-0111'),(1,'Alice Smith','Computer Science','C102','Calculus I',4,'2025-09-02',10,'Dr.Baker','555-0111'),(3,'Carol Lee','physics','C103','Physics I',4,'2025-09-04',12,'Dr.Clark','555-0122'),(3,'Carol Lee','physics','C104','Modern Physics',3,'2025-09-05',13,'Dr.Daniels','555-0122'),(4,'David Kim','Electrical Engineering','C105','Circuits I',4,'2025-09-06',14,'Dr. Evans','555-0144'),(4,'David Kim','Electrical Engineering','C106','Signals and Systems',3,'2025-09-07',15,'Dr. Foster','555-0155'),(2,'Bob Jones','Mathematics','C107','Linear Algebra',3,'2025-09-03',16,'Dr. Green','555-0166'),(1,'Alice Smith','Computer Science','C108','Data Structures',4,'2025-09-08',17,'Dr. Hill','555-0177'),(3,'Carol Lee','Physics','C108','Data Structures',4,'2025-09-08',17,'Dr. Hill','555-0177'),(1,'Alice Smith','Computer Science','C101','Intro to CS',3,'2025-09-01',10,'Dr.Adams','555-0100'),(1,'Alice Smith','Computer Science','C101','Intro to CS',3,'2025-09-01',10,'Dr.Baker','555-0111'),(2,'Bob Jones','Mathematics','C101','Intro to CS',3,'2025-09-03',10,'Dr.Adams','555-0100'),(2,'Bob Jones','Mathematics','C101','Intro to CS',3,'2025-09-03',11,'Dr.Adams','555-0111'),(1,'Alice Smith','Computer Science','C102','Calculus I',4,'2025-09-02',10,'Dr.Baker','555-0111'),(3,'Carol Lee','physics','C103','Physics I',4,'2025-09-04',12,'Dr.Clark','555-0122'),(3,'Carol Lee','physics','C104','Modern Physics',3,'2025-09-05',13,'Dr.Daniels','555-0122'),(4,'David Kim','Electrical Engineering','C105','Circuits I',4,'2025-09-06',14,'Dr. Evans','555-0144'),(4,'David Kim','Electrical Engineering','C106','Signals and Systems',3,'2025-09-07',15,'Dr. Foster','555-0155'),(2,'Bob Jones','Mathematics','C107','Linear Algebra',3,'2025-09-03',16,'Dr. Green','555-0166'),(1,'Alice Smith','Computer Science','C108','Data Structures',4,'2025-09-08',17,'Dr. Hill','555-0177'),(3,'Carol Lee','Physics','C108','Data Structures',4,'2025-09-08',17,'Dr. Hill','555-0177');
/*!40000 ALTER TABLE `univ_denorm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'university'
--

--
-- Dumping routines for database 'university'
--

--
-- Current Database: `amrutha`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `amrutha` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `amrutha`;

--
-- Dumping events for database 'amrutha'
--

--
-- Dumping routines for database 'amrutha'
--

--
-- Current Database: `ammu`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ammu` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ammu`;

--
-- Temporary view structure for view `amrutha`
--

DROP TABLE IF EXISTS `amrutha`;
/*!50001 DROP VIEW IF EXISTS `amrutha`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `amrutha` AS SELECT 
 1 AS `name`,
 1 AS `dept_id`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Alice Johnson','alice@example.com'),(2,'Bob Smith','bob@example.com'),(3,'Charlie Brown','charlie@example.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `dept_id` int NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (10,'HR'),(20,'IT'),(40,'Finance');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments1`
--

DROP TABLE IF EXISTS `departments1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments1` (
  `salary` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments1`
--

LOCK TABLES `departments1` WRITE;
/*!40000 ALTER TABLE `departments1` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `dept_id` int DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Alice',10),(2,'Bob',20),(3,'Charlie',30);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeess`
--

DROP TABLE IF EXISTS `employeess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeess` (
  `emp_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeess`
--

LOCK TABLES `employeess` WRITE;
/*!40000 ALTER TABLE `employeess` DISABLE KEYS */;
INSERT INTO `employeess` VALUES (1,'Alice','IT'),(2,'Bob','HR'),(3,'Charlie','Finance');
/*!40000 ALTER TABLE `employeess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `OrderDate` date NOT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (101,'2025-08-01',1),(102,'2025-08-05',2),(103,'2025-08-06',1),(104,'2025-08-08',3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderss`
--

DROP TABLE IF EXISTS `orderss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderss` (
  `id` int NOT NULL,
  `Customer` varchar(50) DEFAULT NULL,
  `Amount` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderss`
--

LOCK TABLES `orderss` WRITE;
/*!40000 ALTER TABLE `orderss` DISABLE KEYS */;
INSERT INTO `orderss` VALUES (1,'Alice',400),(2,'Bob',500),(3,'Charlie',650);
/*!40000 ALTER TABLE `orderss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `id` int DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'Laptop','Electronics',3,800.00),(2,'Smartphone','Electronics',5,600.00),(3,'Desk','Furniture',2,150.00),(4,'Chair','Furniture',4,100.00),(5,'Mouse','Electronics',10,20.00),(1,'Laptop','Electronics',3,800.00),(2,'Smartphone','Electronics',5,600.00),(3,'Desk','Furniture',2,150.00),(4,'Chair','Furniture',4,100.00),(5,'Mouse','Electronics',10,20.00),(1,'Laptop','Electronics',3,800.00),(2,'Smartphone','Electronics',5,600.00),(3,'Desk','Furniture',2,150.00),(4,'Chair','Furniture',4,100.00),(5,'Mouse','Electronics',10,20.00),(1,'Laptop','Electronics',3,800.00),(2,'Smartphone','Electronics',5,600.00),(3,'Desk','Furniture',2,150.00),(4,'Chair','Furniture',4,100.00),(5,'Mouse','Electronics',10,20.00),(1,'Laptop','Electronics',3,800.00),(2,'Smartphone','Electronics',5,600.00),(3,'Desk','Furniture',2,150.00),(4,'Chair','Furniture',4,100.00),(5,'Mouse','Electronics',10,20.00),(1,'Laptop','Electronics',3,800.00),(2,'Smartphone','Electronics',5,600.00),(3,'Desk','Furniture',2,150.00),(4,'Chair','Furniture',4,100.00),(5,'Mouse','Electronics',10,20.00),(1,'Laptop','Electronics',3,800.00),(2,'Smartphone','Electronics',5,600.00),(3,'Desk','Furniture',2,150.00),(4,'Chair','Furniture',4,100.00),(5,'Mouse','Electronics',10,20.00);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `ID` int DEFAULT NULL,
  `NAME` varchar(5) DEFAULT NULL,
  `OS` int DEFAULT NULL,
  `DBMS` int DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'A',12,1),(2,'B',13,2),(5,'E',16,4),(3,'C',NULL,NULL),(4,'D',16,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `SNO` int DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `MARKS` int DEFAULT NULL,
  `RESULT` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'AMMU',99,'PASS'),(2,'VYSHU',99,'PASS'),(1,'AMMU',99,'PASS'),(2,'VYSHU',99,'PASS'),(3,'NAGIN',45,'FAIL'),(4,'BHAVYA',46,'FAIL');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students3`
--

DROP TABLE IF EXISTS `students3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students3` (
  `SNO` int DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `DOB` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students3`
--

LOCK TABLES `students3` WRITE;
/*!40000 ALTER TABLE `students3` DISABLE KEYS */;
INSERT INTO `students3` VALUES (1,'AMMU',6455),(2,'BHAV',467);
/*!40000 ALTER TABLE `students3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tcl`
--

DROP TABLE IF EXISTS `tcl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tcl` (
  `ID` int DEFAULT NULL,
  `NAME` varchar(30) DEFAULT NULL,
  `PAYMENT` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tcl`
--

LOCK TABLES `tcl` WRITE;
/*!40000 ALTER TABLE `tcl` DISABLE KEYS */;
INSERT INTO `tcl` VALUES (64,'PRIYANTH',100000),(64,'PRIYANTH',0),(64,'PRIYANTH',100000),(64,'AMRUTHA',100000),(64,'AMRUTHA',1222),(64,'AMRUTHA',23444);
/*!40000 ALTER TABLE `tcl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ammu'
--

--
-- Dumping routines for database 'ammu'
--

--
-- Current Database: `university`
--

USE `university`;

--
-- Current Database: `amrutha`
--

USE `amrutha`;

--
-- Current Database: `ammu`
--

USE `ammu`;

--
-- Final view structure for view `amrutha`
--

/*!50001 DROP VIEW IF EXISTS `amrutha`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `amrutha` AS select `employeess`.`name` AS `name`,`departments`.`dept_id` AS `dept_id` from (`employeess` join `departments`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-15  9:56:24
