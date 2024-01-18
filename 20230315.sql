-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: cineseat
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movie` int DEFAULT NULL,
  `seat` varchar(45) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `added_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `booking_movie_idx` (`movie`),
  CONSTRAINT `booking_movie` FOREIGN KEY (`movie`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,2,'C3','2023-03-09','2023-03-09 12:45:57'),(2,2,'B5','2023-03-09','2023-03-09 12:45:57'),(3,2,'B3','2023-03-09','2023-03-09 12:45:57'),(4,2,'D5','2023-03-10','2023-03-10 09:20:23'),(5,2,'B4','2023-03-10','2023-03-10 09:20:23'),(6,4,'E1','2023-03-10','2023-03-10 21:44:02'),(7,4,'E3','2023-03-10','2023-03-10 21:44:02'),(8,4,'D5','2023-03-10','2023-03-10 21:44:02'),(9,1,'E3','2023-03-12','2023-03-12 18:08:26'),(10,1,'D5','2023-03-12','2023-03-12 18:08:26'),(11,1,'E7','2023-03-12','2023-03-12 18:13:18'),(12,1,'F6','2023-03-12','2023-03-12 18:13:18'),(13,1,'F5','2023-03-12','2023-03-12 18:13:18'),(14,1,'D3','2023-03-12','2023-03-12 18:13:18'),(15,1,'B5','2023-03-12','2023-03-12 20:56:04'),(16,1,'D6','2023-03-12','2023-03-12 21:00:54'),(17,4,'E7','2023-03-12','2023-03-12 21:14:52'),(18,4,'D7','2023-03-12','2023-03-12 21:14:52'),(19,4,'E2','2023-03-12','2023-03-12 21:14:52'),(20,4,'D3','2023-03-12','2023-03-12 21:14:52');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_log`
--

DROP TABLE IF EXISTS `error_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `error` varchar(1000) DEFAULT NULL,
  `time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_log`
--

LOCK TABLES `error_log` WRITE;
/*!40000 ALTER TABLE `error_log` DISABLE KEYS */;
INSERT INTO `error_log` VALUES (1,'Invalid username or password.','2023-03-12 14:53:25'),(2,'Invalid username or password.','2023-03-12 14:53:32'),(3,'An error occurred while sending the request.','2023-03-13 14:41:04'),(4,'Unknown column \'$2a$11$pn0y6fzgckj5g4jSUqT9lu\' in \'field list\'','2023-03-14 23:25:31');
/*!40000 ALTER TABLE `error_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `movie` int DEFAULT NULL,
  `seat` varchar(45) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `added_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `log_movie_idx` (`movie`),
  CONSTRAINT `log_movie` FOREIGN KEY (`movie`) REFERENCES `movies` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'Supun Sathsara','hi@supunsathsara.com','94784478771',2,'C3, B5, B3',1500,'2023-03-09 12:45:57'),(2,'Savindu','x@supunsathsara.com','94784478771',2,'D5, B4',1000,'2023-03-10 09:20:23'),(3,'Savindu','cs@supunsathsara.com','94784478771',4,'E1, E3, D5',2340,'2023-03-10 21:44:02'),(4,'Chutte Mc','llbnuxkro@valanides.com','94784478771',1,'E3, D5',1500,'2023-03-12 18:08:26'),(5,'Supun Sathsara','hi@supunsathsara.com','94784478771',1,'E7, F6, F5, D3',3000,'2023-03-12 18:13:18'),(6,'Supun','hi@supunsathsara.com','94784478771',1,'B5',750,'2023-03-12 20:56:04'),(7,'savindu','s@supunsathsara.com','94784478771',1,'D6',750,'2023-03-12 21:00:54'),(8,'Supun Sathsara','cineseat@supunsathsara.com','94784478771',4,'E7, D7, E2, D3',3120,'2023-03-12 21:14:52');
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `poster` varchar(2000) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `show_time` varchar(45) DEFAULT NULL,
  `ticket_price` float DEFAULT '500',
  `status` int DEFAULT '1',
  `added_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Batman','https://cdn.shopify.com/s/files/1/0037/8008/3782/products/TheBatman-2022-OriginalMoviePoster-03-362859.jpg?v=1639682007','Batman is called to intervene when the mayor of Gotham City is murdered. Soon, his investigation leads him to uncover a web of corruption, linked to his own dark past.','10.30 am',750,1,'2023-03-08 20:21:26'),(2,'The Flash','https://i0.wp.com/batman-news.com/wp-content/uploads/2023/02/The-Flash-2023-Teaser-Poster-01.jpg?fit=2764%2C4096&quality=80&strip=info&ssl=1','Worlds collide when the Flash uses his superpowers to travel back in time to change the events of the past. However, when his attempt to save his family inadvertently alters the future, he becomes trapped in a reality in which General Zod has returned, threatening annihilation.','1.30 pm',500,1,'2023-03-08 20:24:19'),(3,'Shazam!','https://static.wikia.nocookie.net/dcmovies/images/6/60/Shazam%21_theatrical_poster.jpg/revision/latest?cb=20190329231821','Bestowed with the powers of the gods, Billy Batson and his fellow foster kids are still learning how to juggle teenage life with their adult superhero alter egos. When a vengeful trio of ancient gods arrive on Earth in search of the magic stolen from them long ago, Shazam and his allies get thrust into a battle for their superpowers, their lives, and the fate of the world.','7.00 pm',395,0,'2023-03-09 16:12:42'),(4,'Shazam! Fury of the Gods','https://pbs.twimg.com/media/Fg-hGVVUAAMeuDM?format=jpg&name=medium','Bestowed with the powers of the gods, Billy Batson and his fellow foster kids are still learning how to juggle teenage life with their adult superhero alter egos','10.00 pm',780,1,'2023-03-09 16:23:10');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auth` varchar(100) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `status` int DEFAULT '1',
  `added_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `mobile` varchar(45) DEFAULT '94784478771',
  `otp` int DEFAULT NULL,
  `otp_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_UNIQUE` (`auth`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'test','$2a$11$MHNF2BWGxy6fGnZh7w8Re.Rng.oux.BVmmvyFaLOt.38x1utdBrym',1,'2023-03-09 14:28:20','94784478771',45921,'2023-03-14 22:50:39'),(3,'admin','$2a$11$aOUwF7BySyHtSxg4upqlteeew1r2Wq06fkmu9HRGr2JhHqRa/H5au',1,'2023-03-09 23:23:00','94784478771',NULL,NULL),(5,'madu','$2a$11$9AKL.kNVzgf92MwTRIt.wOOJ0L/GHSgF44L90bY..znH8sL73tOle',1,'2023-03-10 12:37:13','94784478771',77993,'2023-03-14 23:47:12'),(7,'chutte00','$2a$11$Zo6z4Hc2Jcyh3WlXv6ucKu5GAND0.OWPGXKxWKFxZJv/G4zV4vwp.',1,'2023-03-15 00:15:17','94741050792',44668,'2023-03-15 00:15:47');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15 20:56:35
