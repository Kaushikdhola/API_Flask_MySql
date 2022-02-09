-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: oneture
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `productID` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` decimal(10,2) DEFAULT NULL,
  `quantity` bigint DEFAULT NULL,
  `total_cost` decimal(10,2) DEFAULT NULL,
  `order_date_time` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'flowers',134.23,25,3355.75,'2022-02-08 19:49:10'),(2,'fruits',150.00,20,3000.00,'2022-02-08 20:04:02'),(4,'laptop',30000.00,10,510000.00,'2022-02-08 20:31:01'),(5,'HDD',230.25,25,5756.25,'2022-02-08 20:37:34'),(6,'SSD',255.00,12,3060.00,'2022-02-08 20:42:33'),(7,'keyboard',575.00,60,34500.00,'2022-02-08 20:59:22'),(8,'sperker',3500.00,10,35000.00,'2022-02-08 21:03:08'),(9,'mobile',15000.00,15,225000.00,'2022-02-08 21:10:01'),(10,'headphone',1250.00,50,62500.00,'2022-02-08 21:15:42'),(11,'watche',2600.00,19,49400.00,'2022-02-08 21:17:05'),(12,'flowers 1',134.23,25,3355.75,'2022-02-08 22:49:10'),(13,'fruits 1',150.00,20,3000.00,'2022-02-08 23:04:02'),(15,'laptop 1',30000.00,10,510000.00,'2022-02-08 23:31:01'),(16,'HDD 1',230.25,25,5756.25,'2022-02-08 23:37:34'),(17,'SSD 1',255.00,12,3060.00,'2022-02-08 23:42:33'),(18,'keyboard 1',575.00,60,34500.00,'2022-02-08 23:59:22'),(19,'sperker 1',3500.00,10,35000.00,'2022-02-09 10:20:08'),(20,'mobile 1',15000.00,15,225000.00,'2022-02-09 10:21:01'),(21,'headphone 1',1250.00,50,62500.00,'2022-02-09 10:30:42'),(22,'watche 1',2600.00,19,49400.00,'2022-02-09 10:40:05'),(23,'flowers 2',134.23,25,3355.75,'2022-02-09 10:55:10'),(24,'fruits 2',150.00,20,3000.00,'2022-02-09 10:59:02'),(26,'laptop 2',30000.00,10,510000.00,'2022-02-09 11:13:01'),(27,'HDD 2',230.25,25,5756.25,'2022-02-09 11:15:34');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-09 11:18:31