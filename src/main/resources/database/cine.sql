CREATE DATABASE  IF NOT EXISTS `cine` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cine`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: cine
-- ------------------------------------------------------
-- Server version	5.5.21

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
-- Table structure for table `genero`
--

DROP TABLE IF EXISTS `genero`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genero` (
  `idGenero` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `usuarioCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `usuarioModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idGenero`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero`
--

LOCK TABLES `genero` WRITE;
/*!40000 ALTER TABLE `genero` DISABLE KEYS */;
INSERT INTO `genero` VALUES (1,'terror',1,2,'2013-01-15 17:23:43',2,'2013-01-15 17:23:43'),(3,'drama',1,2,'2013-01-15 17:24:55',2,'2013-01-15 17:24:55'),(4,'comedia',1,2,'2013-01-15 17:24:55',NULL,NULL);
/*!40000 ALTER TABLE `genero` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `password` varchar(45) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sala`
--

DROP TABLE IF EXISTS `sala`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sala` (
  `idSala` int(11) NOT NULL AUTO_INCREMENT,
  `capacidad` int(11) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  `estado` int(11) DEFAULT NULL,
  `usuarioCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `usarioModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idSala`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sala`
--

LOCK TABLES `sala` WRITE;
/*!40000 ALTER TABLE `sala` DISABLE KEYS */;
/*!40000 ALTER TABLE `sala` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peliculaactor`
--

DROP TABLE IF EXISTS `peliculaactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peliculaactor` (
  `idPeliculaActor` int(11) NOT NULL,
  `idPelicula` int(11) NOT NULL,
  `idActor` int(11) NOT NULL,
  PRIMARY KEY (`idPeliculaActor`),
  KEY `fk_PeliculaActor_Pelicula1` (`idPelicula`),
  KEY `fk_PeliculaActor_Actor1` (`idActor`),
  CONSTRAINT `fk_PeliculaActor_Actor1` FOREIGN KEY (`idActor`) REFERENCES `actor` (`idActor`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_PeliculaActor_Pelicula1` FOREIGN KEY (`idPelicula`) REFERENCES `pelicula` (`idPelicula`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peliculaactor`
--

LOCK TABLES `peliculaactor` WRITE;
/*!40000 ALTER TABLE `peliculaactor` DISABLE KEYS */;
/*!40000 ALTER TABLE `peliculaactor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor`
--

DROP TABLE IF EXISTS `actor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actor` (
  `idActor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apelllido` varchar(45) DEFAULT NULL,
  `sexo` int(11) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `usuarioCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `usuarioModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idActor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor`
--

LOCK TABLES `actor` WRITE;
/*!40000 ALTER TABLE `actor` DISABLE KEYS */;
/*!40000 ALTER TABLE `actor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `director`
--

DROP TABLE IF EXISTS `director`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `director` (
  `idDirector` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `usuarioCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `usuarioModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idDirector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `director`
--

LOCK TABLES `director` WRITE;
/*!40000 ALTER TABLE `director` DISABLE KEYS */;
/*!40000 ALTER TABLE `director` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelicula`
--

DROP TABLE IF EXISTS `pelicula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelicula` (
  `idPelicula` int(11) NOT NULL AUTO_INCREMENT,
  `idDirector` int(11) NOT NULL,
  `idGenero` int(11) NOT NULL,
  `idPais` int(11) NOT NULL,
  `titulo` varchar(150) DEFAULT NULL,
  `sipnosis` varchar(250) DEFAULT NULL,
  `duracion` time DEFAULT NULL,
  `sitioWeb` varchar(150) DEFAULT NULL,
  `fechaEstreno` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `usuarioCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `usuarioModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idPelicula`),
  KEY `fk_Pelicula_Director1` (`idDirector`),
  KEY `fk_Pelicula_Genero1` (`idGenero`),
  KEY `fk_Pelicula_Pais1` (`idPais`),
  CONSTRAINT `fk_Pelicula_Director1` FOREIGN KEY (`idDirector`) REFERENCES `director` (`idDirector`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_Genero1` FOREIGN KEY (`idGenero`) REFERENCES `genero` (`idGenero`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pelicula_Pais1` FOREIGN KEY (`idPais`) REFERENCES `pais` (`idPais`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelicula`
--

LOCK TABLES `pelicula` WRITE;
/*!40000 ALTER TABLE `pelicula` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelicula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `idPais` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Afganistán',1),(2,'Islas Gland',1),(3,'Albania',1),(4,'Alemania',1),(5,'Andorra',1),(6,'Angola',1),(7,'Anguilla',1),(8,'Antártida',1),(9,'Antigua y Barbuda',1),(10,'Antillas Holandesas',1),(11,'Arabia Saudí',1),(12,'Argelia',1),(13,'Argentina',1),(14,'Armenia',1),(15,'Aruba',1),(16,'Australia',1),(17,'Austria',1),(18,'Azerbaiyán',1),(19,'Bahamas',1),(20,'Bahréin',1),(21,'Bangladesh',1),(22,'Barbados',1),(23,'Bielorrusia',1),(24,'Bélgica',1),(25,'Belice',1),(26,'Benin',1),(27,'Bermudas',1),(28,'Bhután',1),(29,'Bolivia',1),(30,'Bosnia y Herzegovina',1),(31,'Botsuana',1),(32,'Isla Bouvet',1),(33,'Brasil',1),(34,'Brunéi',1),(35,'Bulgaria',1),(36,'Burkina Faso',1),(37,'Burundi',1),(38,'Cabo Verde',1),(39,'Islas Caimán',1),(40,'Camboya',1),(41,'Camerún',1),(42,'Canadá',1),(43,'República Centroafricana',1),(44,'Chad',1),(45,'República Checa',1),(46,'Chile',1),(47,'China',1),(48,'Chipre',1),(49,'Isla de Navidad',1),(50,'Ciudad del Vaticano',1),(51,'Islas Cocos',1),(52,'Colombia',1),(53,'Comoras',1),(54,'República Democrática del Congo',1),(55,'Congo',1),(56,'Islas Cook',1),(57,'Corea del Norte',1),(58,'Corea del Sur',1),(59,'Costa de Marfil',1),(60,'Costa Rica',1),(61,'Croacia',1),(62,'Cuba',1),(63,'Dinamarca',1),(64,'Dominica',1),(65,'República Dominicana',1),(66,'Ecuador',1),(67,'Egipto',1),(68,'El Salvador',1),(69,'Emiratos Árabes Unidos',1),(70,'Eritrea',1),(71,'Eslovaquia',1),(72,'Eslovenia',1),(73,'España',1),(74,'Islas ultramarinas de Estados Unidos',1),(75,'Estados Unidos',1),(76,'Estonia',1),(77,'Etiopía',1),(78,'Islas Feroe',1),(79,'Filipinas',1),(80,'Finlandia',1),(81,'Fiyi',1),(82,'Francia',1),(83,'Gabón',1),(84,'Gambia',1),(85,'Georgia',1),(86,'Islas Georgias del Sur y Sandwich del Sur',1),(87,'Ghana',1),(88,'Gibraltar',1),(89,'Granada',1),(90,'Grecia',1),(91,'Groenlandia',1),(92,'Guadalupe',1),(93,'Guam',1),(94,'Guatemala',1),(95,'Guayana Francesa',1),(96,'Guinea',1),(97,'Guinea Ecuatorial',1),(98,'Guinea-Bissau',1),(99,'Guyana',1),(100,'Haití',1),(101,'Islas Heard y McDonald',1),(102,'Honduras',1),(103,'Hong Kong',1),(104,'Hungría',1),(105,'India',1),(106,'Indonesia',1),(107,'Irán',1),(108,'Iraq',1),(109,'Irlanda',1),(110,'Islandia',1),(111,'Israel',1),(112,'Italia',1),(113,'Jamaica',1),(114,'Japón',1),(115,'Jordania',1),(116,'Kazajstán',1),(117,'Kenia',1),(118,'Kirguistán',1),(119,'Kiribati',1),(120,'Kuwait',1),(121,'Laos',1),(122,'Lesotho',1),(123,'Letonia',1),(124,'Líbano',1),(125,'Liberia',1),(126,'Libia',1),(127,'Liechtenstein',1),(128,'Lituania',1),(129,'Luxemburgo',1),(130,'Macao',1),(131,'ARY Macedonia',1),(132,'Madagascar',1),(133,'Malasia',1),(134,'Malawi',1),(135,'Maldivas',1),(136,'Malí',1),(137,'Malta',1),(138,'Islas Malvinas',1),(139,'Islas Marianas del Norte',1),(140,'Marruecos',1),(141,'Islas Marshall',1),(142,'Martinica',1),(143,'Mauricio',1),(144,'Mauritania',1),(145,'Mayotte',1),(146,'México',1),(147,'Micronesia',1),(148,'Moldavia',1),(149,'Mónaco',1),(150,'Mongolia',1),(151,'Montserrat',1),(152,'Mozambique',1),(153,'Myanmar',1),(154,'Namibia',1),(155,'Nauru',1),(156,'Nepal',1),(157,'Nicaragua',1),(158,'Níger',1),(159,'Nigeria',1),(160,'Niue',1),(161,'Isla Norfolk',1),(162,'Noruega',1),(163,'Nueva Caledonia',1),(164,'Nueva Zelanda',1),(165,'Omán',1),(166,'Países Bajos',1),(167,'Pakistán',1),(168,'Palau',1),(169,'Palestina',1),(170,'Panamá',1),(171,'Papúa Nueva Guinea',1),(172,'Paraguay',1),(173,'Perú',1),(174,'Islas Pitcairn',1),(175,'Polinesia Francesa',1),(176,'Polonia',1),(177,'Portugal',1),(178,'Puerto Rico',1),(179,'Qatar',1),(180,'Reino Unido',1),(181,'Reunión',1),(182,'Ruanda',1),(183,'Rumania',1),(184,'Rusia',1),(185,'Sahara Occidental',1),(186,'Islas Salomón',1),(187,'Samoa',1),(188,'Samoa Americana',1),(189,'San Cristóbal y Nevis',1),(190,'San Marino',1),(191,'San Pedro y Miquelón',1),(192,'San Vicente y las Granadinas',1),(193,'Santa Helena',1),(194,'Santa Lucía',1),(195,'Santo Tomé y Príncipe',1),(196,'Senegal',1),(197,'Serbia y Montenegro',1),(198,'Seychelles',1),(199,'Sierra Leona',1),(200,'Singapur',1),(201,'Siria',1),(202,'Somalia',1),(203,'Sri Lanka',1),(204,'Suazilandia',1),(205,'Sudáfrica',1),(206,'Sudán',1),(207,'Suecia',1),(208,'Suiza',1),(209,'Surinam',1),(210,'Svalbard y Jan Mayen',1),(211,'Tailandia',1),(212,'Taiwán',1),(213,'Tanzania',1),(214,'Tayikistán',1),(215,'Territorio Británico del Océano Índico',1),(216,'Territorios Australes Franceses',1),(217,'Timor Oriental',1),(218,'Togo',1),(219,'Tokelau',1),(220,'Tonga',1),(221,'Trinidad y Tobago',1),(222,'Túnez',1),(223,'Islas Turcas y Caicos',1),(224,'Turkmenistán',1),(225,'Turquía',1),(226,'Tuvalu',1),(227,'Ucrania',1),(228,'Uganda',1),(229,'Uruguay',1),(230,'Uzbekistán',1),(231,'Vanuatu',1),(232,'Venezuela',1),(233,'Vietnam',1),(234,'Islas Vírgenes Británicas',1),(235,'Islas Vírgenes de los Estados Unidos',1),(236,'Wallis y Futuna',1),(237,'Yemen',1),(238,'Yibuti',1),(239,'Zambia',1),(240,'Zimbabue',1);
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
  `idVenta` int(11) NOT NULL AUTO_INCREMENT,
  `idFuncion` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `cantidadNinos` int(11) DEFAULT NULL,
  `cantidadAdultos` int(11) DEFAULT NULL,
  `montoTotal` float DEFAULT NULL,
  `banco` int(11) DEFAULT NULL,
  `numeroTarjeta` varchar(16) DEFAULT NULL,
  `fechaTicket` datetime DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `fk_Venta_Funcion1` (`idFuncion`),
  KEY `fk_Venta_Usuario1` (`idUsuario`),
  CONSTRAINT `fk_Venta_Funcion1` FOREIGN KEY (`idFuncion`) REFERENCES `funcion` (`idFuncion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Venta_Usuario1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcion`
--

DROP TABLE IF EXISTS `funcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcion` (
  `idFuncion` int(11) NOT NULL AUTO_INCREMENT,
  `idPelicula` int(11) NOT NULL,
  `idSala` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `horaInicio` datetime NOT NULL,
  `horaFin` datetime NOT NULL,
  `entradas` int(11) NOT NULL,
  `usuarioCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` datetime DEFAULT NULL,
  `usuarioModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`idFuncion`),
  KEY `fk_Funcion_Pelicula` (`idPelicula`),
  KEY `fk_Funcion_Sala1` (`idSala`),
  CONSTRAINT `fk_Funcion_Pelicula` FOREIGN KEY (`idPelicula`) REFERENCES `pelicula` (`idPelicula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Funcion_Sala1` FOREIGN KEY (`idSala`) REFERENCES `sala` (`idSala`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcion`
--

LOCK TABLES `funcion` WRITE;
/*!40000 ALTER TABLE `funcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-01-15 19:52:23
