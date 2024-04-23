CREATE DATABASE  IF NOT EXISTS `tp-programacion-web-2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `tp-programacion-web-2`;
-- MariaDB dump 10.19  Distrib 10.4.27-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tp-programacion-web-2
-- ------------------------------------------------------
-- Server version	10.4.27-MariaDB

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(255) NOT NULL,
  `id_estado_categoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Deporte',1),(2,'Geografía',1),(3,'Música',1),(4,'Entretenimiento',1),(5,'Historia',1),(6,'Tecnología',1),(7,'Literatura',1),(8,'Matemática',1),(9,'Fútbol',3);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_categoria`
--

DROP TABLE IF EXISTS `estado_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_categoria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_categoria`
--

LOCK TABLES `estado_categoria` WRITE;
/*!40000 ALTER TABLE `estado_categoria` DISABLE KEYS */;
INSERT INTO `estado_categoria` VALUES (1,'activa'),(2,'suspendida'),(3,'sugerida');
/*!40000 ALTER TABLE `estado_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_pregunta`
--

DROP TABLE IF EXISTS `estado_pregunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_pregunta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_pregunta`
--

LOCK TABLES `estado_pregunta` WRITE;
/*!40000 ALTER TABLE `estado_pregunta` DISABLE KEYS */;
INSERT INTO `estado_pregunta` VALUES (1,'activa'),(2,'suspendida'),(3,'reportada'),(4,'sugerida');
/*!40000 ALTER TABLE `estado_pregunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partidas`
--

DROP TABLE IF EXISTS `partidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puntaje` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidas`
--

LOCK TABLES `partidas` WRITE;
/*!40000 ALTER TABLE `partidas` DISABLE KEYS */;
INSERT INTO `partidas` VALUES (1,1,'2023-06-26 18:09:36',6),(2,3,'2023-06-26 23:37:39',17),(3,4,'2023-06-26 23:37:39',17),(4,0,'2023-06-27 00:02:05',19),(5,1,'2023-07-03 01:53:21',19),(6,1,'2023-07-03 01:53:21',19),(7,0,'2023-07-03 01:53:21',5),(8,2,'2023-07-03 13:18:00',15);
/*!40000 ALTER TABLE `partidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preguntas`
--

DROP TABLE IF EXISTS `preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(255) NOT NULL,
  `id_estado_pregunta` int(11) DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `respuesta_a` varchar(255) DEFAULT NULL,
  `respuesta_b` varchar(255) DEFAULT NULL,
  `respuesta_c` varchar(255) DEFAULT NULL,
  `respuesta_d` varchar(255) DEFAULT NULL,
  `respuesta_correcta` varchar(255) DEFAULT NULL,
  `preguntas_totales` int(11) NOT NULL,
  `preguntas_correctas` int(11) NOT NULL,
  `porcentaje_acierto` float NOT NULL,
  `fecha_creacion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estado_pregunta` (`id_estado_pregunta`,`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preguntas`
--

LOCK TABLES `preguntas` WRITE;
/*!40000 ALTER TABLE `preguntas` DISABLE KEYS */;
-- Pregunta 1: Deportes
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál equipo ganó la última Copa Mundial de la FIFA en 2018?', 1, 1, 'Francia', 'Brasil', 'Alemania', 'Argentina', 'Francia', 1, 1, 100, '2023-10-30');

-- Pregunta 2: Historia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué año se firmó la Declaración de Independencia de los Estados Unidos?', 1, 2, '1776', '1789', '1799', '1804', '1776', 1, 1, 100, '2023-10-30');

-- Pregunta 3: Geografía
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es la capital de España?', 1, 3, 'Londres', 'Madrid', 'Berlín', 'París', 'Madrid', 1, 1, 100, '2023-10-30');

-- Pregunta 4: Ciencia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el símbolo químico del carbono?', 1, 4, 'C', 'Ca', 'Co', 'Cr', 'C', 1, 1, 100, '2023-10-30');

-- Pregunta 5: Películas
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién interpretó a Tony Stark en la película Iron Man?', 1, 5, 'Robert Downey Jr.', 'Chris Evans', 'Mark Ruffalo', 'Chris Hemsworth', 'Robert Downey Jr.', 1, 1, 100, '2023-10-30');

-- Pregunta 6: Arte
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién pintó la Mona Lisa?', 1, 6, 'Pablo Picasso', 'Vincent van Gogh', 'Leonardo da Vinci', 'Michelangelo', 'Leonardo da Vinci', 1, 1, 100, '2023-10-30');

-- Pregunta 7: Tecnología
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién cofundó Microsoft junto a Bill Gates?', 1, 7, 'Steve Jobs', 'Steve Wozniak', 'Larry Page', 'Paul Allen', 'Paul Allen', 1, 1, 100, '2023-10-30');

-- Pregunta 8: Literatura
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién escribió "Cien años de soledad"?', 1, 8, 'Gabriel García Márquez', 'Julio Cortázar', 'Mario Vargas Llosa', 'Isabel Allende', 'Gabriel García Márquez', 1, 1, 100, '2023-10-30');

-- Pregunta 9: Música
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién es conocido como el "Rey del Pop"?', 1, 9, 'Elvis Presley', 'Michael Jackson', 'Frank Sinatra', 'John Lennon', 'Michael Jackson', 1, 1, 100, '2023-10-30');

-- Pregunta 10: Alimentos
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el ingrediente principal de la pizza margarita?', 1, 10, 'Jamón', 'Pepperoni', 'Tomate y mozzarella', 'Pollo', 'Tomate y mozzarella', 1, 1, 100, '2023-10-30');
-- Pregunta 21: Deportes
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién es considerado el mejor jugador de baloncesto de todos los tiempos?', 1, 1, 'Michael Jordan', 'LeBron James', 'Kobe Bryant', 'Magic Johnson', 'Michael Jordan', 1, 1, 100, '2023-11-01');

-- Pregunta 22: Historia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué año comenzó la Segunda Guerra Mundial?', 1, 2, '1935', '1939', '1941', '1945', '1939', 1, 1, 100, '2023-11-01');

-- Pregunta 23: Geografía
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es la montaña más alta del mundo?', 1, 3, 'Monte Everest', 'Monte Kilimanjaro', 'Monte McKinley', 'Monte Aconcagua', 'Monte Everest', 1, 1, 100, '2023-11-01');

-- Pregunta 24: Ciencia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el elemento químico más abundante en la Tierra?', 1, 4, 'Hierro', 'Oxígeno', 'Silicio', 'Carbono', 'Oxígeno', 1, 1, 100, '2023-11-01');

-- Pregunta 25: Películas
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién dirigió la película "Titanic"?', 1, 5, 'Steven Spielberg', 'James Cameron', 'George Lucas', 'Martin Scorsese', 'James Cameron', 1, 1, 100, '2023-11-01');

-- Pregunta 26: Arte
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién pintó "La última cena"?', 1, 6, 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Michelangelo', 'Leonardo da Vinci', 1, 1, 100, '2023-11-01');

-- Pregunta 27: Tecnología
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué año se lanzó el primer iPhone?', 1, 7, '2005', '2007', '2010', '2012', '2007', 1, 1, 100, '2023-11-01');

-- Pregunta 28: Literatura
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién escribió "1984"?', 1, 8, 'Aldous Huxley', 'Ray Bradbury', 'George Orwell', 'Philip K. Dick', 'George Orwell', 1, 1, 100, '2023-11-01');

-- Pregunta 29: Música
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es la banda de rock conocida como "Los Rolling Stones"?', 1, 9, 'The Beatles', 'Led Zeppelin', 'The Who', 'The Rolling Stones', 'The Rolling Stones', 1, 1, 100, '2023-11-01');

-- Pregunta 30: Alimentos
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el ingrediente principal de la paella?', 1, 10, 'Pollo', 'Cerdo', 'Mariscos', 'Arroz', 'Arroz', 1, 1, 100, '2023-11-01');
-- Pregunta 31: Deportes
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué deporte se utiliza una pelota de béisbol?', 1, 1, 'Fútbol', 'Baloncesto', 'Béisbol', 'Tenis', 'Béisbol', 1, 1, 100, '2023-11-02');

-- Pregunta 32: Historia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién fue el primer presidente de Estados Unidos?', 1, 2, 'Thomas Jefferson', 'George Washington', 'John Adams', 'Benjamin Franklin', 'George Washington', 1, 1, 100, '2023-11-02');

-- Pregunta 33: Geografía
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es la capital de Australia?', 1, 3, 'Sídney', 'Melbourne', 'Canberra', 'Brisbane', 'Canberra', 1, 1, 100, '2023-11-02');

-- Pregunta 34: Ciencia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el proceso por el cual las plantas obtienen energía a partir de la luz solar?', 1, 4, 'Fotosíntesis', 'Respiración', 'Transpiración', 'Evaporación', 'Fotosíntesis', 1, 1, 100, '2023-11-02');

-- Pregunta 35: Películas
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es la película ganadora del Óscar a la Mejor Película en 2020?', 1, 5, 'Parasite', '1917', 'Joker', 'Once Upon a Time in Hollywood', 'Parasite', 1, 1, 100, '2023-11-02');

-- Pregunta 36: Arte
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién pintó "La noche estrellada"?', 1, 6, 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Michelangelo', 'Vincent van Gogh', 1, 1, 100, '2023-11-02');

-- Pregunta 37: Tecnología
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién cofundó Apple junto a Steve Jobs?', 1, 7, 'Bill Gates', 'Steve Wozniak', 'Mark Zuckerberg', 'Larry Page', 'Steve Wozniak', 1, 1, 100, '2023-11-02');

-- Pregunta 38: Literatura
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién escribió "Romeo y Julieta"?', 1, 8, 'Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Fyodor Dostoevsky', 'William Shakespeare', 1, 1, 100, '2023-11-02');

-- Pregunta 39: Música
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Qué banda de rock es conocida como "Los Fab Four"?', 1, 9, 'The Beatles', 'The Rolling Stones', 'Led Zeppelin', 'Pink Floyd', 'The Beatles', 1, 1, 100, '2023-11-02');

-- Pregunta 40: Alimentos
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el ingrediente principal de la comida sushi?', 1, 10, 'Arroz', 'Pescado', 'Carne', 'Tofu', 'Arroz', 1, 1, 100, '2023-11-02');
-- Pregunta 41: Deportes
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el deporte en el que se juega con una raqueta y una pelota amarilla?', 1, 1, 'Tenis', 'Baloncesto', 'Bádminton', 'Golf', 'Tenis', 1, 1, 100, '2023-11-03');

-- Pregunta 42: Historia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién fue el primer presidente de México?', 1, 2, 'Miguel Hidalgo', 'Benito Juárez', 'Emiliano Zapata', 'Guadalupe Victoria', 'Guadalupe Victoria', 1, 1, 100, '2023-11-03');

-- Pregunta 43: Geografía
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el país más grande del mundo en términos de superficie?', 1, 3, 'China', 'Estados Unidos', 'Rusia', 'Canadá', 'Rusia', 1, 1, 100, '2023-11-03');

-- Pregunta 44: Ciencia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el elemento químico más ligero?', 1, 4, 'Hidrógeno', 'Helio', 'Oxígeno', 'Carbono', 'Hidrógeno', 1, 1, 100, '2023-11-03');

-- Pregunta 45: Películas
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién interpretó a Jack en la película "Titanic"?', 1, 5, 'Leonardo DiCaprio', 'Brad Pitt', 'Tom Hanks', 'Johnny Depp', 'Leonardo DiCaprio', 1, 1, 100, '2023-11-03');

-- Pregunta 46: Arte
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién pintó "La persistencia de la memoria"?', 1, 6, 'Pablo Picasso', 'Leonardo da Vinci', 'Salvador Dalí', 'Vincent van Gogh', 'Salvador Dalí', 1, 1, 100, '2023-11-03');

-- Pregunta 47: Tecnología
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Qué siglas representan a la red de computadoras que conecta a nivel mundial?', 1, 7, 'WWW', 'USB', 'LAN', 'PDF', 'WWW', 1, 1, 100, '2023-11-03');

-- Pregunta 48: Literatura
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién escribió "Orgullo y prejuicio"?', 1, 8, 'Jane Austen', 'Charlotte Brontë', 'Emily Dickinson', 'George Eliot', 'Jane Austen', 1, 1, 100, '2023-11-03');

-- Pregunta 49: Música
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el álbum más vendido de todos los tiempos?', 1, 9, 'Thriller', 'Back in Black', 'The Dark Side of the Moon', 'Abbey Road', 'Thriller', 1, 1, 100, '2023-11-03');

--
-- Pregunta 51: Deportes
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el deporte que se juega en un campo ovalado con un balón de rugby?', 1, 1, 'Fútbol', 'Baloncesto', 'Rugby', 'Críquet', 'Rugby', 1, 1, 100, '2023-11-04');

-- Pregunta 52: Historia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Qué presidente de Estados Unidos firmó la Declaración de Emancipación?', 1, 2, 'Thomas Jefferson', 'George Washington', 'Abraham Lincoln', 'John F. Kennedy', 'Abraham Lincoln', 1, 1, 100, '2023-11-04');

-- Pregunta 53: Geografía
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué continente se encuentra el desierto del Sahara?', 1, 3, 'Asia', 'Europa', 'África', 'Oceanía', 'África', 1, 1, 100, '2023-11-04');

-- Pregunta 54: Ciencia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es la fórmula química del agua?', 1, 4, 'H2O', 'CO2', 'N2O', 'O2', 'H2O', 1, 1, 100, '2023-11-04');

-- Pregunta 55: Películas
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué película de Disney se encuentra el personaje Simba?', 1, 5, 'La Bella y la Bestia', 'La Sirenita', 'El Rey León', 'Aladdín', 'El Rey León', 1, 1, 100, '2023-11-04');

-- Pregunta 56: Arte
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién pintó la famosa obra "La Gioconda"?', 1, 6, 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Michelangelo', 'Leonardo da Vinci', 1, 1, 100, '2023-11-04');

-- Pregunta 57: Tecnología
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el sistema operativo desarrollado por Google para dispositivos móviles?', 1, 7, 'Windows', 'iOS', 'Android', 'macOS', 'Android', 1, 1, 100, '2023-11-04');

-- Pregunta 58: Literatura
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién escribió "Matar a un ruiseñor"?', 1, 8, 'J.K. Rowling', 'Harper Lee', 'J.R.R. Tolkien', 'George Orwell', 'Harper Lee', 1, 1, 100, '2023-11-04');

-- Pregunta 59: Música
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál de los Beatles fue conocido como "el tranquilo"?', 1, 9, 'John Lennon', 'Paul McCartney', 'George Harrison', 'Ringo Starr', 'George Harrison', 1, 1, 100, '2023-11-04');

-- Pregunta 60: Alimentos
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Qué ingrediente principal se utiliza para hacer guacamole?', 1, 10, 'Tomate', 'Aguacate', 'Pimiento', 'Cebolla', 'Aguacate', 1, 1, 100, '2023-11-04');
-- Pregunta 61: Deportes
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el deporte que se juega en un campo con nueve jugadores por equipo?', 1, 1, 'Fútbol', 'Baloncesto', 'Béisbol', 'Tenis', 'Béisbol', 1, 1, 100, '2023-11-05');

-- Pregunta 62: Historia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué año se firmó la Declaración de Independencia de los Estados Unidos?', 1, 2, '1776', '1789', '1800', '1812', '1776', 1, 1, 100, '2023-11-05');

-- Pregunta 63: Geografía
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el río más largo del mundo?', 1, 3, 'Amazonas', 'Nilo', 'Misisipi', 'Yangtsé', 'Nilo', 1, 1, 100, '2023-11-05');

-- Pregunta 64: Ciencia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el símbolo químico del oro?', 1, 4, 'Ag', 'Au', 'Pt', 'Fe', 'Au', 1, 1, 100, '2023-11-05');

-- Pregunta 65: Películas
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién dirigió la trilogía de "El Señor de los Anillos"?', 1, 5, 'Steven Spielberg', 'George Lucas', 'Peter Jackson', 'James Cameron', 'Peter Jackson', 1, 1, 100, '2023-11-05');

-- Pregunta 66: Arte
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién pintó la famosa obra "La Noche Estrellada"?', 1, 6, 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Michelangelo', 'Vincent van Gogh', 1, 1, 100, '2023-11-05');

-- Pregunta 67: Tecnología
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es la empresa que desarrolló el sistema operativo Windows?', 1, 7, 'Apple', 'Microsoft', 'Google', 'Linux', 'Microsoft', 1, 1, 100, '2023-11-05');

-- Pregunta 68: Literatura
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién escribió "Don Quijote de la Mancha"?', 1, 8, 'Miguel de Cervantes', 'Garcilaso de la Vega', 'Lope de Vega', 'Federico García Lorca', 'Miguel de Cervantes', 1, 1, 100, '2023-11-05');

-- Pregunta 69: Música
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál de los siguientes géneros musicales es conocido por su origen en Jamaica y su influencia en el reggae?', 1, 9, 'Ska', 'Punk', 'Rock', 'Hip-hop', 'Ska', 1, 1, 100, '2023-11-05');

-- Pregunta 70: Alimentos
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el ingrediente principal de la sopa de miso?', 1, 10, 'Pasta', 'Tofu', 'Algas marinas', 'Miso', 'Miso', 1, 1, 100, '2023-11-05');
-- Pregunta 71: Deportes
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿En qué deporte se compite en una pista de hielo?', 1, 1, 'Patinaje artístico', 'Hockey sobre hielo', 'Patinaje sobre ruedas', 'Esquí alpino', 'Hockey sobre hielo', 1, 1, 100, '2023-11-06');

-- Pregunta 72: Historia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál de los siguientes imperios fue uno de los más grandes de la historia antigua?', 1, 2, 'Imperio Romano', 'Imperio Británico', 'Imperio Otomano', 'Imperio Inca', 'Imperio Romano', 1, 1, 100, '2023-11-06');

-- Pregunta 73: Geografía
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el punto más alto de la Tierra?', 1, 3, 'Monte Kilimanjaro', 'Monte McKinley', 'Monte Everest', 'Monte Fuji', 'Monte Everest', 1, 1, 100, '2023-11-06');

-- Pregunta 74: Ciencia
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál es el proceso por el cual las plantas convierten la luz solar en energía química?', 1, 4, 'Fotosíntesis', 'Respiración', 'Transpiración', 'Evaporación', 'Fotosíntesis', 1, 1, 100, '2023-11-06');

-- Pregunta 75: Películas
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Qué película cuenta la historia de un naufrago en una isla desierta junto a un balón de voleibol llamado Wilson?', 1, 5, 'Náufrago', 'El resplandor', 'Forrest Gump', 'Matrix', 'Náufrago', 1, 1, 100, '2023-11-06');

-- Pregunta 76: Arte
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién pintó "El nacimiento de Venus"?', 1, 6, 'Pablo Picasso', 'Leonardo da Vinci', 'Vincent van Gogh', 'Sandro Botticelli', 'Sandro Botticelli', 1, 1, 100, '2023-11-06');

-- Pregunta 77: Tecnología
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Cuál de las siguientes empresas se dedica a la fabricación de automóviles eléctricos?', 1, 7, 'Apple', 'Microsoft', 'Tesla', 'Amazon', 'Tesla', 1, 1, 100, '2023-11-06');

-- Pregunta 78: Literatura
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Quién escribió la novela "1984"?', 1, 8, 'George Orwell', 'Aldous Huxley', 'Ray Bradbury', 'H.G. Wells', 'George Orwell', 1, 1, 100, '2023-11-06');

-- Pregunta 79: Música
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Qué banda de rock es conocida por su álbum "The Wall"?', 1, 9, 'Pink Floyd', 'Led Zeppelin', 'The Rolling Stones', 'The Who', 'Pink Floyd', 1, 1, 100, '2023-11-06');

-- Pregunta 80: Alimentos
INSERT INTO `preguntas` (pregunta, id_estado_pregunta, id_categoria, respuesta_a, respuesta_b, respuesta_c, respuesta_d, respuesta_correcta, preguntas_totales, preguntas_correctas, porcentaje_acierto, fecha_creacion)
VALUES
('¿Qué fruta es conocida como "el fruto prohibido"?', 1, 10, 'Manzana', 'Pera', 'Plátano', 'Uva', 'Manzana', 1, 1, 100, '2023-11-06');

/*!40000 ALTER TABLE `preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rol` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'administrador'),(2,'editor'),(3,'jugador');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trampitas`
--

DROP TABLE IF EXISTS `trampitas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trampitas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha_compra` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trampitas`
--

LOCK TABLES `trampitas` WRITE;
/*!40000 ALTER TABLE `trampitas` DISABLE KEYS */;
INSERT INTO `trampitas` VALUES (1,4,15,'2023-06-26'),(2,5,5,'2022-06-22'),(3,6,10,'2023-06-15'),(4,7,6,'2023-06-26'),(5,8,4,'2022-12-22'),(6,16,2,'2023-01-26'),(7,19,12,'2023-06-26'),(8,15,1,'2023-07-03');
/*!40000 ALTER TABLE `trampitas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `ano_nacimiento` year(4) NOT NULL,
  `sexo` varchar(10) NOT NULL,
  `pais` varchar(255) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `foto_perfil` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `validado` int(1) NOT NULL DEFAULT 0,
  `preguntas_totales` int(11) NOT NULL,
  `preguntas_correctas` int(11) NOT NULL,
  `porcentaje_acierto` float NOT NULL,
  `fecha_registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trampitas` int(11) NOT NULL DEFAULT 0,
  `latitud` float NOT NULL,
  `longitud` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (4,'Gabriel','Enrriquez','gaenrriquez@gmail.com','202cb962ac59075b964b07152d234b70',2000,'M','Argentina','admin','Cuando.jpg','647cff2c13f9c',1,105,8,7.61905,'2023-07-03 01:48:27',15,-34.6589,-58.5867),(5,'Pepe','Argento','pepe@gmail.com','202cb962ac59075b964b07152d234b70',1960,'F','Chile','admin2','user-photo.png','647d589c749fe',1,5,2,40,'2022-07-01 14:22:02',5,-33.4593,-70.649),(6,'Tomás','Ayerbe','tomas@gmail.com','202cb962ac59075b964b07152d234b70',2002,'M','Argentina','tomas','user-photo.png','647fea03c212b',1,6,2,33.3333,'2021-07-01 14:01:31',10,-34.6589,-58.5867),(7,'Juan','Sánchez','juan@gmail.com','202cb962ac59075b964b07152d234b70',2002,'M','Perú','juan','user-photo.png','647fea03c2000',1,4,3,75,'2023-05-01 14:26:04',6,-12.0554,-77.0348),(8,'Pedro','Díaz','pedro@gmail.com','202cb962ac59075b964b07152d234b70',1970,'M','Colombia','pedro','user-photo.png','647fea03c2222',1,4,2,50,'2022-07-01 14:24:47',4,11.0048,-74.8168),(9,'Andrés','Pérez','andres@gmail.com','202cb962ac59075b964b07152d234b70',2002,'M','Argentina','andres','user-photo.png','647fea03c3333',1,4,1,25,'2022-03-01 14:01:31',0,-34.6571,-58.7121),(10,'Emiliano','Pérez','emiliano@gmail.com','202cb962ac59075b964b07152d234b70',2002,'M','Brasil','emiliano','user-photo.png','647fea03c4444',1,4,0,0,'2023-02-01 14:25:29',0,-23.5497,-46.6673),(11,'Pablo','Díaz','pablo@gmail.com','202cb962ac59075b964b07152d234b70',2015,'M','Argentina','pablo','user-photo.png','647fea03c5555',1,4,3,75,'2022-03-01 14:01:31',0,-34.6571,-58.7121),(12,'Flavio','Sánchez','flavio@gmail.com','202cb962ac59075b964b07152d234b70',2014,'M','Brasil','flavio','user-photo.png','647fea03c6666',1,4,2,50,'2023-05-01 14:25:29',0,-23.5497,-46.6673),(13,'Martín','Díaz','martin@gmail.com','202cb962ac59075b964b07152d234b70',2012,'M','Argentina','martin','user-photo.png','647fea03c7777',1,4,1,25,'2023-01-21 13:51:50',0,-34.6571,-58.7121),(14,'Fabricio','Pérez','fabricio@gmail.com','202cb962ac59075b964b07152d234b70',1990,'M','Perú','fabricio','user-photo.png','647fea03c8888',1,4,0,0,'2023-06-01 14:26:04',0,-12.0554,-77.0348),(15,'Jorge','Emilio','jorge@gmail.com','202cb962ac59075b964b07152d234b70',1950,'M','Perú','jorge','user-photo.png','647fea03c9999',1,7,5,71.4286,'2023-07-03 13:18:21',1,-12.0554,-77.0348),(16,'Silvia','Fernández','silvia@gmail.com','202cb962ac59075b964b07152d234b70',1945,'F','Colombia','silvia','user-photo.png','6498f92d4905a',1,4,2,50,'2022-07-01 14:24:47',2,11.0048,-74.8168),(17,'Cristian','Díaz','cristian@gmail.com','202cb962ac59075b964b07152d234b70',1975,'M','Argentina','cristian','user-photo.png','6499d0e6967fc',1,4,1,25,'2023-01-21 13:51:50',0,-34.6571,-58.7121),(18,'Ivan','Díaz','ivan@gmail.com','202cb962ac59075b964b07152d234b70',1975,'M','Argentina','ivan','user-photo.png','6499d0e696799',0,2,0,0,'2023-02-08 13:51:50',0,-34.6589,-58.5867),(19,'Ale','Ale','ale@gmail.com','202cb962ac59075b964b07152d234b70',2000,'M','Argentina','ale','user-photo.png','649a26c65233d',1,8,2,25,'2023-04-11 13:51:50',11,-34.6571,-58.7121),(20,'Francisco','Pérez','francisco@gmail.com','202cb962ac59075b964b07152d234b70',2001,'M','Argentina','francisco','user-photo.png','64a02f6325645',1,0,0,0,'2022-06-21 13:51:50',0,-34.6589,-58.5867),(21,'Juan','Manuel','juan2@gmail.com','202cb962ac59075b964b07152d234b70',1945,'M','Estados Unidos','juan2','user-photo.png','64a035120fc38',1,0,0,0,'2022-07-01 14:16:10',0,40.7128,-74.006);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_roles`
--

DROP TABLE IF EXISTS `usuarios_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_roles` (
  `idUsuario` int(11) NOT NULL,
  `idRol` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`idRol`) USING BTREE,
  KEY `idRol` (`idRol`),
  CONSTRAINT `FK_idRol` FOREIGN KEY (`idRol`) REFERENCES `roles` (`id`),
  CONSTRAINT `FK_idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `usuarios_roles_ibfk_1` FOREIGN KEY (`idRol`) REFERENCES `roles` (`id`),
  CONSTRAINT `usuarios_roles_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_roles`
--

LOCK TABLES `usuarios_roles` WRITE;
/*!40000 ALTER TABLE `usuarios_roles` DISABLE KEYS */;
INSERT INTO `usuarios_roles` VALUES (4,1),(4,2),(4,3),(5,2),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(18,3),(19,3),(20,3),(21,3);
/*!40000 ALTER TABLE `usuarios_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 10:19:30
