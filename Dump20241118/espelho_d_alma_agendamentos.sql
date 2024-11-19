-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: espelho_d_alma
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `agendamentos`
--

DROP TABLE IF EXISTS `agendamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamentos` (
  `id_agendamento` int(11) NOT NULL AUTO_INCREMENT,
  `fk_id_aluno` int(11) NOT NULL,
  `fk_id_profissional` int(11) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  `horario_agendamento` time NOT NULL,
  `dia_agendamento` date NOT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `status_agendamento` varchar(20) DEFAULT 'AGENDANDO',
  PRIMARY KEY (`id_agendamento`),
  KEY `fk_id_aluno` (`fk_id_aluno`),
  KEY `fk_id_profissional` (`fk_id_profissional`),
  KEY `fk_id_unidade` (`fk_id_unidade`),
  CONSTRAINT `agendamentos_ibfk_1` FOREIGN KEY (`fk_id_aluno`) REFERENCES `alunos` (`id_aluno`),
  CONSTRAINT `agendamentos_ibfk_2` FOREIGN KEY (`fk_id_profissional`) REFERENCES `profissionais` (`id_profissional`),
  CONSTRAINT `agendamentos_ibfk_3` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades_senac` (`id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamentos`
--

LOCK TABLES `agendamentos` WRITE;
/*!40000 ALTER TABLE `agendamentos` DISABLE KEYS */;
INSERT INTO `agendamentos` VALUES (1,1,4,5,'14:30:00','2024-11-11','Nenhuma observação','AGENDANDO'),(2,2,3,4,'15:30:00','2024-11-11','Nenhuma observação','AGENDANDO'),(3,3,5,3,'16:30:00','2024-11-12','Nenhuma observação','AGENDANDO'),(4,4,2,2,'17:30:00','2024-11-12','Nenhuma observação','AGENDANDO'),(5,5,1,1,'20:30:00','2024-11-13','Nenhuma observação','AGENDANDO'),(6,6,1,1,'15:30:00','2024-11-14','Nenhuma observação','AGENDANDO'),(7,7,2,2,'14:30:00','2024-11-14','Nenhuma observação','AGENDANDO'),(8,8,5,3,'16:30:00','2024-11-14','Nenhuma observação','AGENDANDO'),(9,9,4,4,'20:30:00','2024-11-13','Nenhuma observação','AGENDANDO'),(10,10,3,5,'17:30:00','2024-11-12','Nenhuma observação','AGENDANDO');
/*!40000 ALTER TABLE `agendamentos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 21:24:46
