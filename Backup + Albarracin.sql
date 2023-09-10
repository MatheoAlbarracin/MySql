-- CREACION DE BACKUP DE DATOS DE TODAS LAS TABLAS DE MYSQL :) --


CREATE DATABASE  IF NOT EXISTS `gaming4u` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gaming4u`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gaming4u
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Dumping data for table `agregados`
--

LOCK TABLES `agregados` WRITE;
/*!40000 ALTER TABLE `agregados` DISABLE KEYS */;
INSERT INTO `agregados` VALUES (1001,'Teclado','RatÃ³n'),(1002,'Teclado','RatÃ³n'),(1003,'Teclado','RatÃ³n'),(1004,'Teclado','RatÃ³n'),(1005,'Teclado','RatÃ³n'),(2001,'Teclado','RatÃ³n'),(2002,'Teclado','RatÃ³n'),(2003,'Teclado','RatÃ³n'),(2004,'Teclado','RatÃ³n'),(2005,'Teclado','RatÃ³n');
/*!40000 ALTER TABLE `agregados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `armador`
--

LOCK TABLES `armador` WRITE;
/*!40000 ALTER TABLE `armador` DISABLE KEYS */;
INSERT INTO `armador` VALUES ('3001','4001'),('3002','4002'),('3003','4003'),('3004','4004'),('3005','4005'),('4001','5001'),('4002','5002'),('4003','5003'),('4004','5004'),('4005','5005'),('5001','6001'),('5002','6002'),('5003','6003'),('5004','6004'),('5005','6005'),('6001','7001'),('6002','7002'),('6003','7003'),('6004','7004'),('6005','7005'),('7001','8001'),('7002','8002'),('7003','8003'),('7004','8004'),('7005','8005'),('8001','9001'),('8002','9002'),('8003','9003'),('8004','9004'),('8005','9005');
/*!40000 ALTER TABLE `armador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `componentes`
--

LOCK TABLES `componentes` WRITE;
/*!40000 ALTER TABLE `componentes` DISABLE KEYS */;
INSERT INTO `componentes` VALUES ('1001','2001','3001','4001','5001','6001'),('1002','2002','3002','4002','5002','6002'),('1003','2003','3003','4003','5003','6003'),('1004','2004','3004','4004','5004','6004'),('1005','2005','3005','4005','5005','6005'),('2001','3001','4001','5001','6001','7001'),('2002','3002','4002','5002','6002','7002'),('2003','3003','4003','5003','6003','7003'),('2004','3004','4004','5004','6004','7004'),('2005','3005','4005','5005','6005','7005');
/*!40000 ALTER TABLE `componentes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `computadora`
--

LOCK TABLES `computadora` WRITE;
/*!40000 ALTER TABLE `computadora` DISABLE KEYS */;
INSERT INTO `computadora` VALUES (1001,'gabinete'),(1002,'gabinete'),(1003,'gabinete'),(1004,'gabinete'),(1005,'gabinete'),(2001,'gabinete'),(2002,'gabinete'),(2003,'gabinete'),(2004,'gabinete'),(2005,'gabinete');
/*!40000 ALTER TABLE `computadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `datos`
--

LOCK TABLES `datos` WRITE;
/*!40000 ALTER TABLE `datos` DISABLE KEYS */;
INSERT INTO `datos` VALUES (1001,'555-1234','contacto1001@example.com'),(1002,'555-5678','contacto1002@example.com'),(1003,'555-9876','contacto1003@example.com'),(1004,'555-4321','contacto1004@example.com'),(1005,'555-8765','contacto1005@example.com'),(1006,'555-5943','contacto1006@example.com'),(1007,'555-5944','contacto1007@example.com'),(1008,'555-5945','contacto1008@example.com'),(1009,'555-5946','contacto1009@example.com'),(1011,'555-4947','contacto1010@example.com'),(1012,'555-5948','contacto1011@example.com'),(1013,'555-5949','contacto1012@example.com'),(1014,'555-5950','contacto1013@example.com'),(2001,'555-2468','contacto2001@example.com'),(2002,'555-1357','contacto2002@example.com'),(2003,'555-8642','contacto2003@example.com'),(2004,'555-6790','contacto2004@example.com'),(2005,'555-9087','contacto2005@example.com');
/*!40000 ALTER TABLE `datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discos`
--

LOCK TABLES `discos` WRITE;
/*!40000 ALTER TABLE `discos` DISABLE KEYS */;
INSERT INTO `discos` VALUES (1001,'Disco Duro 1TB',NULL),(1002,'SSD 500GB',NULL),(1003,'Disco Externo 2TB',NULL),(1004,'Disco NVMe 1TB',NULL),(1005,'Disco PortÃ¡til 4TB',NULL),(2001,'HDD 2TB',NULL),(2002,'SSD 1TB',NULL),(2003,'Disco Externo 1TB',NULL),(2004,'Disco NVMe 500GB',NULL),(2005,'Disco PortÃ¡til 2TB',NULL);
/*!40000 ALTER TABLE `discos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `formulario`
--

LOCK TABLES `formulario` WRITE;
/*!40000 ALTER TABLE `formulario` DISABLE KEYS */;
INSERT INTO `formulario` VALUES (1001,2001,3001,'John','Doe','12345678'),(1002,1002,4023,'Jane','Smith','98765432'),(1003,1003,5034,'Michael','Johnson','45678901'),(1004,1004,6047,'Sarah','Williams','78901234'),(1005,1005,7058,'David','Brown','56789012'),(2001,2001,8069,'Emily','Jones','34567890'),(2002,2002,9082,'James','Miller','89012345'),(2003,2003,10195,'Amanda','Davis','23456789'),(2004,2004,11210,'Robert','Moore','67890123'),(2005,2005,12325,'Linda','Clark','90123456');
/*!40000 ALTER TABLE `formulario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `memorias`
--

LOCK TABLES `memorias` WRITE;
/*!40000 ALTER TABLE `memorias` DISABLE KEYS */;
INSERT INTO `memorias` VALUES (1001,'DDR4 8GB',NULL),(1002,'DDR3 16GB',NULL),(1003,'DDR4 16GB RGB',NULL),(1004,'LPDDR4X 8GB',NULL),(1005,'DDR4 32GB',NULL),(2001,'DDR4 4GB SO-DIMM',NULL),(2002,'DDR3L 8GB',NULL),(2003,'DDR4 64GB ECC',NULL),(2004,'LPDDR3 4GB',NULL),(2005,'DDR4 16GB Trident Z',NULL),(3001,'DDR3 4GB',NULL),(3002,'DDR4 16GB Vengeance',NULL),(3003,'LPDDR4 8GB',NULL),(3004,'DDR4 32GB Ballistix',NULL),(3005,'DDR3 8GB HyperX',NULL);
/*!40000 ALTER TABLE `memorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `motherboards`
--

LOCK TABLES `motherboards` WRITE;
/*!40000 ALTER TABLE `motherboards` DISABLE KEYS */;
INSERT INTO `motherboards` VALUES (1001,'ASUS Prime B450M-A',NULL),(1002,'GIGABYTE B550 AORUS PRO',NULL),(1003,'MSI MAG B550 TOMAHAWK',NULL),(1004,'ASRock B460M Pro4',NULL),(1005,'ASUS ROG Strix Z590-E Gaming',NULL),(2001,'GIGABYTE Z490 AORUS MASTER',NULL),(2002,'MSI MPG X570 GAMING PLUS',NULL),(2003,'ASRock X470 Taichi',NULL),(2004,'ASUS TUF B365M-PLUS Gaming',NULL),(2005,'BIOSTAR B550GTQ',NULL),(3001,'ASUS ROG Crosshair VIII Hero',NULL),(3002,'GIGABYTE B450M DS3H',NULL),(3003,'MSI B450 TOMAHAWK MAX',NULL),(3004,'ASRock H470M-ITX/ac',NULL),(3005,'ASUS PRIME Z590-A',NULL);
/*!40000 ALTER TABLE `motherboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `orden`
--

LOCK TABLES `orden` WRITE;
/*!40000 ALTER TABLE `orden` DISABLE KEYS */;
INSERT INTO `orden` VALUES (1001,2001,3001,4001,'2023-05-10'),(1002,2002,4023,4002,'2023-04-15'),(1003,2003,5034,4003,'2023-06-20'),(1004,2004,6047,4004,'2023-03-25'),(1005,2005,7058,4005,'2023-07-05'),(2001,2001,8069,5001,'2023-02-12'),(2002,2002,9082,5002,'2023-08-18'),(2003,2003,10195,5003,'2023-01-30'),(2004,2004,11210,5004,'2023-09-08'),(2005,2005,12325,5005,'2023-07-22');
/*!40000 ALTER TABLE `orden` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1008,'1001'),(2035,'1002'),(3072,'1003'),(4126,'1004'),(5210,'1005'),(6314,'2001'),(7465,'2002'),(8551,'2003'),(9612,'2004'),(10789,'2005');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `procesadores`
--

LOCK TABLES `procesadores` WRITE;
/*!40000 ALTER TABLE `procesadores` DISABLE KEYS */;
INSERT INTO `procesadores` VALUES (1045,'Intel Core i7-11700K',NULL),(2019,'AMD Ryzen 7 5800X',NULL),(3004,'Intel Core i9-11900K',NULL),(4078,'AMD Ryzen 9 5950X',NULL),(5032,'Intel Core i5-11600K',NULL),(6123,'AMD Ryzen 5 5600X',NULL),(7198,'Intel Core i3-10100',NULL),(8225,'AMD Ryzen 3 3300X',NULL),(9357,'Intel Pentium Gold G6400',NULL),(10342,'AMD Athlon 3000G',NULL);
/*!40000 ALTER TABLE `procesadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tarjetas`
--

LOCK TABLES `tarjetas` WRITE;
/*!40000 ALTER TABLE `tarjetas` DISABLE KEYS */;
INSERT INTO `tarjetas` VALUES (5001,'NVIDIA GeForce RTX 3080',NULL),(6023,'AMD Radeon RX 6800 XT',NULL),(7034,'NVIDIA GeForce RTX 3070',NULL),(8047,'AMD Radeon RX 6700 XT',NULL),(9058,'NVIDIA GeForce GTX 1660 Super',NULL),(10121,'AMD Radeon RX 6600 XT',NULL),(11242,'NVIDIA GeForce RTX 3060 Ti',NULL),(12365,'AMD Radeon RX 5500 XT',NULL),(13479,'NVIDIA GeForce GTX 1650',NULL),(14582,'AMD Radeon RX 570',NULL);
/*!40000 ALTER TABLE `tarjetas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ubicacion`
--

LOCK TABLES `ubicacion` WRITE;
/*!40000 ALTER TABLE `ubicacion` DISABLE KEYS */;
INSERT INTO `ubicacion` VALUES (3001,'12345','3','123 Main Street'),(4023,'54321','10','456 Elm Avenue'),(5034,'98765','5','789 Oak Lane'),(6047,'23456','2','567 Maple Road'),(7058,'87654','8','987 Pine Boulevard'),(8069,'34567','1','654 Cedar Street'),(9082,'67890','6','321 Birch Avenue'),(10195,'45678','4','876 Willow Lane'),(11210,'56789','9','234 Spruce Road'),(12325,'78901','7','109 Pineapple Avenue');
/*!40000 ALTER TABLE `ubicacion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-10 12:20:03
