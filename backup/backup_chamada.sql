-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sis_chamada
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `curso_value` int NOT NULL,
  `curso_status` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Administracao',4,1),(2,'Analise e Desenvolvimento de Sistemas',4,1),(3,'Arquitetura e Urbanismo',4,1),(4,'Biomedicina',4,1),(5,'Ciencias Contabeis',4,1),(6,'Direito',4,1),(7,'Educacao Fisica',4,1),(8,'Enfermagem',4,1),(9,'Engenharia Civil',4,1),(10,'Engenharia de Producao',4,1),(11,'Estetica e Cosmetica',4,1),(12,'Farmacia',4,1),(13,'Fisioterapia',4,1),(14,'Gastronomia',4,1),(15,'Jornalismo',4,1),(16,'Nutricao',4,1),(17,'Odontologia',4,1),(18,'Pedagogia',4,1),(19,'Psicologia',4,1),(20,'Turismo',4,1),(21,'Administracao',3,1),(22,'Analise e Desenvolvimento de Sistemas',3,1),(23,'Arquitetura e Urbanismo',3,1),(24,'Biomedicina',3,1),(25,'Ciencias Contabeis',3,1),(26,'Direito',3,1),(27,'Educacao Fisica',3,1),(28,'Enfermagem',3,1),(29,'Engenharia Civil',3,1),(30,'Engenharia de Producao',3,1),(31,'Estetica e Cosmetica',3,1),(32,'Farmacia',3,1),(33,'Fisioterapia',3,1),(34,'Jornalismo',3,1),(35,'Nutricao',3,1),(36,'Odontologia',3,1),(37,'Psicologia',3,1),(38,'Turismo',3,1),(39,'Administracao',1,1),(40,'Agronomia',1,1),(41,'Analise e Desenvolvimento de Sistemas',1,1),(42,'Arquitetura e Urbanismo',1,1),(43,'Biomedicina',1,1),(44,'Ciencias Contabeis',1,1),(45,'Direito',1,1),(46,'Educacao Fisica',1,1),(47,'Enfermagem',1,1),(48,'Engenharia Civil',1,1),(49,'Engenharia de Producao',1,1),(50,'Estetica e Cosmetica',1,1),(51,'Farmacia',1,1),(52,'Fisioterapia',1,1),(53,'Gastronomia',1,1),(54,'Jornalismo',1,1),(55,'Nutricao',1,1),(56,'Odontologia',1,1),(57,'Pedagogia',1,1),(58,'Psicologia',1,1),(59,'Turismo',1,1),(60,'Arquitetura de Interiores',2,1),(61,'Auditoria e Pericia Contabil',2,1),(62,'Biomedicina Estetica',2,1),(63,'Citologia',2,1),(64,'Comunicacao e Marketing',2,1),(65,'Controladoria e Finan?as',2,1),(66,'Diagnostico por Imagem',2,1),(67,'Direito Civil',2,1),(68,'Direito Imobiliario, Notarial e Registral',2,1),(69,'Direito Penal',2,1),(70,'Docencia para Ensino Superior',2,1),(71,'Enfermagem do Trabalho',2,1),(72,'Engenharia de Seguran?a do Trabalho',2,1),(73,'Estetica',2,1),(74,'Fertilidade, manejo do solo e nutricao de plantas',2,1),(75,'Fisioterapia Dermatofuncional',2,1),(76,'Gastronomia Moderna e Autoral',2,1),(77,'Geoprocessamento e Georreferenciamento',2,1),(78,'Gerenciamento de Residuos Solidos',2,1),(79,'Gest?o de Pessoas',2,1),(80,'Gest?o do Agronegocio',2,1),(81,'Gest?o e Legislacaoo do Ensino Superior',2,1),(82,'Gest?o Estrategica de Negocios',2,1),(83,'Gest?oo Financeira',2,1),(84,'Gest?o Neuro Estrategica e Neuro Lideran?a',2,1),(85,'Gest?o, Auditoria e Pericia Ambiental',2,1),(86,'Governan?a e Gest?o de Tecnologia da Informacao',2,1),(87,'Hematologia Clinica',2,1),(88,'Instrumentacao Cirurgica',2,1),(89,'Neurociencia e Neuropsicologia',2,1),(90,'Parasitologia, Imunologia e Microbiologia',2,1),(91,'Pericia Criminal e Judicial',2,1),(92,'Psicologia de Tr?nsito',2,1),(93,'Psicopedagogia Clinica e Institucional',2,1),(94,'Saude Coletiva com enfase em Saude da Familia',2,1),(95,'Seguran?a Alimentar',2,1),(96,'Socorrista Resgatista',2,1),(97,'Treinamento Desportivo e Fisiologia do Exercicio',2,1),(98,'Urgencia e Emergencia e Trauma em Sa?de ',2,1),(99,'UTI: Adulto, Pediatrico e Neonatal',2,1);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presenca`
--

DROP TABLE IF EXISTS `presenca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `presenca` (
  `id` int NOT NULL,
  `data` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ra` int DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presenca`
--

LOCK TABLES `presenca` WRITE;
/*!40000 ALTER TABLE `presenca` DISABLE KEYS */;
INSERT INTO `presenca` VALUES (42,'2022-06-27 15:22:59',46554,'Vitor Gabriel N Gransotto'),(43,'2022-06-27 15:23:05',123456,'Junim'),(44,'2022-06-27 15:23:14',46554,'Vitor Gabriel Nascimento Gransotto'),(45,'2022-06-27 15:23:20',46554,'Stefanny Selzller'),(46,'2022-06-27 17:23:58',4568412,'Vitor Gabriel Gransotto'),(47,'2022-06-27 17:26:54',231231,'Teste 123'),(42,'2022-06-28 08:32:15',46554,'Vitor Gabriel N Gransotto'),(45,'2022-06-28 08:34:18',46554,'Stefanny Selzller'),(43,'2022-06-28 08:34:22',123456,'Junim'),(44,'2022-06-28 08:34:28',46554,'Vitor Gabriel Nascimento Gransotto');
/*!40000 ALTER TABLE `presenca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `foto` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` int NOT NULL,
  `curso` varchar(255) NOT NULL,
  `ra` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `cpf` varchar(255) NOT NULL,
  `nascimento` varchar(255) NOT NULL,
  `celular` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (41,'68c8a770-fdbf-45a4-9bc4-13205e845556.jpeg','AdminADS',3,'Analise e Desenvolvimento de Sistemas',0,'admin@ads.com','admin123','undefined','2002-02-10','66999721564'),(42,'2f88229b-0649-4506-9c5a-1535fb67cf71.jpeg','Vitor Gabriel N Gransotto',1,'Analise e Desenvolvimento de Sistemas',46554,'gransotto2002@icloud.com','123456','undefined','2002-02-10','66999721564'),(43,'dcabaf76-6844-4db3-8c5c-b683acbe4c24.jpeg','Junim',1,'Analise e Desenvolvimento de Sistemas',123456,'email@email','123','06773993164','2002-02-10','66999721564'),(44,'4307ce5f-e057-483d-806d-c1f3c63e1159.jpeg','Vitor Gabriel Nascimento Gransotto',1,'Biomedicina',46554,'email@email.com','123','06773993164','2002-02-10','66999721564'),(45,'4617407e-6b7e-4b33-a51e-35e98d3fcf7e.jpeg','Stefanny Selzller',1,'Analise e Desenvolvimento de Sistemas',46554,'ste@email.com','123','06773993164','2002-02-10','66999721564'),(46,'bce42713-e720-4767-9b70-eac5d7281be4.jpeg','Vitor Gabriel Gransotto',1,'Analise e Desenvolvimento de Sistemas',4568412,'teste@teste.com','123','12321312312','2002-02-10','116547896413'),(47,'7606e58b-448a-47a5-87eb-4749b24ef689.jpeg','Teste 123',1,'Farmacia',231231,'123@123.com','123','06773993164','2002-02-10','123478185');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-28  9:43:33
