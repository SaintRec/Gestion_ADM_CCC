-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: coti
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu0.16.04.1

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
-- Table structure for table `cotizaciones_demo`
--

DROP TABLE IF EXISTS `cotizaciones_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizaciones_demo` (
  `id_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cotizacion` int(11) NOT NULL,
  `fecha_cotizacion` datetime NOT NULL,
  `atencion` varchar(50) NOT NULL,
  `tel1` varchar(9) NOT NULL,
  `empresa` varchar(75) NOT NULL,
  `tel2` varchar(9) NOT NULL,
  `email` varchar(30) NOT NULL,
  `condiciones` varchar(30) NOT NULL,
  `validez` varchar(20) NOT NULL,
  `entrega` varchar(20) NOT NULL,
  PRIMARY KEY (`id_cotizacion`),
  UNIQUE KEY `numero_cotizacion` (`numero_cotizacion`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizaciones_demo`
--

LOCK TABLES `cotizaciones_demo` WRITE;
/*!40000 ALTER TABLE `cotizaciones_demo` DISABLE KEYS */;
INSERT INTO `cotizaciones_demo` VALUES (1,1,'2015-07-19 06:52:51','Pepe','70555','','','','Nota: Las Condicione','',''),(2,2,'2015-07-19 06:53:38','Pepe','70555','','','','Nota: Las Condicione','',''),(3,3,'2015-07-19 06:55:42','Pepe','70555','','','','Nota: Las Condicione','',''),(4,4,'2015-07-19 06:59:01','Pepe','70555','','','','Nota: Las Condiciones de pago ','',''),(5,5,'2015-07-19 07:00:12','Pepe','70555','','','','Nota: Las Condiciones de pago ','',''),(6,6,'2015-07-19 07:03:09','Pepe','70555','','','','Nota: Las Condiciones de pago ','',''),(7,7,'2015-07-19 07:03:34','Pepe','70555','','','','Nota: Las Condiciones de pago ','',''),(8,8,'2015-07-19 07:08:59','Pepe','70555','','','','Nota: Las Condiciones de pago ','',''),(9,9,'2015-07-19 07:10:20','Pepe','70555','','','','Nota: Las Condiciones de pago ','',''),(10,10,'2015-07-19 07:11:09','Pepe','70555','','','','Nota: Las Condiciones de pago ','',''),(11,11,'2015-07-19 07:11:47','Pepe','70555','test','700','joaquinobed@gmail.com','Nota: Las Condiciones de pago ','',''),(12,12,'2015-07-19 07:15:03','Pepe','70555','test','700','joaquinobed@gmail.com','Nota: Las Condiciones de pago ','',''),(13,13,'2015-07-19 07:16:34','Pepe','70555','test','700','joaquinobed@gmail.com','Nota: Las Condiciones de pago ','',''),(14,14,'2015-07-19 07:16:51','Pepe','70555','test','700','joaquinobed@gmail.com','Nota: Las Condiciones de pago ','',''),(15,15,'2015-07-19 07:20:34','Juan Diego','222-2220','Invertir Mejor','2222-0000','info@invertirmejor.com','Nota: Las Condiciones de pago ','',''),(16,16,'2015-07-20 07:27:16','Juan Perez','7070','','','','','',''),(17,17,'2015-07-20 07:29:50','Juan Perez','7070','','','','1','',''),(18,18,'2015-07-20 07:32:30','Juan Perez','7070','','','','Contado','',''),(19,19,'2015-07-20 07:34:38','Juan Perez','7070','','','','Contado','',''),(20,20,'2015-07-20 07:35:01','Juan Perez','7070','','','','Contado','',''),(21,21,'2015-07-20 07:38:07','Juan Perez','7070','','','','Contado','15 dÃ­as','Inmediato'),(22,22,'2015-07-21 03:06:14','Juan Diego','70587677','Invertir Mejor','2230-000','info@invertirmejor.com','CrÃ©dito 30 dÃ­as','15 dÃ­as','Inmediato');
/*!40000 ALTER TABLE `cotizaciones_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_cotizacion_demo`
--

DROP TABLE IF EXISTS `detalle_cotizacion_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_cotizacion_demo` (
  `id_detalle_cotizacion` int(11) NOT NULL AUTO_INCREMENT,
  `numero_cotizacion` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_venta` double NOT NULL,
  PRIMARY KEY (`id_detalle_cotizacion`),
  KEY `numero_cotizacion` (`numero_cotizacion`,`id_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_cotizacion_demo`
--

LOCK TABLES `detalle_cotizacion_demo` WRITE;
/*!40000 ALTER TABLE `detalle_cotizacion_demo` DISABLE KEYS */;
INSERT INTO `detalle_cotizacion_demo` VALUES (1,1,3,1,25),(2,2,2,1,15),(3,3,1,1,10),(4,4,3,1,25),(5,5,4,1,40),(6,6,4,1,40),(7,7,1,1,10),(8,8,3,1,25),(9,9,4,1,40),(10,10,2,1,15),(11,10,2,1,15),(12,10,4,21,40),(13,10,2,1,15),(14,10,2,1,15),(15,10,2,1,15),(16,10,2,1,15),(17,10,2,1,15),(18,10,2,1,15),(19,10,1,1,10),(20,11,3,1,25),(21,12,3,1,25),(22,13,3,1,25),(23,14,4,21,40),(24,15,1,1,10),(25,15,5,2,25),(26,16,67,1,12),(27,16,67,1,12),(28,16,67,1,12),(29,16,1,1,10),(30,17,1,1,10),(31,18,1,1,10),(32,19,2,1,15),(33,20,3,1,25),(34,21,5,1,18),(35,22,1,1,10);
/*!40000 ALTER TABLE `detalle_cotizacion_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marca` (
  `id_m` int(11) NOT NULL,
  `registro` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name_m` varchar(14) NOT NULL,
  PRIMARY KEY (`id_m`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (1,'2018-06-18 01:41:38','Fanta'),(2,'2018-06-18 01:41:38','Del Valle'),(3,'2018-06-18 01:41:38','Coca Cola'),(4,'2018-06-18 01:41:38','Sprite'),(5,'2018-06-18 01:41:38','Powerade'),(6,'2018-06-18 01:41:38','Sprite'),(7,'2018-06-18 01:41:38','Minute Maid'),(8,'2018-06-18 01:41:38','Fuze Tea');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas_demo`
--

DROP TABLE IF EXISTS `marcas_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas_demo` (
  `id_marca` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_marca` char(40) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas_demo`
--

LOCK TABLES `marcas_demo` WRITE;
/*!40000 ALTER TABLE `marcas_demo` DISABLE KEYS */;
INSERT INTO `marcas_demo` VALUES (1,'Mega'),(2,'HP'),(3,'Black and decker'),(4,'Honda'),(5,'Pedrollo'),(6,'Taifu'),(7,'Porter cable'),(8,'Milwaukee'),(9,'Riggid'),(10,'Karcher'),(11,'Lincoln electric'),(12,'Goni'),(13,'Poulan'),(14,'Bosch'),(15,'Franklin electric'),(16,'Shell Helix'),(17,'QUINCIP'),(18,'Briggs stratton'),(19,'Champions'),(20,'Parker'),(21,'Norflex'),(22,'Campbell Hausfeld'),(23,'Koyo'),(24,'Alkota'),(25,'Amsterdam'),(26,'Oster'),(27,'Trupper'),(28,'Truck Hose'),(29,'Trapp'),(30,'Ducar'),(31,'Brahman'),(32,'Ngk'),(33,'Midwest Can'),(34,'Maccolloch'),(35,'Nuvo'),(36,'Oregon'),(37,'Swingfog'),(38,'Irwin'),(39,'Makita'),(40,'Hilti'),(41,'JOHN DEERE'),(42,'Valdoch'),(43,'JAZ'),(44,'Stanley'),(45,'Pressure wave'),(46,'Delta'),(47,'Urrea'),(48,'Skil'),(49,'Surtek'),(50,'China'),(51,'Foy'),(52,'Amana tool'),(53,'Norton'),(54,'3M'),(55,'Square'),(56,'Vanguard'),(57,'Gbs'),(58,'Quality'),(59,'Miller'),(60,'Mundial'),(61,'Fini'),(62,'Nova'),(63,'Somar'),(64,'Timberline'),(65,'Forte'),(66,'Aguila'),(67,'Kimberly Clark'),(68,'Diamond'),(69,'Schulz'),(70,'Genteq'),(71,'Bellota'),(72,'Ultra'),(73,'Craftsman'),(74,'Asein'),(75,'Knova'),(76,'Generica'),(77,'Sagola'),(78,'Arvek'),(79,'Yale'),(80,'Leeson'),(81,'Siemen'),(82,'Baldor'),(83,'StaRite'),(84,'Diablo'),(88,'ARO'),(86,'Booster'),(87,'Dremel');
/*!40000 ALTER TABLE `marcas_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presentaciones`
--

DROP TABLE IF EXISTS `presentaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presentaciones` (
  `id_p` int(11) NOT NULL AUTO_INCREMENT,
  `id_v` int(11) DEFAULT NULL,
  `id_m` int(11) DEFAULT NULL,
  `registro_p` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_p`),
  KEY `id_m` (`id_m`),
  KEY `id_v` (`id_v`),
  CONSTRAINT `presentaciones_ibfk_1` FOREIGN KEY (`id_m`) REFERENCES `marca` (`id_m`),
  CONSTRAINT `presentaciones_ibfk_2` FOREIGN KEY (`id_v`) REFERENCES `volumen` (`id_v`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presentaciones`
--

LOCK TABLES `presentaciones` WRITE;
/*!40000 ALTER TABLE `presentaciones` DISABLE KEYS */;
INSERT INTO `presentaciones` VALUES (1,1,1,'2018-06-18 01:57:11'),(2,2,1,'2018-06-18 01:57:11'),(3,3,1,'2018-06-18 01:57:11'),(4,4,1,'2018-06-18 01:57:11'),(5,5,1,'2018-06-18 01:57:11'),(6,6,1,'2018-06-18 01:57:11'),(7,7,1,'2018-06-18 01:57:11'),(8,8,1,'2018-06-18 01:57:11'),(9,9,1,'2018-06-18 01:57:11'),(10,1,2,'2018-06-18 02:12:08'),(11,2,2,'2018-06-18 02:12:08'),(12,3,2,'2018-06-18 02:12:08'),(13,4,2,'2018-06-18 02:12:08'),(14,5,2,'2018-06-18 02:12:08'),(15,6,2,'2018-06-18 02:12:08'),(16,7,2,'2018-06-18 02:12:08'),(17,8,2,'2018-06-18 02:12:08'),(18,9,2,'2018-06-18 02:12:08'),(19,1,3,'2018-06-18 02:12:08'),(20,2,3,'2018-06-18 02:12:08'),(21,3,3,'2018-06-18 02:12:08'),(22,4,3,'2018-06-18 02:12:08'),(23,5,3,'2018-06-18 02:12:08'),(24,6,3,'2018-06-18 02:12:08'),(25,7,3,'2018-06-18 02:12:08'),(26,8,3,'2018-06-18 02:12:08'),(27,9,3,'2018-06-18 02:12:08'),(28,1,4,'2018-06-18 02:12:08'),(29,2,4,'2018-06-18 02:12:08'),(30,3,4,'2018-06-18 02:12:08'),(31,4,4,'2018-06-18 02:12:08'),(32,5,4,'2018-06-18 02:12:08'),(33,6,4,'2018-06-18 02:12:08'),(34,7,4,'2018-06-18 02:12:08'),(35,8,4,'2018-06-18 02:12:08'),(36,9,4,'2018-06-18 02:12:08'),(37,1,5,'2018-06-18 02:12:08'),(38,2,5,'2018-06-18 02:12:08'),(39,3,5,'2018-06-18 02:12:08'),(40,4,5,'2018-06-18 02:12:08'),(41,5,5,'2018-06-18 02:12:08'),(42,6,5,'2018-06-18 02:12:08'),(43,7,5,'2018-06-18 02:12:08'),(44,8,5,'2018-06-18 02:12:08'),(45,9,5,'2018-06-18 02:12:08'),(46,1,6,'2018-06-18 02:12:08'),(47,2,6,'2018-06-18 02:12:08'),(48,3,6,'2018-06-18 02:12:08'),(49,4,6,'2018-06-18 02:12:08'),(50,5,6,'2018-06-18 02:12:08'),(51,6,6,'2018-06-18 02:12:08'),(52,7,6,'2018-06-18 02:12:08'),(53,8,6,'2018-06-18 02:12:08'),(54,9,6,'2018-06-18 02:12:08'),(55,1,7,'2018-06-18 02:12:08'),(56,2,7,'2018-06-18 02:12:08'),(57,3,7,'2018-06-18 02:12:08'),(58,4,7,'2018-06-18 02:12:08'),(59,5,7,'2018-06-18 02:12:08'),(60,6,7,'2018-06-18 02:12:08'),(61,7,7,'2018-06-18 02:12:08'),(62,8,7,'2018-06-18 02:12:08'),(63,9,7,'2018-06-18 02:12:08'),(64,1,8,'2018-06-18 02:12:08'),(65,2,8,'2018-06-18 02:12:08'),(66,3,8,'2018-06-18 02:12:08'),(67,4,8,'2018-06-18 02:12:08'),(68,5,8,'2018-06-18 02:12:08'),(69,6,8,'2018-06-18 02:12:08'),(70,7,8,'2018-06-18 02:12:08'),(71,8,8,'2018-06-18 02:12:08'),(72,9,8,'2018-06-18 02:12:08');
/*!40000 ALTER TABLE `presentaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos_demo`
--

DROP TABLE IF EXISTS `productos_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos_demo` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_producto` char(20) NOT NULL,
  `nombre_producto` char(100) NOT NULL,
  `modelo_producto` varchar(30) NOT NULL,
  `id_departamento_producto` int(11) NOT NULL,
  `id_marca_producto` int(11) NOT NULL,
  `status_producto` tinyint(4) NOT NULL,
  `unidad_medida_producto` char(20) NOT NULL,
  `peso_producto` char(20) NOT NULL,
  `date_added` datetime NOT NULL,
  `precio_producto` double NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `codigo_producto` (`codigo_producto`),
  KEY `id_departamento_producto` (`id_departamento_producto`),
  KEY `id_marca_producto` (`id_marca_producto`)
) ENGINE=MyISAM AUTO_INCREMENT=4301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos_demo`
--

LOCK TABLES `productos_demo` WRITE;
/*!40000 ALTER TABLE `productos_demo` DISABLE KEYS */;
INSERT INTO `productos_demo` VALUES (1,'MG01','Mouse inalambrico','',3,1,1,'Cada una','sin peso','2013-03-25 20:35:15',10),(2,'TCL01','Teclado multimedia','',3,1,1,'','','2013-03-25 20:35:15',15),(3,'ILK059','Nuevo mini 2.4g micro inalambrico de teclado','',3,1,1,'','','2013-03-25 20:35:15',25),(4,'4520','TECLADO para HP 4520','MS250',3,2,1,'','','2013-03-25 20:35:15',40),(5,'A081','Altavoz de la computadora','',3,2,1,'','','2013-03-25 20:35:15',18),(64,'MSD01','2GB Tarjeta Micro SD','',2,2,1,'','','2013-03-25 20:35:15',5),(65,'AUR01','Adaptador usb para radio cd','',2,2,1,'','','2013-03-25 20:35:15',5),(66,'SA-205','2.0 de canal de sonido multimedia sa-205','',2,2,1,'','','2013-03-25 20:35:15',13),(67,'KB-1830','Teclado multimedia de alta calidad','',2,1,1,'','','2013-03-25 20:35:15',12);
/*!40000 ALTER TABLE `productos_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock` (
  `id_s` int(11) NOT NULL AUTO_INCREMENT,
  `id_p` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `registro_s` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_s`),
  KEY `id_p` (`id_p`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_p`) REFERENCES `presentaciones` (`id_p`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,559,'2018-06-18 02:33:54'),(2,2,651,'2018-06-18 02:33:54'),(3,3,167,'2018-06-18 02:33:54'),(4,4,154,'2018-06-18 02:33:54'),(5,5,361,'2018-06-18 02:33:54'),(6,6,576,'2018-06-18 02:33:54'),(7,7,841,'2018-06-18 02:33:54'),(8,8,393,'2018-06-18 02:33:54'),(9,9,361,'2018-06-18 02:33:54'),(10,10,332,'2018-06-18 02:33:54'),(11,11,350,'2018-06-18 02:33:54'),(12,12,974,'2018-06-18 02:33:54'),(13,13,819,'2018-06-18 02:33:54'),(14,14,223,'2018-06-18 02:33:54'),(15,15,537,'2018-06-18 02:33:54'),(16,16,158,'2018-06-18 02:33:54'),(17,17,525,'2018-06-18 02:33:54'),(18,18,520,'2018-06-18 02:33:54'),(19,19,688,'2018-06-18 02:33:54'),(20,20,899,'2018-06-18 02:33:54'),(21,21,684,'2018-06-18 02:33:54'),(22,22,207,'2018-06-18 02:33:54'),(23,23,815,'2018-06-18 02:33:54'),(24,24,584,'2018-06-18 02:33:54'),(25,25,886,'2018-06-18 02:33:54'),(26,26,500,'2018-06-18 02:33:54'),(27,27,711,'2018-06-18 02:33:54'),(28,28,301,'2018-06-18 02:33:54'),(29,29,824,'2018-06-18 02:33:54'),(30,30,876,'2018-06-18 02:33:54'),(31,31,136,'2018-06-18 02:33:54'),(32,32,126,'2018-06-18 02:33:54'),(33,33,440,'2018-06-18 02:33:54'),(34,34,145,'2018-06-18 02:33:54'),(35,35,585,'2018-06-18 02:33:54'),(36,36,996,'2018-06-18 02:33:54'),(37,37,781,'2018-06-18 02:33:54'),(38,38,846,'2018-06-18 02:33:54'),(39,39,417,'2018-06-18 02:33:54'),(40,40,898,'2018-06-18 02:33:54'),(41,41,666,'2018-06-18 02:33:54'),(42,42,156,'2018-06-18 02:33:54'),(43,43,684,'2018-06-18 02:33:54'),(44,44,125,'2018-06-18 02:33:54'),(45,45,908,'2018-06-18 02:33:54'),(46,46,647,'2018-06-18 02:33:54'),(47,47,677,'2018-06-18 02:33:54'),(48,48,691,'2018-06-18 02:33:54'),(49,49,156,'2018-06-18 02:33:54'),(50,50,747,'2018-06-18 02:33:54'),(51,51,771,'2018-06-18 02:33:54'),(52,52,274,'2018-06-18 02:33:54'),(53,53,893,'2018-06-18 02:33:54'),(54,54,412,'2018-06-18 02:33:54'),(55,55,789,'2018-06-18 02:33:54'),(56,56,172,'2018-06-18 02:33:54'),(57,57,219,'2018-06-18 02:33:54'),(58,58,844,'2018-06-18 02:33:54'),(59,59,885,'2018-06-18 02:33:54'),(60,60,836,'2018-06-18 02:33:54'),(61,61,280,'2018-06-18 02:33:54'),(62,62,454,'2018-06-18 02:33:54'),(63,63,156,'2018-06-18 02:33:54'),(64,64,101,'2018-06-18 02:33:54'),(65,65,281,'2018-06-18 02:33:54'),(66,66,757,'2018-06-18 02:33:54'),(67,67,866,'2018-06-18 02:33:54'),(68,68,315,'2018-06-18 02:33:54'),(69,69,521,'2018-06-18 02:33:54'),(70,70,566,'2018-06-18 02:33:54'),(71,71,792,'2018-06-18 02:33:54'),(72,72,108,'2018-06-18 02:33:54');
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tmp_cotizacion`
--

DROP TABLE IF EXISTS `tmp_cotizacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_cotizacion` (
  `id_tmp` int(11) NOT NULL AUTO_INCREMENT,
  `id_producto` int(11) NOT NULL,
  `cantidad_tmp` int(11) NOT NULL,
  `precio_tmp` double(8,2) DEFAULT NULL,
  `session_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_tmp`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tmp_cotizacion`
--

LOCK TABLES `tmp_cotizacion` WRITE;
/*!40000 ALTER TABLE `tmp_cotizacion` DISABLE KEYS */;
INSERT INTO `tmp_cotizacion` VALUES (55,4,1,40.00,'se7uf7ajc6unfc7npv6rgpum21');
/*!40000 ALTER TABLE `tmp_cotizacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(500) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Santiago Recalde','saintrec','saintrec@gmail.com','enemercida47','2018-06-29 03:32:20'),(2,'Santiago Daniel','kache','Kacheadg@gmail.com','enemercida47','2018-07-10 22:38:02'),(4,'santiago','santiago','saintkache@gmail.com','enemercida47','2018-07-15 04:13:41'),(7,'carlos','juanca','juanca@gmail.com','juanca','2018-07-15 06:47:39'),(8,'jaime Caiza','carlos','carlos@gmail.com','enemercida47','2018-07-15 09:57:04');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_demo`
--

DROP TABLE IF EXISTS `user_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_demo` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `lastname` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `email` varchar(96) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `code` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_demo`
--

LOCK TABLES `user_demo` WRITE;
/*!40000 ALTER TABLE `user_demo` DISABLE KEYS */;
INSERT INTO `user_demo` VALUES (1,'Obed','Alvarado','joaquinobed@gmail.com','2555',1,'2014-04-11 00:00:00');
/*!40000 ALTER TABLE `user_demo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volumen`
--

DROP TABLE IF EXISTS `volumen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `volumen` (
  `id_v` int(11) NOT NULL,
  `registro_v` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name_v` varchar(14) NOT NULL,
  PRIMARY KEY (`id_v`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volumen`
--

LOCK TABLES `volumen` WRITE;
/*!40000 ALTER TABLE `volumen` DISABLE KEYS */;
INSERT INTO `volumen` VALUES (1,'2018-06-18 01:47:31','200 ml'),(2,'2018-06-18 01:47:31','237 ml'),(3,'2018-06-18 01:47:31','250 ml'),(4,'2018-06-18 01:47:31','350 ml'),(5,'2018-06-18 01:47:31','500 ml'),(6,'2018-06-18 01:47:31','1 l'),(7,'2018-06-18 01:47:31','1,5 l'),(8,'2018-06-18 01:47:31','2 l'),(9,'2018-06-18 01:47:31','3 l');
/*!40000 ALTER TABLE `volumen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-15  9:59:16
