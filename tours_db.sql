CREATE DATABASE IF NOT EXISTS TOURS_DB;
USE TOURS_DB;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: tours_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
  `BID` int NOT NULL AUTO_INCREMENT,
  `UID` int DEFAULT NULL,
  `PID` int DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`BID`),
  KEY `UID` (`UID`),
  KEY `PID` (`PID`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `user` (`UID`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`PID`) REFERENCES `package` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_location`
--

DROP TABLE IF EXISTS `has_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `has_location` (
  `HLID` int NOT NULL AUTO_INCREMENT,
  `PID` int DEFAULT NULL,
  `LID` int DEFAULT NULL,
  PRIMARY KEY (`HLID`),
  KEY `PID` (`PID`),
  KEY `LID` (`LID`),
  CONSTRAINT `has_location_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `package` (`PID`),
  CONSTRAINT `has_location_ibfk_2` FOREIGN KEY (`LID`) REFERENCES `location` (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_location`
--

LOCK TABLES `has_location` WRITE;
/*!40000 ALTER TABLE `has_location` DISABLE KEYS */;
INSERT INTO `has_location` VALUES (10,1,115),(11,1,116),(12,1,117),(13,1,118),(14,1,119),(15,2,125),(16,2,126),(17,2,127),(18,2,128),(19,2,129),(20,3,100),(21,3,101),(22,3,102),(23,3,103),(24,3,104),(25,4,120),(26,4,121),(27,4,122),(28,4,123),(29,4,124),(30,5,110),(31,5,111),(32,5,112),(33,5,113),(34,5,114),(35,6,125),(36,6,126),(37,6,127),(38,6,128),(39,6,129);
/*!40000 ALTER TABLE `has_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `IMG_ID` int NOT NULL AUTO_INCREMENT,
  `URL` varchar(100) DEFAULT NULL,
  `LID` int DEFAULT NULL,
  PRIMARY KEY (`IMG_ID`),
  KEY `LID` (`LID`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`LID`) REFERENCES `location` (`LID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `LID` int NOT NULL AUTO_INCREMENT,
  `LNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(100) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `CITY_NAME` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`LID`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (100,'Abbey Falls','Coorg, Karnataka','Abbey Falls is one of the most famous waterfalls in Coorg. Surrounded by coffee plantations and spice estates, the waterfall cascades from a height of about 70 feet, creating a spectacular sight.','Coorg'),(101,'Rajas Seat','Coorg, Karnataka','Rajas Seat is a beautiful garden and viewpoint that was once the favorite relaxation spot of Kodagu kings. It offers stunning views of valleys, green hills, and mesmerizing sunsets.','Coorg'),(102,'Nagarhole National Park','Coorg, Karnataka','Nagarhole National Park is one of Indias premier wildlife reserves. It is home to elephants, tigers, leopards, deer, and hundreds of bird species, making it a favorite destination for wildlife safaris.','Coorg'),(103,'Mandalpatti View Point','Coorg, Karnataka','Mandalpatti is a scenic hilltop viewpoint famous for its panoramic views of the Western Ghats. The journey to the summit through rugged terrain is an adventure in itself.','Coorg'),(104,'Madikeri Fort','Coorg, Karnataka','Madikeri Fort is a historic fort built in the 17th century. It features ancient architecture, a museum, and provides insights into Coorgs rich history.','Coorg'),(105,'Stone Chariot','Hampi, Karnataka','The Stone Chariot is the most recognizable monument of Hampi and a symbol of Karnataka Tourism. Carved from granite, it resembles a ceremonial chariot and showcases the extraordinary craftsmanship of the Vijayanagara Empire. It is one of the most photographed structures in India.','Hampi'),(106,'Lotus Mahal','Hampi, Karnataka','Lotus Mahal is a beautiful palace known for its unique lotus-shaped design. It combines Hindu and Islamic architectural styles and was used as a leisure pavilion for royal women. Its elegant arches and symmetry make it a major attraction.','Hampi'),(107,'Elephant Stables','Hampi, Karnataka','The Elephant Stables once housed the royal elephants of the Vijayanagara Empire. The structure consists of eleven interconnected chambers with large domes and decorative arches, reflecting the grandeur of the kingdom.','Hampi'),(108,'Royal Enclosure','Hampi, Karnataka','The Royal Enclosure was the administrative and ceremonial center of the Vijayanagara Empire. It contains the remains of palaces, audience halls, water systems, and royal platforms, offering insights into the empires governance and culture.','Hampi'),(109,'Tungabhadra River','Hampi, Karnataka','The Tungabhadra River flows through Hampi and plays a vital role in its history and culture. Visitors can enjoy coracle boat rides, riverside walks, and stunning views of the ancient ruins along the riverbanks.','Hampi'),(110,'Fort Kochi','Kochi, Kerala','Fort Kochi is a historic seaside area famous for its colonial architecture, Chinese fishing nets, and cultural heritage. Visitors can explore charming streets, art galleries, and historic buildings while enjoying the coastal atmosphere.','Kochi'),(111,'Mattancherry Palace','Kochi, Kerala','Also known as the Dutch Palace, Mattancherry Palace showcases Keralas royal history through beautiful murals, artifacts, and exhibits related to the Cochin royal family. It is an important cultural and historical landmark.','Kochi'),(112,'Marine Drive','Kochi, Kerala','Marine Drive is a popular waterfront promenade offering stunning views of Kochis harbor and backwaters. It is an ideal place for evening walks, boating, shopping, and enjoying the citys skyline.','Kochi'),(113,'Jew Town and Paradesi Synagogue','Kochi, Kerala','Jew Town is a historic neighborhood known for its antique shops and cultural significance. The Paradesi Synagogue, built in 1568, is one of the oldest active synagogues in the Commonwealth and features beautiful interiors and historical artifacts.','Kochi'),(114,'Cherai Beach','Kochi, Kerala','Cherai Beach is one of the most beautiful beaches near Kochi. Known for its golden sands, calm waters, and picturesque sunsets, it is a perfect destination for relaxation, swimming, and beach activities.','Kochi'),(115,'Eravikulam National Park','Munnar, kerala','Eravikulam National Park is one of the most famous attractions in Munnar and is home to the endangered Nilgiri Tahr. The park features rolling grasslands, breathtaking mountain views, and diverse wildlife. It is also known for the rare Neelakurinji flowers that bloom once every twelve years, covering the hills in a beautiful shade of blue','Munnar'),(116,'Mattupetty Dam','Munnar, Kerala','Mattupetty Dam is a picturesque reservoir surrounded by green hills and tea plantations. Visitors can enjoy boating, photography, and stunning views of the surrounding landscape. The area is also known for attracting elephants and other wildlife that come to drink water near the reservoir.','Munnar'),(117,'Tea Museum','Munnar, Kerala','The Tea Museum showcases the rich history of tea cultivation in Munnar. Visitors can learn about tea processing, explore vintage machinery, and understand the evolution of the tea industry in the region. The museum provides an educational and enjoyable experience for tourists of all ages.','Munnar'),(118,'Top Station','Munnar, Kerala','Top Station is the highest point in Munnar and offers spectacular panoramic views of the Western Ghats and the neighboring valleys of Tamil Nadu. The viewpoint is famous for its sunrise and sunset views, making it a favorite destination for photographers and nature enthusiasts.','Munnar'),(119,'Attukad Waterfalls','Munnar, Kerala','Attukad Waterfalls is a beautiful cascade surrounded by dense forests and rolling hills. The waterfall is especially attractive during the monsoon season when the water flow is at its peak. It is a perfect spot for nature walks, photography, and enjoying the serene beauty .','Munnar'),(120,'Mysuru Palace','Mysore, Karnataka','Mysuru Palace is one of the most famous royal palaces in India and was the residence of the Wadiyar dynasty. It is known for its magnificent Indo-Saracenic architecture, beautiful interiors, and rich history. The palace is illuminated with thousands of lights on special occasions, making it a major tourist attraction.','Mysore'),(121,'Brindavan Gardens','Mysore, Karnataka','Brindavan Gardens is a beautifully landscaped garden located beside the KRS Dam. It is famous for its colorful flower beds, musical fountain show, and well-maintained lawns. The garden attracts visitors from across the country, especially during the evening fountain performances.','Mysore'),(122,'St. Philomenas Church','Mysore, Karnataka','St. Philomenas Church is one of the largest churches in India and is known for its stunning Neo-Gothic architecture. Inspired by Germanys Cologne Cathedral, it features tall spires, beautiful stained-glass windows, and a peaceful atmosphere. It is an important religious and historical landmark in Mysuru.','Mysore'),(123,'Railway Museum','Mysore, Karnataka','The Railway Museum showcases the rich history of Indian Railways through vintage locomotives, royal coaches, and railway artifacts. Visitors can explore old engines and learn about the development of rail transport in India. It is an educational and enjoyable destination for families and railway enthusiasts.','Mysore'),(124,'Karanji Lake','Mysore, Karnataka','Karanji Lake is a serene freshwater lake surrounded by lush greenery and home to many species of birds. It features a large walk-through aviary, boating facilities, and scenic walking paths. The lake is a perfect destination for nature lovers, bird watchers, and photographers.','Mysore'),(125,'Dudhsagar Falls','Goa, India','Dudhsagar Falls is one of the tallest and most spectacular waterfalls in India, cascading from a height of about 310 meters. Located amidst the lush forests of the Western Ghats, it is known for its milky-white appearance and breathtaking natural beauty. The site is a popular destination for trekking, nature photography, and adventure enthusiasts.','Goa'),(126,'Candolim Beach','Goa, India','Candolim Beach is a serene and picturesque beach known for its golden sands and calm waters. It offers a perfect blend of relaxation and adventure, with activities such as parasailing, jet skiing, and dolphin watching. The beach is also lined with resorts, restaurants, and vibrant nightlife options.','Goa'),(127,'Baga Beach','Goa, India','Baga Beach is one of Goas most popular tourist destinations, famous for its lively atmosphere and water sports. Visitors can enjoy activities such as banana boat rides, parasailing, and kayaking while taking in the scenic coastal views. The beach is also known for its beach shacks, restaurants, and energetic nightlife.','Goa'),(128,'Basilica of Bom Jesus','Goa, India','The Basilica of Bom Jesus is a UNESCO World Heritage Site and one of the most important churches in India. Built in the 16th century, it is renowned for its Baroque architecture and houses the sacred relics of St. Francis Xavier. The church is a significant pilgrimage site and a symbol of Goas rich colonial heritage.','Goa'),(129,' Arambol Sweet Water Lake','Goa, India','Arambol Sweet Water Lake is a unique natural attraction located close to Arambol Beach, where fresh water forms a peaceful lake surrounded by greenery. The lake is known for its tranquil environment and is believed by many visitors to have therapeutic properties. It is an ideal spot for relaxation, nature walks, and enjoying the scenic beauty of North Goa.','Goa');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `package`
--

DROP TABLE IF EXISTS `package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `package` (
  `PID` int NOT NULL AUTO_INCREMENT,
  `PNAME` varchar(50) NOT NULL,
  `PRICE` double DEFAULT NULL,
  `NO_OF_DAYS` int DEFAULT NULL,
  PRIMARY KEY (`PID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `package`
--

LOCK TABLES `package` WRITE;
/*!40000 ALTER TABLE `package` DISABLE KEYS */;
INSERT INTO `package` VALUES (1,'Altitude Adjustment',7000,5),(2,'Beach Bliss',9500,4),(3,'Coffee & Clouds',10000,7),(4,'Royal Reverie',6000,3),(5,'Coastal Charms',8000,6),(6,'Historic Heritage',5000,5);
/*!40000 ALTER TABLE `package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PAY_ID` int NOT NULL AUTO_INCREMENT,
  `PAY_MODE` varchar(30) DEFAULT NULL,
  `uid` int DEFAULT NULL,
  `PID` int DEFAULT NULL,
  `AMOUNT` double DEFAULT NULL,
  `TOTAL_AMT` double DEFAULT NULL,
  PRIMARY KEY (`PAY_ID`),
  KEY `PID` (`PID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `package` (`PID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UID` int NOT NULL AUTO_INCREMENT,
  `UNAME` varchar(30) NOT NULL,
  `PHNO` varchar(30) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PASSWORD` varchar(40) NOT NULL,
  PRIMARY KEY (`UID`),
  UNIQUE KEY `PHNO` (`PHNO`),
  UNIQUE KEY `EMAIL` (`EMAIL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
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

-- Dump completed on 2026-07-04 11:49:14
