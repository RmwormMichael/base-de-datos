-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: globostudio
-- ------------------------------------------------------
-- Server version	9.1.0

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
  `id_order` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `points` int DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `date_order` date DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `direction` varchar(255) DEFAULT NULL,
  `id_user` int DEFAULT NULL,
  `id_order_item` int DEFAULT NULL,
  `id_city` int DEFAULT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_user` (`id_user`),
  KEY `id_order_item` (`id_order_item`),
  KEY `id_city` (`id_city`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`id_order_item`) REFERENCES `order_item` (`id_order_item`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`id_city`) REFERENCES `city` (`id_city`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'1',1,NULL,'2024-10-25','2024-10-25 20:30:00','Avenida 19 No. 98-03',1,NULL,1),(2,'2',2,NULL,'2024-10-25','2024-10-25 20:30:00','Calle 53 No 10-60/46',2,NULL,2),(3,'3',3,NULL,'2024-10-25','2024-10-25 20:30:00','Calle 10 # 5-51',3,NULL,3),(4,'4',1,NULL,'2024-10-25','2024-10-25 20:30:00','Avenida Calle 26 No 59-51',4,NULL,4),(5,'5',2,NULL,'2024-10-25','2024-10-25 20:30:00','Calle 9 # 9 – 62',5,NULL,5),(6,'6',3,NULL,'2024-10-25','2024-10-25 20:30:00','Calle 19 # 80A-40',6,NULL,1),(7,'7',1,NULL,'2024-10-25','2024-10-25 20:30:00','Carrera 21 # 17 -63',7,NULL,2),(8,'8',2,NULL,'2024-10-25','2024-10-25 20:30:00','Carrera 42 # 54-77',8,NULL,3);
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

-- Dump completed on 2024-11-04 18:58:11
