-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: sport
-- ------------------------------------------------------
-- Server version	5.6.51-log

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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `apellido` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `usuario` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `clave` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `sueldo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `usuario` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (1,'Kevin','Baldovinos','Kevin','Kevin',65000),(2,'Karen','Hipolito','Karen','Hipoli',30000);
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alimentos`
--

DROP TABLE IF EXISTS `alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alimentos` (
  `id` varchar(10) NOT NULL,
  `alimento` varchar(170) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `costo` float DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `descripcion` varchar(500) DEFAULT NULL,
  `cantidad` float DEFAULT NULL,
  `calorias` float DEFAULT NULL,
  `grasastotales` float DEFAULT NULL,
  `colesterol` float DEFAULT NULL,
  `sodio` float DEFAULT NULL,
  `potasio` float DEFAULT NULL,
  `carbohidratos` float DEFAULT NULL,
  `proteinas` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UniqueAlimento` (`alimento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentos`
--

LOCK TABLES `alimentos` WRITE;
/*!40000 ALTER TABLE `alimentos` DISABLE KEYS */;
INSERT INTO `alimentos` VALUES ('1010BBD001','Powerbar 15 Electrolitos','BEBIDA',65,'powerFG.jpg','Bebida isotónica para deportistas con 5 electrolitos, sin calorías y sin azúcares, 100% refrescantes',100,1,1,1,1,1,1,1),('101BBD002','Torq Sobre Monodosis Limón','BEBIDA ',37.99,'torlimo.jpg','Este producto ha sido cuidadosamente formulado para entregar la mezcla única de TORQ de múltiples carbohidratos transportables, líquidos y electrolitos a los músculos que trabajan de manera extremadamente rápida y eficiente utilizando la tecnología 2: 1 de maltodextrina: fructosa y los 5 electrolitos clave.',100,1,1,1,1,1,1,1),('101BBD003','Totum Sport Sobres Monodosis','BEBIDA',300.99,'totum.jpg','100% natural que te aporta los 78 electrolitos necesarios para aumentar tu rendimiento, evitar lesiones y recuperarte después del ejercicio. Porque en los minerales está el auténtico poder.',120,1,1,1,1,1,1,1),('101BBD004','Torq Sobre Monodosis Naranja','BEBIDA',37.99,'tornara.jpg','La bebida energética TORQ forma parte del sistema de alimentación TORQ, por lo que se puede utilizar junto con los geles, barras y masticables energéticos de TORQ para lograr un rendimiento óptimo. Tómese el tiempo para leer sobre el sistema de abastecimiento de combustible TORQ haciendo clic AQUÍ y asegúrese de aprovechar al máximo este producto.',110,1,1,1,1,1,1,1),('101EMP001','FullGas Avena Premium','EMPAQUETADO',112.49,'fullgas.jpg','FullGas Avena Premium 1Kg Galleta&Crema',100,1,1,1,1,1,1,1),('101EMP002','Born Fruits Memory Plus 45 gr','EMPAQUETADO',37.99,'born.jpg','Mezcla de frutas y nueces para estimular tu memoria, energía para tu cerebro Expertos nutricionistas han realizado una cuidadosa selección de esta mezcla de deliciosos frutos secos del Born y los mejores frutos secos. Una combinación natural de piña, coco, plátano, almendras y pistachos que te ayudan a fortalecer tu memoria gracias a las vitaminas y minerales que te aportan.',150,1,1,1,NULL,NULL,NULL,NULL),('101EMP003','Gold Nutrition Avena','EMPAQUETADO',93.99,'gold.jpg','La avena lista para mezclar es la forma ideal de tener un día completo de sabor. Prepárese para su desayuno o merienda saludable con nuestra avena molida e instantánea que se puede romper.',130,1,1,1,1,1,1,1),('101EMP004','Gu Stroopwafel Caremelo Café','EMPAQUETADO',36.99,'gucafe.jpg','Caja con 16 sobres creado para el uso diario, antes y durante tu entrenamiento o competencia, te proporciona los nutrientes necesarios para tu mejor desempeño, carbohidratos de alta calidad, aminoácidos esenciales que previenen la fatiga mental y reparan el daño muscular en actividades de larga duración.',100,1,1,1,1,1,1,1),('101GEL001','SIS Gel Energético Go Isotónico','GEL',37.99,'sisgel.jpg','Gel energético con gran sabor en un paquete fácil de abrir, perfecto para llevar. Energía rápida con 75 mg de cafeína para un impulso mental y físico.',200,1,1,1,1,1,1,1),('101PRP001','226ERS Polvos Pre Workout','PREPARADO',655.99,'workoutcafe.jpg','Complemento alimenticio en polvo a base de L Arginina AKG, HMB, Creatina y Beta Alanina.',100,1,1,1,1,1,1,1),('101PRP002','SIS Suplementos Rego Rapid ','PREPARADO ',828.99,'sis.jpg','Rego the Re Energizing energy Fuel con micronutrientes para mejorar la recuperación y potenciar la adaptación al ejercicio. Science in Sport REGO Rapid Recovery combina una mezcla especial de carbohidratos complejos, fructosa y proteína, que ha demostrado que proporciona una rápida mejora en la recuperación del ejercicio intenso.',120,1,1,1,1,1,1,1),('101PRP003','Nutrinovex Polvo ','PREPARADO',470.99,'nutrinovex.jpg','Suplemento en polvo de creatina + beta alanina a base de creatina y beta alanina Combinar creatina y beta alanina es una forma de potenciar los efectos positivos de ambas sustancias.',130,1,1,1,1,1,1,1),('102GEL002','Maurten Caja Geles Energéticos','GEL ',705.99,'maurten.jpg','Este es el gel. Energía encapsulada en un hidrogel natural. Construido con seis ingredientes: sin colorantes, conservantes ni sabores añadidos. 25 g de carbohidratos por ración. Se puede utilizar antes, durante y / o después de la actividad.',100,1,1,1,1,1,1,1),('103GEL003','Powerbar Gel Energético Cola','GEL',34.49,'powcola.jpg','A través de C2MAX, le proporciona carbohidratos en una proporción 2: 1 científicamente desarrollada de fuentes de glucosa y fructosa. La consistencia líquida del gel es fácil de tragar y no requiere que bebas inmediatamente después como ocurre con otros geles. Ideal para corredores o deportistas que prefieran un gel más líquido.',100,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `correo` varchar(30) NOT NULL,
  `clave` varchar(30) NOT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `escuela` varchar(50) NOT NULL,
  `dinero` float NOT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `edad` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Unique_Correo` (`correo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Marta Rosa','Cordero','MCORDERO@IPN.COM.MX','Martha','F','ESCOM',28000,'5531651597',52),(2,'Luis','Martín','Luis@gmail.com','Luis','M','ESCOM',10651,'5511353956',25),(8,'Gabriela','Peña Atanasio','gabinas2011@gmail.com','Gaby','F','VICENTE GUERRERO',9909.14,'5533055212',10);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pruebas`
--

DROP TABLE IF EXISTS `pruebas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pruebas` (
  `id` int(11) NOT NULL,
  `a` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pruebas`
--

LOCK TABLES `pruebas` WRITE;
/*!40000 ALTER TABLE `pruebas` DISABLE KEYS */;
INSERT INTO `pruebas` VALUES (1,'a'),(44,'b'),(2,'c'),(2,'d'),(2,'e'),(2,'e'),(3,'f'),(3,'g'),(3,'h'),(4,'f'),(5,'g'),(5,'h'),(5,'g');
/*!40000 ALTER TABLE `pruebas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `total`
--

DROP TABLE IF EXISTS `total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `total` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `estado` bit(1) NOT NULL DEFAULT b'0',
  `fecha_entrega` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `total`
--

LOCK TABLES `total` WRITE;
/*!40000 ALTER TABLE `total` DISABLE KEYS */;
INSERT INTO `total` VALUES (1,2015070852,113.97,_binary '','2021-12-15 18:34:08','2022-05-18 22:13:53'),(2,2020630367,30,_binary '','2022-02-13 05:56:47','2022-05-13 02:05:53'),(3,2015070852,40,_binary '\0','2022-05-15 19:52:17','2022-05-15 19:52:17'),(4,2015070852,40,_binary '','2022-05-15 20:06:57','2022-05-15 20:39:57'),(5,2015070852,20,_binary '\0','2022-05-15 21:16:34','2022-05-15 21:16:34'),(6,2015070852,20,_binary '\0','2022-05-15 21:42:50','2022-05-15 21:42:50'),(7,2015070852,12,_binary '\0','2022-05-15 21:45:16','2022-05-15 21:45:16'),(8,2,15,_binary '','2022-05-19 03:58:21','2022-05-29 02:54:37'),(9,2,27,_binary '','2022-05-22 01:35:24','2022-06-02 23:17:43'),(10,2,45,_binary '','2022-05-22 21:43:18','2022-06-02 23:17:31'),(11,2,15,_binary '','2022-05-29 02:49:39','2022-06-02 23:17:47'),(12,2,30,_binary '','2022-05-29 02:53:49','2022-06-02 23:17:50'),(13,1,56,_binary '','2022-05-31 15:24:07','2022-06-02 23:17:52'),(14,2,55.98,_binary '','2022-06-01 04:18:28','2022-06-02 23:17:54'),(15,2,55.98,_binary '','2022-06-01 04:18:42','2022-06-02 23:17:56'),(16,2,60,_binary '','2022-06-01 04:19:26','2022-06-02 23:17:58'),(17,2,15,_binary '','2022-06-01 04:19:52','2022-06-02 23:17:59'),(18,2,60,_binary '','2022-06-01 04:32:15','2022-06-02 23:18:02'),(19,2,45,_binary '','2022-06-01 04:32:30','2022-06-02 23:18:05'),(20,2,135,_binary '','2022-06-01 04:32:44','2022-06-02 23:18:07'),(21,2,135,_binary '','2022-06-02 02:41:23','2022-06-02 23:17:37'),(22,2,45,_binary '','2022-06-02 23:15:42','2022-06-02 23:17:09'),(23,2,80,_binary '','2022-06-02 23:16:20','2022-06-02 23:17:04'),(24,3,30,_binary '','2022-06-02 23:21:48','2022-06-02 23:51:50'),(25,3,45,_binary '','2022-06-02 23:50:36','2022-06-02 23:51:53'),(26,3,135,_binary '','2022-06-02 23:52:33','2022-06-02 23:53:26'),(27,2,75,_binary '\0','2022-06-03 03:43:07','2022-06-03 03:43:07'),(28,1,15,_binary '\0','2022-06-04 21:07:24','2022-06-04 21:07:24'),(29,1,20,_binary '\0','2022-06-05 02:25:10','2022-06-05 02:25:10'),(30,1,12,_binary '','2022-06-05 02:26:05','2022-06-06 08:11:37'),(31,1,224.98,_binary '','2022-06-06 07:29:50','2022-06-06 07:30:25'),(32,1,1883.96,_binary '','2022-06-06 07:49:50','2022-06-06 07:52:49'),(33,1,375.96,_binary '','2022-06-06 08:23:12','2022-06-06 08:24:34'),(34,1,113.97,_binary '','2022-06-06 22:11:56','2022-06-06 22:12:38'),(35,1,379.9,_binary '','2022-06-06 22:50:39','2022-06-06 22:51:25'),(36,1,4144.95,_binary '','2022-06-07 03:19:28','2022-06-07 03:20:54'),(37,8,1203.96,_binary '','2022-06-07 03:42:37','2022-06-07 03:43:59'),(38,8,265.93,_binary '','2022-06-07 03:43:31','2022-06-07 03:44:42'),(39,1,3315.96,_binary '','2022-06-07 04:09:09','2022-06-07 04:10:26'),(40,1,1412.97,_binary '\0','2022-06-08 20:13:56','2022-06-08 20:13:56'),(41,1,390,_binary '\0','2022-06-08 20:14:09','2022-06-08 20:14:09'),(42,8,1883.96,_binary '\0','2022-06-08 20:21:42','2022-06-08 20:21:42'),(43,8,195,_binary '\0','2022-06-08 20:21:53','2022-06-08 20:21:53'),(44,8,3315.96,_binary '','2022-06-08 20:36:09','2022-06-08 20:39:09'),(45,8,151.96,_binary '','2022-06-08 20:36:24','2022-06-08 20:39:16'),(46,8,2623.96,_binary '','2022-06-08 20:47:52','2022-06-08 20:49:02'),(47,8,449.96,_binary '','2022-06-08 20:48:07','2022-06-08 20:49:08');
/*!40000 ALTER TABLE `total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_cliente` int(11) DEFAULT NULL,
  `id_alimento` varchar(20) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `costo` float DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `salon` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (3,2015070852,'101BBD001',2,30,'2021-12-15 18:34:08','1011'),(4,2015070852,'101EMP003',3,83.97,'2021-12-15 18:34:08','1011'),(5,2020630367,'101BBD001',2,30,'2022-02-13 05:56:47','CAFETERIA'),(6,2015070852,'101BBD003',2,40,'2022-05-15 19:52:17','SERVICIO MEDICO'),(7,2015070852,'101BBD003',2,40,'2022-05-15 20:06:57','CAFETERIA'),(8,2015070852,'101BBD003',1,20,'2022-05-15 21:16:34','CAFETERIA'),(9,2015070852,'101BBD003',1,20,'2022-05-15 21:42:50','CAFETERIA'),(10,2015070852,'101EMP002',1,12,'2022-05-15 21:45:16','CAFETERIA'),(11,2,'101BBD002',1,15,'2022-05-19 03:58:21','CAFETERIA'),(12,2,'101BBD001',1,15,'2022-05-22 01:35:24','CAFETERIA'),(13,2,'101EMP002',1,12,'2022-05-22 01:35:24','CAFETERIA'),(14,2,'101PRP002',3,45,'2022-05-22 21:43:18','CAFETERIA'),(15,2,'101EMP001',1,15,'2022-05-29 02:49:39','CAFETERIA'),(16,2,'101PRP002',2,30,'2022-05-29 02:53:49','CAFETERIA'),(17,1,'103PRP010',1,56,'2022-05-31 15:24:07','1002'),(18,2,'101EMP003',2,55.98,'2022-06-01 04:18:28','CAFETERIA'),(19,2,'101EMP003',2,55.98,'2022-06-01 04:18:28','CAFETERIA'),(20,2,'101BBD002',4,60,'2022-06-01 04:19:26','CAFETERIA'),(26,2,'101BBD002',3,45,'2022-06-02 23:15:42','CAFETERIA'),(27,2,'101PRP001',4,80,'2022-06-02 23:16:20','CAFETERIA'),(28,3,'101BBD002',2,30,'2022-06-02 23:21:48','CAFETERIA'),(29,3,'101BBD002',3,45,'2022-06-02 23:50:36','CAFETERIA'),(30,3,'101PRP003',3,135,'2022-06-02 23:52:33','CAFETERIA'),(31,2,'101PRP002',5,75,'2022-06-03 03:43:07','CAFETERIA'),(32,1,'101BBD002',1,15,'2022-06-04 21:07:24','CAFETERIA'),(33,1,'101BBD003',1,20,'2022-06-05 02:25:10','CAFETERIA'),(34,1,'101EMP002',1,12,'2022-06-05 02:26:05','CAFETERIA'),(35,2,'101EMP003',1,13,'2022-06-05 02:26:05',NULL),(36,1,'101EMP001',2,224.98,'2022-06-06 07:29:50','CAFETERIA'),(37,1,'101PRP003',4,1883.96,'2022-06-06 07:49:50','CAFETERIA'),(38,1,'101EMP003',4,375.96,'2022-06-06 08:23:12','CAFETERIA'),(39,1,'101GEL001',3,113.97,'2022-06-06 22:11:56','CAFETERIA'),(40,1,'101GEL001',10,379.9,'2022-06-06 22:50:39','CAFETERIA'),(41,1,'101PRP002',5,4144.95,'2022-06-07 03:19:28','CAFETERIA'),(42,8,'101BBD003',4,1203.96,'2022-06-07 03:42:37','CAFETERIA'),(43,8,'101BBD002',7,265.93,'2022-06-07 03:43:31','CAFETERIA'),(44,1,'101PRP002',4,3315.96,'2022-06-07 04:09:09','CAFETERIA'),(45,1,'101PRP003',3,1412.97,'2022-06-08 20:13:56','CAFETERIA'),(46,1,'1010BBD001',6,390,'2022-06-08 20:14:09','CAFETERIA'),(47,8,'101PRP003',4,1883.96,'2022-06-08 20:21:42','CAFETERIA'),(48,8,'1010BBD001',3,195,'2022-06-08 20:21:53','CAFETERIA'),(49,8,'101PRP002',4,3315.96,'2022-06-08 20:36:09','CAFETERIA'),(50,8,'101BBD002',4,151.96,'2022-06-08 20:36:24','CAFETERIA'),(51,8,'101PRP001',4,2623.96,'2022-06-08 20:47:52','CAFETERIA'),(52,8,'101EMP001',4,449.96,'2022-06-08 20:48:07','CAFETERIA');
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-11 17:46:08
