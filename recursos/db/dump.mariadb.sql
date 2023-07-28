-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: tfg_unir
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `tfg_unir`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tfg_unir` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `tfg_unir`;

--
-- Table structure for table `avances`
--

DROP TABLE IF EXISTS `avances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `avances` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tema` int(11) NOT NULL,
  `curso_id` bigint(20) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt77k35yqyhqwvpv9f5wnl1c3w` (`curso_id`),
  KEY `FK5mofhd64umg71n9rvjwd5nr1c` (`usuario_id`),
  CONSTRAINT `FK5mofhd64umg71n9rvjwd5nr1c` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FKt77k35yqyhqwvpv9f5wnl1c3w` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avances`
--

LOCK TABLES `avances` WRITE;
/*!40000 ALTER TABLE `avances` DISABLE KEYS */;
INSERT INTO `avances` VALUES (1,1,4,1);
/*!40000 ALTER TABLE `avances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'','Música'),(2,'','Fotografía y vídeo'),(3,'','Salud y fitness'),(4,'','Desarrollo'),(5,'','Informática y software'),(6,'Atque libero quos. Officiis commodi dignissimos magni excepturi expedita quisquam consequatur. Ut neque sint nihil fugit. Unde enim eum.','consequatur commodi (UPDATED)'),(7,'Dolores molestiae nobis voluptatum quod ad. Rem libero delectus veritatis accusamus est numquam laboriosam deleniti. Autem magni nesciunt corporis natus. A perspiciatis accusantium est fugiat pariatur labore dicta dolore. Perspiciatis sunt eius deserunt.','Rustic Concrete Chicken'),(8,'Est nostrum animi nam sunt. Laborum vitae et omnis nihil vel. Omnis aut quam neque in ea. Asperiores velit dolorum commodi quis magni quo enim voluptatibus sed. Et dolores autem odit velit a et voluptate.','est aliquam'),(9,'Molestiae error sint aut. Porro doloremque atque aut porro aut et illum autem. Nulla et quasi officiis hic reiciendis ipsam velit rerum.','illo quia (UPDATED)'),(10,'Sed ut sed voluptatem atque odit similique. Quas adipisci fuga et. Nostrum optio et dolores molestiae esse culpa ad. Voluptas rerum qui sed hic. Exercitationem non molestiae optio distinctio. Nobis quia voluptatem voluptatem qui distinctio quaerat.','ut (UPDATED)'),(11,'Id voluptatem amet sint et eum. Qui et est voluptas eum est similique. Maiores amet aspernatur velit in. Harum nihil error harum asperiores. Commodi quia consequatur voluptas maxime eligendi. At iure eligendi laudantium nesciunt at deleniti unde corrupti.','sapiente (UPDATED)');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contenidos`
--

DROP TABLE IF EXISTS `contenidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contenidos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `documento` text DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `curso_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrh6d353p7rwix9mhejhhxd2ar` (`curso_id`),
  CONSTRAINT `FKrh6d353p7rwix9mhejhhxd2ar` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contenidos`
--

LOCK TABLES `contenidos` WRITE;
/*!40000 ALTER TABLE `contenidos` DISABLE KEYS */;
INSERT INTO `contenidos` VALUES (1,'Dolore piticli exercitation horcate bajonaaa artista. To sueltecico bocachoti cobete hueles avinagrado churretoso fresquete et cabeza de viejo cuerpo de joven enjuto mojamuto nui veniam elit ex páharo.',1,'a título 1',1),(2,'Viejuno bonico del tó regomello interneeeer droja one more time gañán ut atiendee elit pepinoninoni chotera. Bufonesco gambitero muchachada cosica cascoporro ojete calor síberet melifluo eveniet, aliqua. ',2,'a título 2',1),(3,'Asobinao, eiusmod pero qué pelazo tontaco eiusmod. Chachachá cartoniano et traeros tol jamón eres un pirámidee. Tontiploster incididunt mangurrián monetes tunante zanguango quis gaticos saepe.',3,'a título 3',1),(4,'Eiusmod asobinao páharo no te digo ná y te lo digo tó ju-já chachachá mangurrián. ',1,'b.1 título 1',2),(5,'Enratonao artista hueles avinagrado eveniet cabeza de viejo cuerpo de joven nisi cobete tollina bajonaaa regomello. Chavalada bufonesco nianoniano sed gambitero.',2,'b.2 título 2',2),(6,'dummy 3',1,'1 título 3',3),(7,'Chotera piticli tempor bizcoché viejuno vivo con tu madre en un castillo forrondosco coconut zagal. Estoy fatal de lo mío ojete moreno tunante bonico del tó fresquete nui freshquisimo elit atiendee one more time enim.',1,'c.1 título 1',4),(8,'To sueltecico ahí va qué chorrazo churretoso es de traca, ayy qué gustico pero qué pelazo labore ex minim monguer Guaper con las rodillas in the guanter, tempor tontaco zanguango. ',2,'c.2 título 2',4),(9,' Soooy crossoverr mamellas cacahué dolore muchachada enjuto mojamuto te viste de torero melifluo enim asquerosito nuiiiii droja pataliebre consectetur bocachoti.',3,'c.3 título 3',4),(10,'dummy 5',1,'1 título 5',5),(11,'dummy 5',1,'1 título 5',6);
/*!40000 ALTER TABLE `contenidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT NULL,
  `estado` varchar(1) DEFAULT NULL,
  `etiquetas` varchar(255) DEFAULT NULL,
  `fecha_actualizacion` date DEFAULT NULL,
  `fecha_creacion` date DEFAULT NULL,
  `precio` decimal(8,2) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `valoracion_media` double DEFAULT NULL,
  `categoria_id` bigint(20) DEFAULT NULL,
  `instructor_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKo6ihsoct2e21c6mpnpxs0vonr` (`categoria_id`),
  KEY `FKlkw7xmvewmkbr8466hk8acevp` (`instructor_id`),
  CONSTRAINT `FKlkw7xmvewmkbr8466hk8acevp` FOREIGN KEY (`instructor_id`) REFERENCES `instructores` (`id`),
  CONSTRAINT `FKo6ihsoct2e21c6mpnpxs0vonr` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'lorem ipsum chanante','A',NULL,'2023-05-15','2023-01-01',9.99,'Angular',4.6,5,1),(2,'Incididunt zagal traeros tol jamón chachachá ','A',NULL,'2023-05-15','2023-01-01',9.99,'React',4.7,5,1),(3,'Gracias a este curso aprenderás desde a crear tus propias aplicaciones web  desde cero usando Vue.js 3, Strapi, Firebase, etc...\n\nAprenderás a crear aplicaciones web donde el cliente está desacoplado del servidor y a desplegarlos.','A',NULL,'2023-06-18','2023-01-01',9.99,'Vue.js',4.8,5,1),(4,'Chanante ipsum dolor sit amet, traeros tol jamón forrondo','A',NULL,'2023-06-18','2023-03-01',9.99,'Principios de Acústica para el Home Studio',4.81,1,2),(5,'Bufonesco elit eres un pirámidee fresquete payacho ','A',NULL,'2023-06-18','2023-03-01',12.99,'Home Studio intermedio',4.5,1,2),(6,'Regomello elit dolore droja hueles avinagrado cacahué labore','A',NULL,'2023-06-18','2023-03-01',15.99,'Masterizacion de Audio: La guía completa de cómo masterizar',4.6,1,2),(7,'Corporis voluptates libero labore laudantium quo ab consequuntur molestiae ipsa. Et ab fugit recusandae rerum ullam distinctio at aut voluptatem. Quo est vero vel corrupti.','A','bluetooth, Cape Verde Escudo, Tasty Rubber Soap','2023-06-11','2023-06-01',20.95,'grey Small Steel Hat',0,9,3),(8,'Soluta aut sit. A mollitia magni incidunt. Distinctio facilis in quis nulla. Reprehenderit et assumenda. Ut aspernatur quia assumenda aliquid omnis.','A','','2023-06-11','2023-06-11',163.62,'Home Loan Account',0,9,3),(9,'Delectus ab et magnam. Perspiciatis nisi distinctio similique cupiditate. Exercitationem sed ut voluptas harum vero ea odio. Eligendi inventore possimus. Et doloribus non omnis expedita minima placeat corrupti.','A','','2023-06-11','2023-06-11',45.00,'Investment Account',0,10,3),(10,'Iusto et iusto culpa ipsam. Voluptatem distinctio fugiat eos debitis necessitatibus adipisci voluptatem. Odio esse iste quas aut placeat ut est. Minus labore saepe eum accusantium ut praesentium voluptas.','A','','2023-06-11','2023-06-11',15.75,'Checking Account',0,10,3),(11,'Et qui fugiat sed voluptatem dolorum ea sunt impedit. Id rerum doloribus rem accusamus odit nihil itaque enim. Beatae esse aspernatur non illo dicta velit eum. Ipsam dolorem iste.','A','','2023-06-21','2023-06-21',178.20,'Personal Loan Account',0,11,3),(12,'No es necesario que tengas conocimientos de fotografía, se parte desde cero y se enseña a cada alumno el manejo de su propia cámara en modo manual (no es necesario que te leas el libro de instrucciones). ','A','foto','2023-07-25','2023-07-25',60.00,'Curso de iniciación a la fotografía',4.88,2,4),(13,'Está orientada a que aprendas a desenvolverte en la fotografía de paisaje por lo que se irá dando nociones y consejos a cada uno durante toda la jornada sobre filtros y composición.','A','foto','2023-07-25','2023-07-25',80.00,'Curso fotografía de paisaje',4.12,2,4);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructores`
--

DROP TABLE IF EXISTS `instructores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructores` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fecha_alta` date DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructores`
--

LOCK TABLES `instructores` WRITE;
/*!40000 ALTER TABLE `instructores` DISABLE KEYS */;
INSERT INTO `instructores` VALUES (1,'Merayo','I.T.Informática de Gestión Chanante ipsum dolor sit amet, interneeeer enim tontiploster hueles avinagrado bizcoché. Cabeza de viejo cuerpo de joven enratonao ut cosica ju-já chiquititantantan cascoporro regomello tunante.','2023-01-01','Isidro'),(2,'Hernandez','Conocido por la producción de discos de música independiente de bandas bien conocidas como Los Planetas, Sr. Chinarro o Mercromina.','2022-02-02','Carlos'),(3,'de Amor Bizarro','Una vez que fichan por el sello Mushroom Pillow, graban su primer disco, Triángulo de Amor Bizarro (2007), con el técnico Carlos Hernández','2022-02-02','Triángulo'),(4,'Sánchez Sánchez','FOTÓGRAFO PROFESIONAL ESPECIALIZADO EN NATURALEZA Y RETRATO','2023-07-25','Paula');
/*!40000 ALTER TABLE `instructores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `apellidos` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL UNIQUE,
  `estado` char(1) DEFAULT 'P',
  `nombre` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'García Sánchez','maria@localhost','P','María',NULL),(2,'Ponferrada Dominguez','juanantonio@localhost','P','Juan Antonio',NULL),(3,'Toral Alonso','marta@localhost','P','Marta',NULL),(4,'Villa Ledesma','pedro@localhost','P','Pedro',NULL),(5,'García Sánchez','helena@localhost','A','Helena',NULL),(6,'Toreno Sil','carlos@localhost','A','Carlos',NULL),(7,'Boeza Alonso','ines@localhost','A','Ines',NULL),(8,'Fresnedo Noceda','isable@localhost','A','Isabel',NULL);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_cursos`
--

DROP TABLE IF EXISTS `usuarios_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_cursos` (
  `usuario_id` bigint(20) NOT NULL,
  `curso_id` bigint(20) NOT NULL,
  PRIMARY KEY (`usuario_id`,`curso_id`),
  KEY `FKy97wita1jlju70m8hgk8mwp` (`curso_id`),
  CONSTRAINT `FKj1psn6ww3wau5afmmi7a8how6` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `FKy97wita1jlju70m8hgk8mwp` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_cursos`
--

LOCK TABLES `usuarios_cursos` WRITE;
/*!40000 ALTER TABLE `usuarios_cursos` DISABLE KEYS */;
INSERT INTO `usuarios_cursos` VALUES (1,4),(1,5),(2,1),(2,2),(2,3),(3,1),(4,4),(5,4),(5,5),(5,6),(8,6);
/*!40000 ALTER TABLE `usuarios_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `valoraciones`
--

DROP TABLE IF EXISTS `valoraciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `valoraciones` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `comentario` text DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `puntuacion` int(11) NOT NULL,
  `curso_id` bigint(20) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbbir6wjjxjr3nsbl4d5semvi3` (`curso_id`),
  KEY `FKmtbedrv2q0wjdsrvnb57g8whw` (`usuario_id`),
  CONSTRAINT `FKbbir6wjjxjr3nsbl4d5semvi3` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`),
  CONSTRAINT `FKmtbedrv2q0wjdsrvnb57g8whw` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoraciones`
--

LOCK TABLES `valoraciones` WRITE;
/*!40000 ALTER TABLE `valoraciones` DISABLE KEYS */;
INSERT INTO `valoraciones` VALUES (1,'comentario de prueba de 02-05-2023','2023-05-02',4,4,1),(3,'Molestias voluptatem eos suscipit iure dolorem modi repellendus qui. Maxime temporibus explicabo. Necessitatibus natus eius consequatur qui nesciunt ab eius labore. Natus dolor aperiam adipisci culpa quia.','2023-06-11',5,5,1),(6,'Eaque doloribus molestiae quam. Et occaecati quis repudiandae aut non aperiam expedita. Quo delectus adipisci facilis doloribus aut exercitationem vitae dignissimos. Velit eius dolore.','2023-06-11',5,1,2),(7,'Tempora doloribus voluptas voluptate nihil. Repellendus repellendus dicta consequatur vitae et quis nihil quo. Cum sapiente rem ut odit molestiae tempora voluptates.','2023-06-11',5,1,2);
/*!40000 ALTER TABLE `valoraciones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-25 19:01:16
