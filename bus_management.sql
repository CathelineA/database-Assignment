CREATE DATABASE  IF NOT EXISTS `bus_management` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bus_management`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bus_management
-- ------------------------------------------------------
-- Server version	5.5.20-log

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
-- Table structure for table `bus_stages`
--

DROP TABLE IF EXISTS `bus_stages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus_stages` (
  `BstagesId` int(11) NOT NULL,
  `busStageName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BstagesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_stages`
--

LOCK TABLES `bus_stages` WRITE;
/*!40000 ALTER TABLE `bus_stages` DISABLE KEYS */;
INSERT INTO `bus_stages` VALUES (12,'GAZ-masaka'),(13,'BusPark-mbarara'),(14,'total-Lukaya'),(15,'Bakuli-kampala'),(16,'mitoma'),(17,'milo20-Isingiro'),(18,'kikategate-Isingiro'),(19,'total-masaka'),(20,'Gaz -lukaya'),(21,'milo4- masaka');
/*!40000 ALTER TABLE `bus_stages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buses`
--

DROP TABLE IF EXISTS `buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buses` (
  `busId` int(11) NOT NULL,
  `BusNumber` varchar(45) DEFAULT NULL,
  `capacity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`busId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buses`
--

LOCK TABLES `buses` WRITE;
/*!40000 ALTER TABLE `buses` DISABLE KEYS */;
INSERT INTO `buses` VALUES (1,'UBG123','60'),(2,'UAA435','55'),(3,'UBM272','60'),(4,'UAT757','55'),(5,'UBD273','60'),(6,'UBE283','45'),(7,'UDA332','55'),(8,'UFF443','50'),(9,'UBA213','62'),(10,'UEF901','55');
/*!40000 ALTER TABLE `buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivers`
--

DROP TABLE IF EXISTS `drivers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drivers` (
  `DriverId` int(11) NOT NULL,
  `DriverName` varchar(45) DEFAULT NULL,
  `LicenceNumber` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DriverId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivers`
--

LOCK TABLES `drivers` WRITE;
/*!40000 ALTER TABLE `drivers` DISABLE KEYS */;
INSERT INTO `drivers` VALUES (900,'john Doe','234567','123-mbarara','0788924459'),(901,'Smith John','257343','256-kakoba','0784485324'),(902,'cathy cathy','775721','32-masaka','0785423421'),(903,'Emma tony','768433','543-katete','0772648235'),(904,'jorgan Flair','858842','78-Rwebikona','0755647732'),(905,'Eric Mabs','587783','673-Kampala','0777565632'),(906,'David Gates','768493','453-masaka','0758869883'),(907,'namu  Apollo','785783','755-Rwebikona','0746321342'),(908,'mark lee','284747','56-Lukaya','0745443223'),(909,'john woods','467574','75-kampala','07767458234');
/*!40000 ALTER TABLE `drivers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passengers`
--

DROP TABLE IF EXISTS `passengers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passengers` (
  `PassengerId` int(11) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PassengerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passengers`
--

LOCK TABLES `passengers` WRITE;
/*!40000 ALTER TABLE `passengers` DISABLE KEYS */;
INSERT INTO `passengers` VALUES (1,'patel','Ridhi','female','kakoba','0778578464'),(2,'Jean','mary','female','mbarara','0753625438'),(3,'john','Lee','male','kakyika','0775374182'),(4,'cathy','Aine','female','lugazi','0777354712'),(5,'Gerald','kawuma','male','nyamitanga','0768436462'),(6,'eddy','Amanya','male','katete','0778477483'),(7,'caro','Nantesi','female','katete','078354284'),(8,'Bella','Shaka','female','Ruharo','0746535234'),(9,'Derrick','walter','male','ruti','0777546285'),(10,'Junior','Smith','male','Lugazi','0755583756');
/*!40000 ALTER TABLE `passengers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `routesId` int(11) NOT NULL,
  `Origin` varchar(45) DEFAULT NULL,
  `destination` varchar(45) DEFAULT NULL,
  `distance` varchar(45) DEFAULT NULL,
  `fare` float DEFAULT NULL,
  PRIMARY KEY (`routesId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` VALUES (1,'Isingiro','mbarara','326',10000),(2,'mitooma','kamapla','230',40000),(3,'mbarara','kampala','245',35000),(4,'mbarara','masaka','80',20000),(5,'mitoma','mbarara','50',25000),(6,'masaka','kampala','190',25000),(7,'mbarara','lukaya','45',25000),(8,'lukaya','kampala','220',15000),(9,'mbarara','mpigi','160',15000),(10,'masaka','maya','34',10000);
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `scheduleId` int(11) NOT NULL,
  `DepartTime` varchar(12) DEFAULT NULL,
  `ArrivalTime` varchar(22) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`scheduleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (1,'8:00 am','1:00pm','2024-02-12'),(2,'1:00 pm','6:00 pm','2024-06-01'),(3,'9:00 am','12:00pm','2024-05-03'),(4,'3:00 pm','9:00pm','2024-06-04'),(5,'7:00 pm','1:00pm','2024-01-22'),(6,'11:00 Pm','4:00pm','2024-12-04'),(7,'4:00 pm','9:00pm','2024-06-08'),(8,'5:00am','11:am','2024-05-23');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tickets` (
  `ticketId` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `fareAmount` float DEFAULT NULL,
  `SeatNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ticketId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tickets`
--

LOCK TABLES `tickets` WRITE;
/*!40000 ALTER TABLE `tickets` DISABLE KEYS */;
INSERT INTO `tickets` VALUES (1,'2024-04-23',25000,'56'),(2,'2024-04-03',30000,'5'),(3,'2024-06-06',25000,'12'),(4,'2024-06-12',45000,'23'),(5,'2024-08-05',45000,'44'),(6,'2024-06-07',56000,'60'),(7,'2024-07-08',25000,'5'),(8,'2024-02-22',60000,'3'),(9,'2024-11-05',50000,'12');
/*!40000 ALTER TABLE `tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bus_management'
--

--
-- Dumping routines for database 'bus_management'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-11 22:34:23
