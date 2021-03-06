-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sis_carteirinha
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
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_users` (
  `id_users` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `admin_value` int NOT NULL,
  PRIMARY KEY (`id_users`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'Admin NPD','gransotto2002@icloud.com','alterarsenha123',4),(2,'Secretaria','secretaria@fasipe.com','algumasenha',4),(3,'Fernando NPDa','email@email','senha123456789',4),(4,'Adriano Barreto','gransotto2002@icloud.com','senhaasdasdasd',4),(5,'Vitor Gabriel NPD','gransotto2002@icloud.com','senhaasdasdasd',4),(6,'Vitor Gabriel NPD','gransotto2002@icloud.com','senhaasdasdasd',4),(7,'Secretaria Fasipe','email@email','senhadafasipe',1),(8,'Administrador de usu├írio','vitor_gransotto@hotmail.com','senha123456789',4);
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cursos` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `curso_value` int NOT NULL,
  `curso_status` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Administracao',4,1),(2,'Analise e Desenvolvimento de Sistemas',4,1),(3,'Arquitetura e Urbanismo',4,1),(4,'Biomedicina',4,1),(5,'Ciencias Contabeis',4,1),(6,'Direito',4,1),(7,'Educacao Fisica',4,1),(8,'Enfermagem',4,1),(9,'Engenharia Civil',4,1),(10,'Engenharia de Producao',4,1),(11,'Estetica e Cosmetica',4,1),(12,'Farmacia',4,1),(13,'Fisioterapia',4,1),(14,'Gastronomia',4,1),(15,'Jornalismo',4,1),(16,'Nutricao',4,1),(17,'Odontologia',4,1),(18,'Pedagogia',4,1),(19,'Psicologia',4,1),(20,'Turismo',4,1),(21,'Administracao',3,1),(22,'Analise e Desenvolvimento de Sistemas',3,1),(23,'Arquitetura e Urbanismo',3,1),(24,'Biomedicina',3,1),(25,'Ciencias Contabeis',3,1),(26,'Direito',3,1),(27,'Educacao Fisica',3,1),(28,'Enfermagem',3,1),(29,'Engenharia Civil',3,1),(30,'Engenharia de Producao',3,1),(31,'Estetica e Cosmetica',3,1),(32,'Farmacia',3,1),(33,'Fisioterapia',3,1),(34,'Jornalismo',3,1),(35,'Nutricao',3,1),(36,'Odontologia',3,1),(37,'Psicologia',3,1),(38,'Turismo',3,1),(39,'Administracao',1,1),(40,'Agronomia',1,1),(41,'Analise e Desenvolvimento de Sistemas',1,1),(42,'Arquitetura e Urbanismo',1,1),(43,'Biomedicina',1,1),(44,'Ciencias Contabeis',1,1),(45,'Direito',1,1),(46,'Educacao Fisica',1,1),(47,'Enfermagem',1,1),(48,'Engenharia Civil',1,1),(49,'Engenharia de Producao',1,1),(50,'Estetica e Cosmetica',1,1),(51,'Farmacia',1,1),(52,'Fisioterapia',1,1),(53,'Gastronomia',1,1),(54,'Jornalismo',1,1),(55,'Nutricao',1,1),(56,'Odontologia',1,1),(57,'Pedagogia',1,1),(58,'Psicologia',1,1),(59,'Turismo',1,1),(60,'Arquitetura de Interiores',2,1),(61,'Auditoria e Pericia Contabil',2,1),(62,'Biomedicina Estetica',2,1),(63,'Citologia',2,1),(64,'Comunicacao e Marketing',2,1),(65,'Controladoria e Finanças',2,1),(66,'Diagnostico por Imagem',2,1),(67,'Direito Civil',2,1),(68,'Direito Imobiliario, Notarial e Registral',2,1),(69,'Direito Penal',2,1),(70,'Docencia para Ensino Superior',2,1),(71,'Enfermagem do Trabalho',2,1),(72,'Engenharia de Segurança do Trabalho',2,1),(73,'Estetica',2,1),(74,'Fertilidade, manejo do solo e nutricao de plantas',2,1),(75,'Fisioterapia Dermatofuncional',2,1),(76,'Gastronomia Moderna e Autoral',2,1),(77,'Geoprocessamento e Georreferenciamento',2,1),(78,'Gerenciamento de Residuos Solidos',2,1),(79,'Gestão de Pessoas',2,1),(80,'Gestão do Agronegocio',2,1),(81,'Gestão e Legislacaoo do Ensino Superior',2,1),(82,'Gestão Estrategica de Negocios',2,1),(83,'Gestãoo Financeira',2,1),(84,'Gestão Neuro Estrategica e Neuro Liderança',2,1),(85,'Gestão, Auditoria e Pericia Ambiental',2,1),(86,'Governança e Gestão de Tecnologia da Informacao',2,1),(87,'Hematologia Clinica',2,1),(88,'Instrumentacao Cirurgica',2,1),(89,'Neurociencia e Neuropsicologia',2,1),(90,'Parasitologia, Imunologia e Microbiologia',2,1),(91,'Pericia Criminal e Judicial',2,1),(92,'Psicologia de Trânsito',2,1),(93,'Psicopedagogia Clinica e Institucional',2,1),(94,'Saude Coletiva com enfase em Saude da Familia',2,1),(95,'Segurança Alimentar',2,1),(96,'Socorrista Resgatista',2,1),(97,'Treinamento Desportivo e Fisiologia do Exercicio',2,1),(98,'Urgencia e Emergencia e Trauma em Saùde ',2,1),(99,'UTI: Adulto, Pediatrico e Neonatal',2,1);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitacao`
--

DROP TABLE IF EXISTS `solicitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(65) NOT NULL,
  `tipo` int NOT NULL,
  `curso` varchar(65) DEFAULT NULL,
  `ra` int NOT NULL,
  `rg` int NOT NULL,
  `cpf` bigint NOT NULL,
  `email` varchar(65) NOT NULL,
  `celular` bigint NOT NULL,
  `nascimento` date NOT NULL,
  `value_solicitacao` int NOT NULL,
  `datas` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `foto` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitacao`
--

LOCK TABLES `solicitacao` WRITE;
/*!40000 ALTER TABLE `solicitacao` DISABLE KEYS */;
INSERT INTO `solicitacao` VALUES (3,'Milhosoft',4,'Ci├¬ncias Cont├ibeis',46554,321465978,6773993164,'gransotto2002@icloud.com',321465978,'2002-02-10',2,'2022-05-25 13:33:55','c9b9a666-8e7e-43c0-b741-30e246b0bd0c.png'),(4,'Vitor Gabriel Nascimento Gransotto',3,'Farm├ícia',46554,132465978,132465978,'gransotto2002@icloud.com',66999721564,'2002-02-10',4,'2022-05-24 18:29:15','7de1e81b-f72f-4cc5-99c7-b9474cd39af8.jpeg'),(5,'Al Formaturas',2,'Controladoria e Finan├ºas',123465978,132465978,32146579,'Al.algumacoisa@gmail.com',3214657897,'2002-02-10',2,'2022-05-24 20:03:33','ca25bd96-a583-4ded-958e-83d56d87d149.png'),(6,'Vitor Gabriel Nascimento Gransotto',1,'Analise e Desenvolvimento de Sistemas',46554,254785451,6773993164,'gransotto2002@icloud.com',66999721564,'2002-02-10',1,'2022-05-24 20:21:21','b3cf68e9-8cb8-4ad8-9ed5-26aac81bbabe.jpeg'),(7,'Vitor Gabriel Nascimento Gransotto',3,'Farm├ícia',46554,321465978,21465978,'gransotto2002@icloud.com',66998546813,'2002-02-10',2,'2022-05-24 20:55:27','71ee932b-ab27-4aa0-ae3b-70b3f2bb7259.jpeg'),(8,'Vitor Gabriel Nascimento Gransotto',2,'Comunica├º├uo e Marketing',46554,213465978,213465978,'gransotto2002@icloud.com',321465978,'2002-02-10',1,'2022-05-24 21:28:10','003029c4-9a38-4143-b79b-c58853f2ede0.jpeg'),(9,'Vitor Gabriel Nascimento Gransotto',4,'Analise e Desenvolvimento de Sistemas',46554,31246597,31246597,'gransotto2002@icloud.com',66999721564,'2002-02-10',2,'2022-05-25 13:19:34','2dced4cf-9d75-4a17-925d-219452ce8869.jpeg');
/*!40000 ALTER TABLE `solicitacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-22 17:01:14
