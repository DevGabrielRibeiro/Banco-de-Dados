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
-- Table structure for table `alunos`
--

DROP TABLE IF EXISTS `alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alunos` (
  `id_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) NOT NULL,
  `cpf` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(30) NOT NULL,
  `fk_id_unidade` int(11) NOT NULL,
  PRIMARY KEY (`id_aluno`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `fk_id_unidade` (`fk_id_unidade`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`fk_id_unidade`) REFERENCES `unidades_senac` (`id_unidade`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alunos`
--

LOCK TABLES `alunos` WRITE;
/*!40000 ALTER TABLE `alunos` DISABLE KEYS */;
INSERT INTO `alunos` VALUES (1,'Gabriel Ribeiro','87687687687','gabrielribeiro@gmail.com','Gabriel@123654',1),(2,'Pedro Henrique','45345345345','pedrohenrique@gmail.com','Pedro@789654',2),(3,'Luis Castro','14785236987','luiscastro@gmail.com','Luis@963258',3),(4,'Douglas Machado','32654178965','douglasmachado@gmail.com','Douglas!745896',4),(5,'Raissa Oliveira','25415698741','raissaoliveira@gmail.com','Raissa#1236@98',5),(6,'Maria Aparecida','69852659872','mariaaparecida@gmail.com','Maria$$8541',1),(7,'Cláudia Raia','02145874120','claudiaraia@gmail.com','@Claudia987#',2),(8,'Marcos Coelho','02102547896','marcoscoelho@gmail.com','Marcao98@#4',3),(9,'Vanessa Soares','02365201598','vanessasoares@gmail.com','Vanessinha#4@1',4),(10,'Juliana Augusto','52012541023','julianaaugusto@gmail.com','Juliana9$@',5),(11,'Lucas Manete','05422069785','lucas@gmail.com','Lucas123',1),(12,'Lucas Manete','0542206978555','lucas@gmail.com','Lucas123',1),(14,'Lucas Manete','0542206978888','lucas@gmail.com','Lucas123',1),(15,'Lucas Manete','0541220697888','lucas@gmail.com','Lucas123',1),(16,'Lucas Manete','0544122069788','lucas@gmail.com','Lucas123',1),(18,'Tharlinton Farias ','14848734673 ','tharlinton@gmail.com','123456789',1),(19,'Gabriel Come pastel','452145236524','biel@gmaill.com','1234',1),(20,'Carlos','45632145669','gabfd@gmail.com','1234',4);
/*!40000 ALTER TABLE `alunos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 21:24:45
