-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ah4c
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `animalbreeds`
--

DROP TABLE IF EXISTS `animalbreeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animalbreeds` (
  `animalbreed_id` int NOT NULL,
  `animal_typeid` int DEFAULT NULL,
  `animalbreed_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animalbreed_id`),
  KEY `typeid_idx` (`animal_typeid`),
  CONSTRAINT `typeid` FOREIGN KEY (`animal_typeid`) REFERENCES `animaltypes` (`animaltype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animalbreeds`
--

LOCK TABLES `animalbreeds` WRITE;
/*!40000 ALTER TABLE `animalbreeds` DISABLE KEYS */;
INSERT INTO `animalbreeds` VALUES (1,1,'Британская короткошерстная'),(2,1,'Сиамская'),(3,2,'Лабрадор ретривер'),(4,2,'Немецкая овчарка'),(5,2,'Бультерьер'),(6,1,'Персидская'),(7,2,'Далматин'),(8,1,'Мейн-кун'),(9,2,'Пудель'),(10,1,'Сфинкс'),(11,2,'Чихуахуа'),(12,1,'Бенгальская'),(13,1,'Британская короткошерстная'),(14,1,'Британская короткошерстная'),(15,1,'Британская короткошерстная'),(16,1,'Британская короткошерстная'),(17,1,'Британская короткошерстная'),(18,2,'Британская короткошерстная');
/*!40000 ALTER TABLE `animalbreeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animals`
--

DROP TABLE IF EXISTS `animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animals` (
  `animal_id` int NOT NULL,
  `animal_name` varchar(45) DEFAULT NULL,
  `animal_gen` char(1) DEFAULT NULL,
  `animal_breedid` int DEFAULT NULL,
  `animal_height` double DEFAULT NULL,
  `animal_weight` double DEFAULT NULL,
  `animal_old` int DEFAULT NULL,
  `animal_clientphone` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`animal_id`),
  KEY `breedid_idx` (`animal_breedid`),
  CONSTRAINT `breedid` FOREIGN KEY (`animal_breedid`) REFERENCES `animalbreeds` (`animalbreed_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animals`
--

LOCK TABLES `animals` WRITE;
/*!40000 ALTER TABLE `animals` DISABLE KEYS */;
INSERT INTO `animals` VALUES (1,'Барон','М',2,60,30,5,89991331264),(2,'Тайсон','М',3,50,25,3,89991331264),(3,'Луна','Ж',1,25,5,2,89991331264),(4,'Марго','Ж',4,55,20,4,89991331264),(5,'Феликс','М',1,30,8,1,89991331264),(6,'Симба','М',2,45,15,7,89991331264),(7,'Рокки','М',5,35,10,6,89991331264),(8,'Люси','Ж',6,44,7,4,89991331264),(9,'Багира','М',12,52,9,6,89991331264),(10,'Герда','Ж',10,42,7,8,89991331264),(11,'Буся','Ж',13,2,2,2,89991331264),(12,'буся','М',14,2,2,2,89991331264),(13,'Нюся','Ж',15,25,7,7,89603919109),(14,'Кеша','М',16,20,2,2,89991331261),(15,'Хуй','Ж',17,21,23,12,89991231264),(16,'Бозя','М',18,0,1,10,89991231264);
/*!40000 ALTER TABLE `animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `animaltypes`
--

DROP TABLE IF EXISTS `animaltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `animaltypes` (
  `animaltype_id` int NOT NULL,
  `animaltype_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`animaltype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animaltypes`
--

LOCK TABLES `animaltypes` WRITE;
/*!40000 ALTER TABLE `animaltypes` DISABLE KEYS */;
INSERT INTO `animaltypes` VALUES (1,'Котики'),(2,'Собачки');
/*!40000 ALTER TABLE `animaltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `client_id` int NOT NULL,
  `client_name` varchar(45) NOT NULL,
  `client_phone` decimal(11,0) NOT NULL,
  `client_email` varchar(45) DEFAULT NULL,
  `client_countoforders` int DEFAULT NULL,
  `client_password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Григорьев И.М.',89991231264,'grigorev1268@yandex.ru',3,'gfw43fsd'),(2,'Козлова Е.В.',89991331261,'kozlova997@mail.com',2,'346gfhgh'),(3,'Иванов А.Н.',89991331265,'ivanov574@mail.com',1,'asd324nbv'),(4,'Петров Б.А.',89991331261,'petrov842@gmail.com',1,'dfgr234'),(5,'Сергеева М.Д.',89991331263,'sergeeva404@yandex.ru',1,'gfh345'),(6,'Новиков В.Г.',89991331262,'novikov977@yandex.ru',1,';l423;l5'),(7,'Данилов Е.В.',89991331266,'danilov812@mail.com',1,'dfggdf23'),(8,'Жукова А.В.',79271189012,'zhukova455@yandex.ru',0,'65g5652'),(9,'Крылова И.В.',79271325843,'krylova309@mail.ru',0,'2h658u56h'),(10,'Матвеев А.Н.',79271320919,'matveev347@gmail.com',0,'h7563bg'),(11,'Чуновалов А. А.',89991331264,NULL,1,NULL),(12,'Иванов И. И.',89603919109,NULL,2,NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status`
--

DROP TABLE IF EXISTS `order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status` (
  `orderstatus_id` int NOT NULL,
  `orderstatus_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orderstatus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status`
--

LOCK TABLES `order_status` WRITE;
/*!40000 ALTER TABLE `order_status` DISABLE KEYS */;
INSERT INTO `order_status` VALUES (1,'Создана'),(2,'Оплачена'),(3,'Принята');
/*!40000 ALTER TABLE `order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_noteid` int NOT NULL,
  `order_id` int NOT NULL,
  `animal_id` int DEFAULT NULL,
  `room_id` int DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `order_statusid` int DEFAULT NULL,
  `client_phone` decimal(11,0) DEFAULT NULL,
  PRIMARY KEY (`order_noteid`),
  UNIQUE KEY `order_noteid_UNIQUE` (`order_noteid`),
  KEY `room_id_idx` (`room_id`),
  KEY `animal_id_idx` (`animal_id`),
  KEY `orderstatus_id_idx` (`order_statusid`),
  CONSTRAINT `animal_id` FOREIGN KEY (`animal_id`) REFERENCES `animals` (`animal_id`),
  CONSTRAINT `orderstatus_id` FOREIGN KEY (`order_statusid`) REFERENCES `order_status` (`orderstatus_id`),
  CONSTRAINT `room_id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,1,'2023-10-01','2023-10-12',3,89991231264),(2,2,4,2,'2023-10-20','2023-10-27',3,89991331261),(3,3,3,2,'2022-01-01','2022-01-12',2,89991331265),(4,4,1,1,'2023-10-13','2023-10-28',1,89991331261),(5,5,2,2,'2023-10-20','2023-10-27',2,89991331263),(6,6,5,2,'2023-10-05','2023-10-21',1,89991331262),(7,7,3,6,'2023-12-26','2023-12-30',1,89991331266),(8,8,13,2,'2024-05-23','2024-05-16',1,89603919109),(9,9,14,1,'2024-05-24','2024-05-10',1,89991331261),(10,10,15,2,'2024-06-01','2024-05-17',1,89991231264),(11,11,16,1,'2024-05-31','2024-05-25',1,89991231264);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `room_id` int NOT NULL,
  `room_number` int DEFAULT NULL,
  `room_typeid` int DEFAULT NULL,
  `room_image` text,
  `room_description` varchar(200) DEFAULT NULL,
  `room_statusid` int DEFAULT NULL,
  PRIMARY KEY (`room_id`),
  KEY `roomtypeid_idx` (`room_typeid`),
  KEY `roomstatusid_idx` (`room_statusid`),
  CONSTRAINT `roomstatusid` FOREIGN KEY (`room_statusid`) REFERENCES `roomstatuses` (`roomstatus_id`),
  CONSTRAINT `roomtypeid` FOREIGN KEY (`room_typeid`) REFERENCES `roomtypes` (`roomtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,1,3,'largeroom','Номер для трех питомцев среднего размера, или одного крупного',2),(2,2,1,'smallroom','Номер для одного питомца среднего размера',1),(3,3,2,'mediumroom','Номер для двух питомца среднего размера',1),(4,4,1,'smallroom','Номер для одного питомца среднего размера',1),(5,5,2,'mediumroom','Номер для двух питомца среднего размера',1),(6,6,3,'largeroom','Номер для трех питомцев среднего размера, или одного крупного',1),(7,7,2,'mediumroom','Номер для двух питомца среднего размера',1),(8,8,2,'mediumroom','Номер для двух питомца среднего размера',2),(9,9,3,'largeroom','Номер для трех питомцев среднего размера, или одного крупного',1),(10,10,1,'smallroom','Номер для одного питомца среднего размера',1);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomstatuses`
--

DROP TABLE IF EXISTS `roomstatuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomstatuses` (
  `roomstatus_id` int NOT NULL,
  `roomstatus_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roomstatus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomstatuses`
--

LOCK TABLES `roomstatuses` WRITE;
/*!40000 ALTER TABLE `roomstatuses` DISABLE KEYS */;
INSERT INTO `roomstatuses` VALUES (1,'Свободна'),(2,'Забронирована'),(3,'Занята');
/*!40000 ALTER TABLE `roomstatuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roomtypes`
--

DROP TABLE IF EXISTS `roomtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roomtypes` (
  `roomtype_id` int NOT NULL,
  `roomtype_name` varchar(45) DEFAULT NULL,
  `roomtype_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`roomtype_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roomtypes`
--

LOCK TABLES `roomtypes` WRITE;
/*!40000 ALTER TABLE `roomtypes` DISABLE KEYS */;
INSERT INTO `roomtypes` VALUES (1,'Номер для одного питомца','Номер для одного питомца среднего размера'),(2,'Номер для двух питомцев','Номер для двух питомца среднего размера'),(3,'Номер для трёх питомцев','Номер для трех питомцев среднего размера, или одного крупного'),(4,'Номер для птиц','Номер для любимого летающего друга'),(5,'Номер для грызунов','Номер для маленьких и милых домашних питомцев');
/*!40000 ALTER TABLE `roomtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecategories`
--

DROP TABLE IF EXISTS `servicecategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicecategories` (
  `servicecategory_id` int NOT NULL,
  `servicecategory_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`servicecategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecategories`
--

LOCK TABLES `servicecategories` WRITE;
/*!40000 ALTER TABLE `servicecategories` DISABLE KEYS */;
INSERT INTO `servicecategories` VALUES (1,'Проживание'),(2,'Вет услуги'),(3,'Фотоотчет');
/*!40000 ALTER TABLE `servicecategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `service_id` int NOT NULL,
  `service_categid` int DEFAULT NULL,
  `service_name` varchar(45) DEFAULT NULL,
  `service_description` varchar(200) DEFAULT NULL,
  `service_price` double DEFAULT NULL,
  `service_image` text,
  PRIMARY KEY (`service_id`),
  KEY `categid_idx` (`service_categid`),
  CONSTRAINT `categid` FOREIGN KEY (`service_categid`) REFERENCES `servicecategories` (`servicecategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,1,'Проживание','Проживание в номере гостиницы без оказания доп услуг',200,'bookingplus'),(2,1,'Проживание+','Проживание в номере гостиницы с выгуливанием питомца',350,'bookingplus'),(3,2,'Лечение и уход','За вашим питомцем будет наблюдать один из сотрудников, следить за его поведением, измерять температуру, давать необходимые лекарства',150,'medicine'),(4,3,'Фотосессия','Сделаем и отправим Вам фотографии и видео с вашим любимым питомцем',500,'photosession');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workerposts`
--

DROP TABLE IF EXISTS `workerposts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workerposts` (
  `workerpost_id` int NOT NULL,
  `workerpost_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`workerpost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workerposts`
--

LOCK TABLES `workerposts` WRITE;
/*!40000 ALTER TABLE `workerposts` DISABLE KEYS */;
INSERT INTO `workerposts` VALUES (1,'Работник'),(2,'Менеджер');
/*!40000 ALTER TABLE `workerposts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workers` (
  `worker_id` int NOT NULL,
  `worker_name` varchar(45) DEFAULT NULL,
  `worker_postid` int DEFAULT NULL,
  `worker_login` varchar(45) DEFAULT NULL,
  `worker_password` varchar(45) DEFAULT NULL,
  `worker_phone` decimal(11,0) DEFAULT NULL,
  `worker_email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`worker_id`),
  KEY `postid_idx` (`worker_postid`),
  CONSTRAINT `postid` FOREIGN KEY (`worker_postid`) REFERENCES `workerposts` (`workerpost_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
INSERT INTO `workers` VALUES (1,'Григорьева Т.П.',2,'grigoreva548','1a2b3c4d',79013467592,'grigoreva548@gmail.com');
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-29  5:03:04
