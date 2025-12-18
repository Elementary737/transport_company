-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: transport_company
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `client_id` int NOT NULL AUTO_INCREMENT,
  `client_type` enum('company','person') NOT NULL,
  `full_name_or_company` varchar(100) NOT NULL,
  `contact_phone` varchar(20) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (1,'company','TransLine Logistics','+380671234567','info@translog.com'),(2,'company','CargoPlus Express','+380991112233','contact@translog.com'),(3,'company','SpeedyTrans UA','+380661234879','office@translog.com'),(4,'company','Lviv Transport Group','+380731234555','lviv@translog.com'),(5,'company','Dnipro Freight','+380501239999','dnipro@translog.com'),(6,'company','BlackSea Cargo','+380671111222','blacksea@translog.com'),(7,'company','Kiev Rapid Delivery','+380501234556','kyiv@translog.com'),(8,'company','East-West Transport','+380681234987','eastwest@translog.com'),(9,'company','RoadKing Logistics','+380931231111','roadking@translog.com'),(10,'company','TruckStar Ukraine','+380671278945','truckstar@translog.com'),(11,'company','TurboCargo','+380991115577','turbo@translog.com'),(12,'company','MegaTrans Solutions','+380501111999','megatrans@translog.com'),(13,'company','GreenRoute','+380681111888','greenroute@translog.com'),(14,'company','SkyRoad Express','+380671004422','skyroad@translog.com'),(15,'company','NovaCargo','+380501002244','nova@translog.com'),(16,'company','GalaxyTrans','+380931239876','galaxy@translog.com'),(17,'company','WestCargo','+380661004411','west@translog.com'),(18,'company','EuroTrack','+380731004455','euro@translog.com'),(19,'company','Urban Logistics','+380501008899','urban@translog.com'),(20,'company','RivnaTransport','+380671001122','rivna@translog.com'),(21,'company','ZakarpatTrans','+380991004477','zakarpat@translog.com'),(22,'company','ExpressWay','+380931006699','express@translog.com'),(23,'company','GoCargo','+380681007744','gocargo@translog.com'),(24,'company','UkrFreight','+380731008855','ukrfreight@translog.com'),(25,'company','TitanTrans','+380501009966','titan@translog.com'),(26,'company','SmartRoute','+380661001177','smartroute@translog.com'),(27,'company','EcoDrive Logistics','+380671002288','ecodrive@translog.com'),(28,'company','HappyTruck','+380991003399','happytruck@translog.com'),(29,'company','Dynamo Delivery','+380931004400','dynamo@translog.com'),(30,'company','SpeedFox Cargo','+380681005511','speedfox@translog.com'),(31,'company','FastBear Transport','+380731006622','fastbear@translog.com'),(32,'company','GoldenRoad','+380501007733','goldenroad@translog.com'),(33,'company','CleverTrans','+380661008844','clever@translog.com'),(34,'company','GlobalTrack','+380671009955','global@translog.com'),(35,'company','RapidLog','+380991000011','rapid@translog.com'),(36,'company','EcoTransport','+380931000022','eco@translog.com'),(37,'company','NovaWay','+380681000033','novaway@translog.com'),(38,'company','LvivCargo','+380731000044','lvivcargo@translog.com'),(39,'company','StarTrans','+380501000055','star@translog.com'),(40,'company','BisonTrans','+380661000066','bison@translog.com'),(41,'company','UkrTransPro','+380671000077','ukrpro@translog.com'),(42,'company','SkyExpress','+380991000088','skyexpress@translog.com'),(43,'company','AutoWay Logistics','+380931000099','autoway@translog.com'),(44,'company','NextRoute','+380681000101','next@translog.com'),(45,'company','SuperCargo','+380731000202','super@translog.com'),(46,'company','CargoUA','+380501000303','cargoua@translog.com'),(47,'company','RoadMax','+380661000404','roadmax@translog.com'),(48,'person','Олександр Мельник','+380671234568','oleksandr.melnyk@gmail.com'),(49,'person','Ірина Коваль','+380991234569','iryna.koval@gmail.com'),(50,'person','Богдан Петренко','+380661234570','bohdan.petrenko@gmail.com'),(51,'person','Марія Шевченко','+380731234571','mariya.shevchenko@gmail.com'),(52,'person','Дмитро Бондаренко','+380501234572','dmytro.bondarenko@gmail.com'),(53,'person','Анна Ткаченко','+380671234573','anna.tkachenko@gmail.com'),(54,'person','Віктор Іванов','+380991234574','viktor.ivanov@gmail.com'),(55,'person','Олена Кравченко','+380661234575','olena.kravchenko@gmail.com'),(56,'person','Наталія Поліщук','+380731234576','nataliya.polishchuk@gmail.com'),(57,'person','Андрій Савченко','+380501234577','andriy.savchenko@gmail.com'),(58,'person','Юлія Мороз','+380671234578','yulia.moroz@gmail.com'),(59,'person','Тарас Власюк','+380991234579','taras.vlasyuk@gmail.com'),(60,'person','Оксана Романюк','+380661234580','oksana.romanyuk@gmail.com'),(61,'person','Ігор Тимошенко','+380731234581','ihor.tymoshenko@gmail.com'),(62,'person','Катерина Григоренко','+380501234582','kateryna.gryhorenko@gmail.com'),(63,'person','Михайло Коваленко','+380671234583','mykhailo.kovalenko@gmail.com'),(64,'person','Леся Білик','+380991234584','lesya.bilyk@gmail.com'),(65,'person','Олексій Кушнір','+380661234585','oleksiy.kushnir@gmail.com'),(66,'person','Світлана Демчук','+380731234586','svitlana.demchuk@gmail.com'),(67,'person','Роман Клименко','+380501234587','roman.klymenko@gmail.com'),(68,'person','Аліна Федорчук','+380671234588','alina.fedorchuk@gmail.com'),(69,'person','Володимир Чорний','+380991234589','volodymyr.chornyi@gmail.com'),(70,'person','Ольга Пархоменко','+380661234590','olha.parkhomenko@gmail.com'),(71,'person','Євген Лисенко','+380731234591','yevhen.lysenko@gmail.com'),(72,'person','Тетяна Орлова','+380501234592','tetyana.orlova@gmail.com'),(73,'person','Сергій Дяченко','+380671234593','serhii.dyachenko@gmail.com'),(74,'person','Ніна Павленко','+380991234594','nina.pavlenko@gmail.com'),(75,'person','Олег Козак','+380661234595','oleh.kozak@gmail.com'),(76,'person','Інна Соловей','+380731234596','inna.solovei@gmail.com'),(77,'person','Борис Шевчук','+380501234597','boris.shevchuk@gmail.com'),(78,'person','Марина Черненко','+380671234598','maryna.chernenko@gmail.com'),(79,'person','Юрій Гуменюк','+380991234599','yuriy.humeniuk@gmail.com'),(80,'person','Наталя Кушнір','+380661234600','nataliya.kushnir@gmail.com'),(81,'person','Іван Петрик','+380731234601','ivan.petryk@gmail.com'),(82,'person','Ганна Волошина','+380501234602','hanna.voloshyna@gmail.com'),(83,'person','Віталій Олійник','+380671234603','vitaliy.oliynyk@gmail.com'),(84,'person','Оксана Костюк','+380991234604','oksana.kostyuk@gmail.com'),(85,'person','Павло Таран','+380661234605','pavlo.taran@gmail.com'),(86,'person','Ігор Кравець','+380731234606','ihor.kravets@gmail.com'),(87,'person','Надія Сидоренко','+380501234607','nadiya.sydorenko@gmail.com'),(88,'person','Андрій Гринюк','+380671234608','andriy.hrynyuk@gmail.com'),(89,'person','Марія Дуб','+380991234609','mariya.dub@gmail.com'),(90,'person','Сергій Нікітюк','+380661234610','serhii.nikityuk@gmail.com'),(91,'person','Олександра Бублик','+380731234611','oleksandra.bublyk@gmail.com'),(92,'person','Ірина Руденко','+380501234612','iryna.rudenko@gmail.com'),(93,'person','Валерій Панченко','+380671234613','valeriy.panchenko@gmail.com'),(94,'person','Юлія Левченко','+380991234614','yulia.levchenko@gmail.com'),(95,'person','Руслан Федоренко','+380661234615','ruslan.fedorenko@gmail.com'),(96,'person','Ольга Войтенко','+380731234616','olha.voitenko@gmail.com'),(97,'person','Петро Кулик','+380501234617','petro.kulyk@gmail.com'),(98,'person','Світлана Коломієць','+380671234618','svitlana.kolomiyets@gmail.com');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `driver`
--

DROP TABLE IF EXISTS `driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `driver` (
  `driver_id` int NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `license_number` varchar(50) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `experience_years` int DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  UNIQUE KEY `license_number` (`license_number`),
  CONSTRAINT `driver_chk_1` CHECK ((`experience_years` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `driver`
--

LOCK TABLES `driver` WRITE;
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` VALUES (1,'Іван Петренко','LIC1001UA','+380671234001',5),(2,'Олег Коваль','LIC1002UA','+380671234002',8),(3,'Сергій Мельник','LIC1003UA','+380671234003',2),(4,'Василь Гуменюк','LIC1004UA','+380671234004',10),(5,'Петро Шевченко','LIC1005UA','+380671234005',6),(6,'Олександр Лисенко','LIC1006UA','+380671234006',3),(7,'Максим Руденко','LIC1007UA','+380671234007',7),(8,'Андрій Клименко','LIC1008UA','+380671234008',4),(9,'Богдан Чорний','LIC1009UA','+380671234009',11),(10,'Володимир Савчук','LIC1010UA','+380671234010',9),(11,'Ігор Поліщук','LIC1011UA','+380671234011',1),(12,'Юрій Кравченко','LIC1012UA','+380671234012',13),(13,'Дмитро Ткаченко','LIC1013UA','+380671234013',15),(14,'Руслан Кучер','LIC1014UA','+380671234014',2),(15,'Тарас Бондар','LIC1015UA','+380671234015',4),(16,'Артем Соловей','LIC1016UA','+380671234016',6),(17,'Євген Шостак','LIC1017UA','+380671234017',9),(18,'Роман Павленко','LIC1018UA','+380671234018',12),(19,'Степан Мороз','LIC1019UA','+380671234019',7),(20,'Олексій Литвин','LIC1020UA','+380671234020',10),(21,'Ілля Сидоренко','LIC1021UA','+380671234021',3),(22,'Віктор Козак','LIC1022UA','+380671234022',5),(23,'Микола Дорошенко','LIC1023UA','+380671234023',14),(24,'Денис Вовк','LIC1024UA','+380671234024',8),(25,'Антон Білий','LIC1025UA','+380671234025',6),(26,'Ростислав Верес','LIC1026UA','+380671234026',9),(27,'Павло Яценко','LIC1027UA','+380671234027',2),(28,'Григорій Паламарчук','LIC1028UA','+380671234028',11),(29,'Олександр Кицюк','LIC1029UA','+380671234029',1),(30,'Юліан Ковтун','LIC1030UA','+380671234030',13),(31,'Вадим Семенюк','LIC1031UA','+380671234031',7),(32,'Сава Кравчук','LIC1032UA','+380671234032',9),(33,'Мирослав Гайдук','LIC1033UA','+380671234033',4),(34,'Тимофій Ярема','LIC1034UA','+380671234034',6),(35,'Данило Козловський','LIC1035UA','+380671234035',10);
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `route_description` varchar(200) NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_orders_client` (`client_id`),
  CONSTRAINT `fk_orders_client` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=169 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,5,'Київ → Львів','2025-10-01 08:00:00','2025-10-01 15:00:00'),(2,7,'Львів → Івано-Франківськ','2025-10-01 09:00:00','2025-10-01 12:30:00'),(3,12,'Харків → Дніпро','2025-10-01 10:00:00','2025-10-01 13:30:00'),(4,22,'Одеса → Миколаїв','2025-10-01 11:00:00','2025-10-01 13:00:00'),(5,25,'Полтава → Київ','2025-10-01 12:00:00','2025-10-01 16:00:00'),(6,28,'Луцьк → Рівне','2025-10-02 08:00:00','2025-10-02 09:30:00'),(7,31,'Київ → Чернігів','2025-10-02 09:00:00','2025-10-02 11:00:00'),(8,36,'Дніпро → Запоріжжя','2025-10-02 10:00:00','2025-10-02 11:45:00'),(9,39,'Тернопіль → Львів','2025-10-02 11:00:00','2025-10-02 13:00:00'),(10,42,'Чернівці → Івано-Франківськ','2025-10-02 12:00:00','2025-10-02 14:00:00'),(11,44,'Київ → Одеса','2025-10-03 06:00:00','2025-10-03 14:00:00'),(12,47,'Одеса → Херсон','2025-10-03 15:30:00','2025-10-03 18:00:00'),(13,48,'Херсон → Миколаїв','2025-10-03 18:30:00','2025-10-03 20:00:00'),(14,52,'Кропивницький → Полтава','2025-10-04 07:30:00','2025-10-04 10:30:00'),(15,53,'Київ → Черкаси','2025-10-04 09:00:00','2025-10-04 11:30:00'),(16,2,'Черкаси → Полтава','2025-10-04 12:30:00','2025-10-04 15:00:00'),(17,4,'Львів → Луцьк','2025-10-05 08:00:00','2025-10-05 10:00:00'),(18,6,'Івано-Франківськ → Тернопіль','2025-10-05 11:00:00','2025-10-05 13:30:00'),(19,8,'Київ → Дніпро','2025-10-06 06:30:00','2025-10-06 14:00:00'),(20,10,'Дніпро → Кривий Ріг','2025-10-06 15:00:00','2025-10-06 17:30:00'),(21,11,'Суми → Полтава','2025-10-07 09:00:00','2025-10-07 12:00:00'),(22,13,'Полтава → Харків','2025-10-07 13:30:00','2025-10-07 16:00:00'),(23,15,'Житомир → Київ','2025-10-08 08:00:00','2025-10-08 10:00:00'),(24,16,'Київ → Чернігів','2025-10-08 11:00:00','2025-10-08 13:00:00'),(25,18,'Львів → Рівне','2025-10-09 07:00:00','2025-10-09 09:00:00'),(26,20,'Рівне → Луцьк','2025-10-09 10:00:00','2025-10-09 11:15:00'),(27,21,'Київ → Вінниця','2025-10-10 08:00:00','2025-10-10 11:00:00'),(28,23,'Вінниця → Тернопіль','2025-10-10 13:00:00','2025-10-10 15:30:00'),(29,24,'Харків → Полтава','2025-10-11 09:00:00','2025-10-11 11:30:00'),(30,26,'Полтава → Кременчук','2025-10-11 13:00:00','2025-10-11 14:30:00'),(31,27,'Київ → Львів','2025-10-12 06:00:00','2025-10-12 14:00:00'),(32,29,'Одеса → Чернівці','2025-10-12 09:00:00','2025-10-12 17:00:00'),(33,30,'Львів → Мукачево','2025-10-13 07:30:00','2025-10-13 11:00:00'),(34,32,'Мукачево → Ужгород','2025-10-13 12:00:00','2025-10-13 13:30:00'),(35,33,'Дніпро → Запоріжжя','2025-10-14 09:00:00','2025-10-14 10:45:00'),(36,34,'Запоріжжя → Маріуполь','2025-10-14 11:30:00','2025-10-14 14:00:00'),(37,35,'Полтава → Кременчук','2025-10-15 08:30:00','2025-10-15 10:00:00'),(38,37,'Київ → Чернігів','2025-10-15 11:00:00','2025-10-15 13:00:00'),(39,38,'Одеса → Херсон','2025-10-16 09:30:00','2025-10-16 12:00:00'),(40,40,'Херсон → Миколаїв','2025-10-16 13:00:00','2025-10-16 15:00:00'),(41,41,'Львів → Тернопіль','2025-10-17 08:00:00','2025-10-17 09:45:00'),(42,43,'Тернопіль → Івано-Франківськ','2025-10-17 10:30:00','2025-10-17 12:00:00'),(43,45,'Київ → Дніпро','2025-10-18 07:00:00','2025-10-18 14:00:00'),(44,46,'Дніпро → Кривий Ріг','2025-10-18 15:00:00','2025-10-18 17:30:00'),(45,49,'Житомир → Київ','2025-10-19 08:00:00','2025-10-19 10:00:00'),(46,50,'Київ → Черкаси','2025-10-19 11:00:00','2025-10-19 13:30:00'),(47,51,'Полтава → Харків','2025-10-20 09:00:00','2025-10-20 11:30:00'),(48,54,'Кропивницький → Полтава','2025-10-20 12:30:00','2025-10-20 15:00:00'),(49,55,'Луцьк → Рівне','2025-10-21 08:00:00','2025-10-21 09:30:00'),(50,56,'Рівне → Львів','2025-10-21 10:30:00','2025-10-21 12:00:00'),(51,57,'Київ → Одеса','2025-10-22 07:00:00','2025-10-22 14:00:00'),(52,58,'Одеса → Миколаїв','2025-10-22 15:00:00','2025-10-22 17:00:00'),(53,59,'Херсон → Чернівці','2025-10-23 08:00:00','2025-10-23 16:00:00'),(54,60,'Чернівці → Львів','2025-10-23 17:00:00','2025-10-23 19:30:00'),(163,1,'Test route','2025-12-15 02:32:49','2025-12-15 02:32:49'),(164,1,'Test route','2025-12-15 02:32:49','2025-12-15 02:32:49'),(165,1,'Test route','2025-12-15 02:32:49','2025-12-15 02:32:49');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tripdetails`
--

DROP TABLE IF EXISTS `tripdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tripdetails` (
  `trip_id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `driver_id` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `trip_status` enum('planned','in_progress','completed','cancelled') DEFAULT 'planned',
  `expenses` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`trip_id`),
  KEY `fk_tripdetails_orders` (`order_id`),
  KEY `fk_tripdetails_driver` (`driver_id`),
  KEY `fk_tripdetails_vehicle` (`vehicle_id`),
  CONSTRAINT `fk_tripdetails_driver` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_tripdetails_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_tripdetails_vehicle` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `tripdetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  CONSTRAINT `tripdetails_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `driver` (`driver_id`),
  CONSTRAINT `tripdetails_ibfk_3` FOREIGN KEY (`vehicle_id`) REFERENCES `vehicle` (`vehicle_id`)
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripdetails`
--

LOCK TABLES `tripdetails` WRITE;
/*!40000 ALTER TABLE `tripdetails` DISABLE KEYS */;
INSERT INTO `tripdetails` VALUES (61,1,1,2,'completed',1250.50),(62,2,2,5,'completed',980.00),(63,3,3,8,'completed',870.75),(64,4,4,7,'completed',540.20),(65,5,5,10,'completed',1500.00),(66,6,6,12,'completed',460.00),(67,7,7,3,'completed',610.35),(68,8,8,1,'completed',740.00),(69,9,9,14,'completed',520.40),(70,10,10,6,'completed',480.90),(71,11,11,13,'completed',1200.00),(72,12,12,15,'completed',820.00),(73,13,13,9,'completed',650.50),(74,14,14,18,'completed',730.20),(75,15,15,11,'completed',400.00),(76,16,16,20,'in_progress',910.30),(77,17,17,19,'in_progress',850.70),(78,18,18,4,'in_progress',780.90),(79,19,19,5,'in_progress',640.10),(80,20,20,8,'in_progress',730.00),(81,21,21,2,'planned',1668.33),(82,22,22,10,'planned',1781.56),(83,23,23,7,'planned',1902.82),(84,24,24,6,'planned',669.43),(85,25,25,1,'planned',1638.69),(86,26,26,9,'planned',1185.14),(87,27,27,12,'planned',509.63),(88,28,28,4,'cancelled',0.00),(89,29,29,3,'cancelled',0.00),(90,30,30,18,'cancelled',0.00),(91,31,1,2,'completed',1150.00),(92,32,2,5,'completed',990.00),(93,33,3,8,'completed',870.00),(94,34,4,7,'completed',510.50),(95,35,5,10,'completed',1490.00),(96,36,6,12,'completed',470.00),(97,37,7,3,'completed',600.00),(98,38,8,1,'completed',730.00),(99,39,9,14,'completed',530.00),(100,40,10,6,'completed',470.00),(101,41,11,13,'completed',1190.00),(102,42,12,15,'completed',810.00),(103,43,13,9,'completed',660.00),(104,44,14,18,'completed',740.00),(105,45,15,11,'completed',410.00),(106,46,16,20,'in_progress',920.00),(107,47,17,19,'in_progress',860.00),(108,48,18,4,'in_progress',790.00),(109,49,19,5,'in_progress',650.00),(110,50,20,8,'in_progress',740.00),(111,51,21,2,'planned',1492.76),(112,52,22,10,'planned',934.87),(113,53,23,7,'planned',1196.10),(114,54,24,6,'planned',1175.88);
/*!40000 ALTER TABLE `tripdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triplog`
--

DROP TABLE IF EXISTS `triplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triplog` (
  `log_id` int NOT NULL AUTO_INCREMENT,
  `trip_id` int NOT NULL,
  `actual_departure` datetime DEFAULT NULL,
  `actual_arrival` datetime DEFAULT NULL,
  `driver_comment` text,
  PRIMARY KEY (`log_id`),
  KEY `fk_triplog_tripdetails` (`trip_id`),
  CONSTRAINT `fk_triplog_tripdetails` FOREIGN KEY (`trip_id`) REFERENCES `tripdetails` (`trip_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `triplog_ibfk_1` FOREIGN KEY (`trip_id`) REFERENCES `tripdetails` (`trip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triplog`
--

LOCK TABLES `triplog` WRITE;
/*!40000 ALTER TABLE `triplog` DISABLE KEYS */;
INSERT INTO `triplog` VALUES (121,61,'2025-10-01 17:00:00','2025-10-01 22:00:00','Доїхав без пригод.'),(124,62,'2025-10-02 18:00:00','2025-10-02 20:00:00','Невелика зупинка на заправці.'),(127,63,'2025-10-03 21:00:00',NULL,'В дорозі, очікуємо прибуття.'),(130,64,NULL,NULL,'Заплановано.'),(133,65,NULL,NULL,'Відмінено.'),(136,66,'2025-10-06 15:00:00','2025-10-06 20:00:00','Доїхав без пригод.'),(139,67,'2025-10-07 16:00:00','2025-10-07 18:00:00','Невелика зупинка на заправці.'),(142,68,'2025-10-09 02:00:00',NULL,'В дорозі, очікуємо прибуття.'),(145,69,NULL,NULL,'Заплановано.'),(148,70,NULL,NULL,'Відмінено.'),(151,71,'2025-10-11 13:00:00','2025-10-11 18:00:00','Доїхав без пригод.'),(154,72,'2025-10-12 14:00:00','2025-10-12 16:00:00','Невелика зупинка на заправці.'),(157,73,'2025-10-13 07:00:00',NULL,'В дорозі, очікуємо прибуття.'),(160,74,NULL,NULL,'Заплановано.'),(163,75,NULL,NULL,'Відмінено.'),(166,76,'2025-10-16 18:00:00','2025-10-16 23:00:00','Доїхав без пригод.'),(169,77,'2025-10-17 12:00:00','2025-10-17 14:00:00','Невелика зупинка на заправці.'),(172,78,'2025-10-18 12:00:00',NULL,'В дорозі, очікуємо прибуття.'),(175,79,NULL,NULL,'Заплановано.'),(178,80,NULL,NULL,'Відмінено.'),(181,81,'2025-10-21 16:00:00','2025-10-21 21:00:00','Доїхав без пригод.'),(184,82,'2025-10-22 17:00:00','2025-10-22 19:00:00','Невелика зупинка на заправці.'),(187,83,'2025-10-23 17:00:00',NULL,'В дорозі, очікуємо прибуття.'),(190,84,NULL,NULL,'Заплановано.'),(193,85,NULL,NULL,'Відмінено.'),(196,86,'2025-10-26 14:00:00','2025-10-26 19:00:00','Доїхав без пригод.'),(199,87,'2025-10-27 15:00:00','2025-10-27 17:00:00','Невелика зупинка на заправці.'),(202,88,'2025-10-28 22:00:00',NULL,'В дорозі, очікуємо прибуття.'),(205,89,NULL,NULL,'Заплановано.'),(208,90,NULL,NULL,'Відмінено.'),(211,91,'2025-10-31 12:00:00','2025-10-31 17:00:00','Доїхав без пригод.'),(214,92,'2025-11-01 13:00:00','2025-11-01 15:00:00','Невелика зупинка на заправці.'),(217,93,'2025-11-03 03:00:00',NULL,'В дорозі, очікуємо прибуття.'),(220,94,NULL,NULL,'Заплановано.'),(223,95,NULL,NULL,'Відмінено.'),(226,96,'2025-11-05 17:00:00','2025-11-05 22:00:00','Доїхав без пригод.'),(229,97,'2025-11-06 18:00:00','2025-11-06 20:00:00','Невелика зупинка на заправці.'),(232,98,'2025-11-07 08:00:00',NULL,'В дорозі, очікуємо прибуття.'),(235,99,NULL,NULL,'Заплановано.'),(238,100,NULL,NULL,'Відмінено.'),(241,101,'2025-11-10 15:00:00','2025-11-10 20:00:00','Доїхав без пригод.'),(244,102,'2025-11-11 16:00:00','2025-11-11 18:00:00','Невелика зупинка на заправці.'),(247,103,'2025-11-12 13:00:00',NULL,'В дорозі, очікуємо прибуття.'),(250,104,NULL,NULL,'Заплановано.'),(253,105,NULL,NULL,'Відмінено.'),(256,106,'2025-11-15 13:00:00','2025-11-15 18:00:00','Доїхав без пригод.'),(259,107,'2025-11-16 14:00:00','2025-11-16 16:00:00','Невелика зупинка на заправці.'),(262,108,'2025-11-17 18:00:00',NULL,'В дорозі, очікуємо прибуття.'),(265,109,NULL,NULL,'Заплановано.'),(268,110,NULL,NULL,'Відмінено.'),(271,111,'2025-11-20 18:00:00','2025-11-20 23:00:00','Доїхав без пригод.'),(274,112,'2025-11-21 12:00:00','2025-11-21 14:00:00','Невелика зупинка на заправці.'),(277,113,'2025-11-22 23:00:00',NULL,'В дорозі, очікуємо прибуття.'),(280,114,NULL,NULL,'Заплановано.');
/*!40000 ALTER TABLE `triplog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle`
--

DROP TABLE IF EXISTS `vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle` (
  `vehicle_id` int NOT NULL AUTO_INCREMENT,
  `registration_number` varchar(20) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `fuel_type` enum('petrol','diesel','electric','hybrid') DEFAULT 'diesel',
  PRIMARY KEY (`vehicle_id`),
  UNIQUE KEY `registration_number` (`registration_number`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle`
--

LOCK TABLES `vehicle` WRITE;
/*!40000 ALTER TABLE `vehicle` DISABLE KEYS */;
INSERT INTO `vehicle` VALUES (1,'AA1234BB','Вантажівка','Volvo FH16',20000,'diesel'),(2,'BC5678CA','Фургон','Mercedes Sprinter',3500,'diesel'),(3,'KA4321HH','Автобус','MAN Lion’s Coach',5000,'diesel'),(4,'CE9988EK','Мікроавтобус','Ford Transit',2500,'diesel'),(5,'AX2020PP','Електровантажівка','Tesla Semi',18000,'electric'),(6,'BK8080TT','Легковий','Skoda Superb',500,'petrol'),(7,'CB7070OO','Фургон','Renault Master',3200,'diesel'),(8,'AE4040MM','Вантажівка','DAF XF',21000,'diesel'),(9,'AI5050EE','Автобус','Neoplan Cityliner',4800,'diesel'),(10,'BH9999KK','Мікроавтобус','Volkswagen Crafter',2700,'diesel'),(11,'AB1111CD','Легковий','Toyota Corolla',450,'petrol'),(12,'BB2222EF','Легковий','Honda Accord',470,'petrol'),(13,'CB3333GH','Вантажівка','Scania R500',19500,'diesel'),(14,'DB4444IJ','Фургон','Citroen Jumper',3000,'diesel'),(15,'EB5555KL','Мікроавтобус','Opel Vivaro',2400,'diesel'),(16,'FB6666MN','Вантажівка','IVECO Stralis',20500,'diesel'),(17,'GB7777OP','Електровантажівка','Volta Zero',17000,'electric'),(18,'HB8888QR','Автобус','Ikarus Classic',5200,'diesel'),(19,'IB9999ST','Фургон','Peugeot Boxer',3100,'diesel'),(20,'JB0101UV','Легковий','Kia Ceed',460,'petrol'),(21,'KB0202WX','Легковий','Hyundai Elantra',470,'petrol'),(22,'LB0303YZ','Вантажівка','Renault T High',20000,'diesel'),(23,'MB0404AA','Гібридний легковий','Toyota Prius',430,'hybrid'),(24,'NB0505BB','Фургон','Fiat Ducato',3300,'diesel'),(25,'OB0606CC','Мікроавтобус','Mercedes Vito',2600,'diesel'),(26,'PB0707DD','Легковий','Mazda 6',480,'petrol'),(27,'QB0808EE','Вантажівка','MAN TGX',22000,'diesel'),(28,'RB0909FF','Фургон','Nissan NV400',3400,'diesel'),(29,'SB1010GG','Електрокар','Nissan Leaf',400,'electric'),(30,'TB1111HH','Вантажівка','KamAZ 6520',23000,'diesel');
/*!40000 ALTER TABLE `vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-18  8:35:16
