CREATE DATABASE  IF NOT EXISTS `webshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `webshop`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: webshop
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `price` float NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Caffé Americano, 16 fl oz',4.15,'Wonderfully rich cup with depth and nuance. '),(2,'Earl Grey Black Tea,16 fl oz',3.75,'Strong black tea base, a citrus fruit with subtle lemon and floral lavender notes.'),(4,'Caffé Latte, 16 fl oz',4.75,'Our dark, rich espresso balanced with steamed milk and a light layer of foam.'),(5,'Pumpkin Spice Latte, 16 fl oz',4.75,'Our signature espresso and steamed milk with the celebrated flavor combination of pumpkin, cinnamon, nutmeg and clove.'),(6,'Salted Caramel Mocha, 16 fl oz',4.75,'Enjoy the flavors of fall in every sip.'),(7,'Plain Bagel',3.45,'Our classic soft, chewy and thick New York-style bagel.'),(8,'Cheese Danish',2.45,'It’s a simple recipe with simple ingredients you’re sure to love.'),(9,'Chocolate Croissant',2.75,'Light, flakey, 100 percent butter croissant dough is wrapped around two chocolate batons to create a perfect balance that\'ll satisfy your sweet tooth.'),(10,'Banana Nut Bread',2.75,'Bananas, walnuts and pecans in moist, nutty, classic banana bread.'),(11,'Iced Coffee, 12 fl oz',3.95,'Freshly brewed Starbucks® Iced Coffee Blend served chilled and lightly sweetened over ice.'),(12,'Blueberry Muffin',2.45,'This delicious muffin is dotted throughout with sweet, juicy blueberries and a hint of lemon.'),(13,'Crispy Grilled Cheese Sandwich',3.45,'A delicious blend of white Cheddar and mozzarella cheeses on sourdough bread, topped with a Parmesan butter spread.'),(14,'Chicken Caprese',5.25,'Stacked with craveable ingredients including slow-cooked chicken, mozzarella, balsamic-marinated tomatoes, basil pesto and spinach.'),(15,'Tomato & Mozzarella Sandwich',4.35,'Roasted tomatoes, mozzarella, spinach and basil pesto toasted focaccia.'),(16,'Morning Bun',3.25,'A flaky, buttery, cinnamony pastry that pairs perfectly with your coffee or tea.'),(17,'Chicken Wrap Protein Box',6.45,'This delicious meal is made with grilled white chicken, peanut-coconut sauce, chile-lime slaw and ginger cream cheese.'),(18,'Cheese & Fruit Protein Box',5.95,'Brie, Gouda, two-year aged Cheddar cheeses, nine-grain crackers, apples and grapes make this the perfectly balanced box to enjoy any time of day. '),(19,'Double-Smoked Bacon, Cheddar & Egg Sandwich',4.35,'Bacon smoked for six hours over hickory wood chips is stacked with a egg patty topped with a slice of sharp cheddar cheese on our croissant bun.');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `role` (
  `id` int(1) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'user'),(2,'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role_id` int(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_role_id_fk_idx` (`role_id`),
  CONSTRAINT `user_role_id_fk` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Frederik','Lundbeck Jørgensen','Frederiklundbeck@live.dk','admin',2);
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

-- Dump completed on 2019-11-01  7:31:33
