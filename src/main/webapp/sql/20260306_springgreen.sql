-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: springgreen
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
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `books` (
  `bookid` int NOT NULL AUTO_INCREMENT,
  `bookname` varchar(20) NOT NULL,
  `publisher` varchar(20) NOT NULL,
  `price` int DEFAULT '0',
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,'축구의 역사','굿스포츠',7000),(2,'축구아는 여자','나무수',13000),(3,'축구의 이해','대한미디어',22000),(4,'골프 바이블','대한미디어',35000),(5,'피겨 교본','굿스포츠',8000),(6,'역도 단계별기술','굿스포츠',6000),(7,'야구의 추억','이상미디어',20000),(8,'야구를 부탁해','이상미디어',13000),(9,'올림픽 이야기','삼성당',7500),(10,'Olympic Champions','Pearson',13000),(11,'가나다','삼성당',17500),(12,'포토샵CS6','제우미디어',25000),(13,'아시안게임 이야기','스포츠북',19500),(14,'우리들 이야기','우리출판사',5000),(15,'서로 사랑하자','이상미디어',18000),(16,'하나된 마음으로','대한미디어',21000),(17,'나눌수 있을때','나무수',9000),(18,'함박눈 내리는날','이상미디어',15000),(19,'나보다 축구를','굿스포츠',23000),(20,'시작했을때 한번더','삼성당',19000);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseos`
--

DROP TABLE IF EXISTS `buseos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseos` (
  `buseoId` int NOT NULL,
  `buseoName` varchar(10) NOT NULL,
  `jiyuk` varchar(10) NOT NULL,
  PRIMARY KEY (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseos`
--

LOCK TABLES `buseos` WRITE;
/*!40000 ALTER TABLE `buseos` DISABLE KEYS */;
INSERT INTO `buseos` VALUES (10,'인사','서울'),(20,'개발','부산'),(30,'마케팅','서울');
/*!40000 ALTER TABLE `buseos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `custid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`custid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'박지성','영국 맨체스타','000-5000-0001'),(2,'김연아','대한민국 서울','000-6000-0001'),(3,'김말숙','대한민국 강원도','000-7000-0001'),(4,'손흥민','영국 토트넘','000-8000-0001'),(5,'박세리','대한민국 대전','001-0011-0012'),(6,'이순신','대한민국 아산','001-0009-0007'),(7,'소나무','대한민국 청주','000-1100-0050');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gkdl`
--

DROP TABLE IF EXISTS `gkdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gkdl` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gkdl`
--

LOCK TABLES `gkdl` WRITE;
/*!40000 ALTER TABLE `gkdl` DISABLE KEYS */;
/*!40000 ALTER TABLE `gkdl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hakjum`
--

DROP TABLE IF EXISTS `hakjum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hakjum` (
  `grade` char(1) NOT NULL,
  `minScore` int NOT NULL,
  `maxScore` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hakjum`
--

LOCK TABLES `hakjum` WRITE;
/*!40000 ALTER TABLE `hakjum` DISABLE KEYS */;
INSERT INTO `hakjum` VALUES ('A',90,100),('B',80,89),('C',70,79),('D',60,69),('F',0,59);
/*!40000 ALTER TABLE `hakjum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoewon`
--

DROP TABLE IF EXISTS `hoewon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoewon` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoewon`
--

LOCK TABLES `hoewon` WRITE;
/*!40000 ALTER TABLE `hoewon` DISABLE KEYS */;
INSERT INTO `hoewon` VALUES (2,'김말숙',33,'여자','청주'),(3,'이기자',39,'남자','제주'),(7,'씨톰',20,'여자','서울'),(14,'비톰',20,'여자','서울'),(17,'에프톰',33,'남자','제주');
/*!40000 ALTER TABLE `hoewon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insa`
--

DROP TABLE IF EXISTS `insa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insa`
--

LOCK TABLES `insa` WRITE;
/*!40000 ALTER TABLE `insa` DISABLE KEYS */;
INSERT INTO `insa` VALUES (1,'홍길동',20,'남자','2026-01-23 13:50:13'),(2,'김말숙',20,'여자','2026-01-23 13:50:14'),(3,'김연아',20,'여자','2026-01-23 13:50:15'),(4,'홍길순',33,'여자','2020-05-06 00:00:00'),(6,'감나무',15,'남자','2022-09-04 00:00:00'),(7,'캥캥캥',55,'여자','2002-12-02 00:00:00'),(8,'안냥',16,'남자','2007-10-13 00:00:00'),(9,'신짱구',5,'남자','2000-05-27 00:00:00'),(10,'흰둥이',89,'남자','2017-10-28 00:00:00'),(11,'포도',30,'남자','2002-04-30 00:00:00'),(12,'구름',97,'남자','2022-11-01 00:00:00'),(13,'멍멍이',64,'남자','2008-08-27 00:00:00'),(14,'돈나무',51,'여자','2009-05-29 00:00:00'),(15,'신형만',60,'남자','2020-08-28 00:00:00'),(16,'atom',63,'여자','2005-11-27 00:00:00'),(17,'공놀이',21,'남자','2020-10-04 00:00:00'),(18,'퐁퐁',11,'남자','2008-04-05 00:00:00'),(19,'물놀이',61,'남자','2003-09-03 00:00:00'),(20,'귀여미',88,'여자','2008-09-19 00:00:00'),(21,'콩콩이',42,'여자','2021-10-30 00:00:00'),(22,'왈왈',17,'남자','2004-04-04 00:00:00'),(23,'뿡뿡이',58,'여자','2010-05-29 00:00:00'),(24,'홍홍',81,'남자','2010-04-29 00:00:00'),(25,'노홍철',57,'남자','2008-11-03 00:00:00'),(26,'수수깡',99,'남자','2000-03-18 00:00:00');
/*!40000 ALTER TABLE `insa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insa2`
--

DROP TABLE IF EXISTS `insa2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insa2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `photo` varchar(50) DEFAULT 'noimage.jpg',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insa2`
--

LOCK TABLES `insa2` WRITE;
/*!40000 ALTER TABLE `insa2` DISABLE KEYS */;
/*!40000 ALTER TABLE `insa2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jikmu`
--

DROP TABLE IF EXISTS `jikmu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jikmu` (
  `buseoId` int NOT NULL,
  `jikmuId` char(2) NOT NULL,
  PRIMARY KEY (`jikmuId`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikmu_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jikmu`
--

LOCK TABLES `jikmu` WRITE;
/*!40000 ALTER TABLE `jikmu` DISABLE KEYS */;
INSERT INTO `jikmu` VALUES (10,'J1'),(20,'J2'),(30,'J3');
/*!40000 ALTER TABLE `jikmu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jikwon`
--

DROP TABLE IF EXISTS `jikwon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jikwon` (
  `no` int NOT NULL,
  `buseo` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `bonus` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jikwon`
--

LOCK TABLES `jikwon` WRITE;
/*!40000 ALTER TABLE `jikwon` DISABLE KEYS */;
INSERT INTO `jikwon` VALUES (101,'인사',800,100),(102,'개발',1200,20),(103,'기획',1200,0),(104,'개발',1300,30),(105,'개발',1100,50),(106,'인사',900,0),(107,'기획',1400,20),(108,'인사',1200,50),(109,'인사',1100,0),(110,'기획',700,100);
/*!40000 ALTER TABLE `jikwon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jikwons`
--

DROP TABLE IF EXISTS `jikwons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jikwons` (
  `id` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `jikwons_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jikwons`
--

LOCK TABLES `jikwons` WRITE;
/*!40000 ALTER TABLE `jikwons` DISABLE KEYS */;
INSERT INTO `jikwons` VALUES (101,'홍길동',10),(102,'김말숙',20),(103,'이기자',10);
/*!40000 ALTER TABLE `jikwons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `no` int NOT NULL,
  `job` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,NULL),(2,'공무원'),(3,'회사원'),(4,'학생'),(5,NULL),(6,'자영업'),(7,NULL);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jproduct`
--

DROP TABLE IF EXISTS `jproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jproduct` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jproduct`
--

LOCK TABLES `jproduct` WRITE;
/*!40000 ALTER TABLE `jproduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `jproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jumun`
--

DROP TABLE IF EXISTS `jumun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jumun` (
  `no` int NOT NULL,
  `ilja` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jumun`
--

LOCK TABLES `jumun` WRITE;
/*!40000 ALTER TABLE `jumun` DISABLE KEYS */;
INSERT INTO `jumun` VALUES (101,'2026-03-02 00:00:00'),(102,'2026-03-09 00:00:00'),(103,'2026-03-12 00:00:00'),(104,'2026-04-01 00:00:00'),(105,'2026-04-06 00:00:00'),(106,'2026-04-30 00:00:00'),(107,'2026-05-22 00:00:00');
/*!40000 ALTER TABLE `jumun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kwamok`
--

DROP TABLE IF EXISTS `kwamok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kwamok` (
  `code` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kwamok`
--

LOCK TABLES `kwamok` WRITE;
/*!40000 ALTER TABLE `kwamok` DISABLE KEYS */;
INSERT INTO `kwamok` VALUES (201),(202),(203),(204),(205);
/*!40000 ALTER TABLE `kwamok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kwamok2`
--

DROP TABLE IF EXISTS `kwamok2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kwamok2` (
  `id` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kwamok2`
--

LOCK TABLES `kwamok2` WRITE;
/*!40000 ALTER TABLE `kwamok2` DISABLE KEYS */;
INSERT INTO `kwamok2` VALUES (1,'수학'),(3,'컴퓨터');
/*!40000 ALTER TABLE `kwamok2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kwamoks`
--

DROP TABLE IF EXISTS `kwamoks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kwamoks` (
  `kwamokId` int NOT NULL,
  `kwamokName` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kwamoks`
--

LOCK TABLES `kwamoks` WRITE;
/*!40000 ALTER TABLE `kwamoks` DISABLE KEYS */;
INSERT INTO `kwamoks` VALUES (1,'수학'),(2,'과학'),(3,'컴퓨터');
/*!40000 ALTER TABLE `kwamoks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mariri`
--

DROP TABLE IF EXISTS `mariri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mariri` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mariri`
--

LOCK TABLES `mariri` WRITE;
/*!40000 ALTER TABLE `mariri` DISABLE KEYS */;
/*!40000 ALTER TABLE `mariri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL AUTO_INCREMENT,
  `custid` int NOT NULL,
  `bookid` int NOT NULL,
  `saleprice` int DEFAULT '0',
  `orderdate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`orderid`),
  KEY `custid` (`custid`),
  KEY `bookid` (`bookid`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`custid`) REFERENCES `customer` (`custid`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,1,6000,'2019-08-01 00:00:00'),(2,1,3,21000,'2018-09-03 00:00:00'),(3,2,5,8000,'2022-11-03 00:00:00'),(4,3,6,6000,'2020-06-04 00:00:00'),(5,4,7,19000,'2019-11-05 00:00:00'),(6,1,2,12000,'2021-09-07 00:00:00'),(7,4,8,11000,'2019-03-07 00:00:00'),(8,3,10,12000,'2021-07-08 00:00:00'),(9,2,10,9000,'2017-05-09 00:00:00'),(10,3,18,13000,'2023-10-11 00:00:00'),(11,7,15,15000,'2023-06-17 00:00:00'),(12,7,20,16000,'2023-12-19 00:00:00'),(13,3,19,23000,'2023-06-30 00:00:00'),(14,1,16,17000,'2023-11-21 00:00:00'),(15,4,15,13000,'2023-05-12 00:00:00'),(16,7,10,13000,'2025-09-24 00:00:00'),(17,1,12,23000,'2025-02-26 00:00:00'),(18,2,11,13000,'2025-09-16 00:00:00'),(19,4,20,13000,'2026-03-20 00:00:00'),(20,4,15,20000,'2026-04-26 00:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panme2`
--

DROP TABLE IF EXISTS `panme2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `panme2` (
  `nalja` datetime NOT NULL,
  `jikwon` varchar(10) NOT NULL,
  `mechul` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panme2`
--

LOCK TABLES `panme2` WRITE;
/*!40000 ALTER TABLE `panme2` DISABLE KEYS */;
INSERT INTO `panme2` VALUES ('2026-03-01 00:00:00','홍길동',100),('2026-03-02 00:00:00','홍길동',200),('2026-03-03 00:00:00','홍길동',150),('2026-03-01 00:00:00','김말숙',300),('2026-03-02 00:00:00','김말숙',350),('2026-03-01 00:00:00','이기자',250);
/*!40000 ALTER TABLE `panme2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('진라면',1300),('새우탕면',1100),('너구리',1800),('틈새라면',1200),('비빔면',1500),('안성탕면',1000),('라면시대',1900),('신_라면',2200);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salary`
--

DROP TABLE IF EXISTS `salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salary` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `code` char(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  `department` varchar(10) NOT NULL,
  `position` varchar(10) NOT NULL,
  `overtime` int DEFAULT '0',
  `netpay` int NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salary`
--

LOCK TABLES `salary` WRITE;
/*!40000 ALTER TABLE `salary` DISABLE KEYS */;
INSERT INTO `salary` VALUES (1,'ID01','홍길동','인사과','대리',5,1935000),(2,'CD02','감나무','총무과','대리',7,1989000),(3,'CB01','김릴라','총무과','부장',8,2916000),(4,'CB02','강강술래','총무과','부장',5,2835000);
/*!40000 ALTER TABLE `salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sawon`
--

DROP TABLE IF EXISTS `sawon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sawon` (
  `sabun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `pay` int DEFAULT NULL,
  `buseoId` int NOT NULL,
  PRIMARY KEY (`sabun`),
  KEY `buseoId` (`buseoId`),
  CONSTRAINT `sawon_ibfk_1` FOREIGN KEY (`buseoId`) REFERENCES `buseos` (`buseoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sawon`
--

LOCK TABLES `sawon` WRITE;
/*!40000 ALTER TABLE `sawon` DISABLE KEYS */;
INSERT INTO `sawon` VALUES (101,'김사원',5000,10),(102,'김과장',6000,20),(103,'서대리',4000,10),(104,'이부장',7000,30),(105,'오과장',6500,30);
/*!40000 ALTER TABLE `sawon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `age` int DEFAULT '20',
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (101,'홍길동',20,85),(102,'이순신',21,73),(103,'임꺽정',20,59),(104,'장보고',21,92),(105,'홍길동',20,63),(106,'김연아',23,88),(107,'오하늘',23,81),(108,'강감찬',24,95);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students2`
--

DROP TABLE IF EXISTS `students2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students2` (
  `hakbun` int NOT NULL,
  `name` varchar(10) NOT NULL,
  `kwamokId` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students2`
--

LOCK TABLES `students2` WRITE;
/*!40000 ALTER TABLE `students2` DISABLE KEYS */;
INSERT INTO `students2` VALUES (101,'홍길동',1),(102,'이순신',2),(103,'임꺽정',NULL),(103,'이기자',2);
/*!40000 ALTER TABLE `students2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students3`
--

DROP TABLE IF EXISTS `students3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students3` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students3`
--

LOCK TABLES `students3` WRITE;
/*!40000 ALTER TABLE `students3` DISABLE KEYS */;
INSERT INTO `students3` VALUES ('홍길동',21,'컴퓨터'),('김말숙',22,'경영'),('이기자',24,'물리');
/*!40000 ALTER TABLE `students3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students4`
--

DROP TABLE IF EXISTS `students4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students4` (
  `name` varchar(10) NOT NULL,
  `hakbun` int NOT NULL,
  `major` varchar(10) NOT NULL,
  PRIMARY KEY (`hakbun`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students4`
--

LOCK TABLES `students4` WRITE;
/*!40000 ALTER TABLE `students4` DISABLE KEYS */;
INSERT INTO `students4` VALUES ('강감찬',21,'물리'),('김말숙',22,'경영'),('김연아',23,'교육');
/*!40000 ALTER TABLE `students4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study`
--

DROP TABLE IF EXISTS `study`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study`
--

LOCK TABLES `study` WRITE;
/*!40000 ALTER TABLE `study` DISABLE KEYS */;
INSERT INTO `study` VALUES (1,'rrr',55,'여자','dd');
/*!40000 ALTER TABLE `study` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sungjuks`
--

DROP TABLE IF EXISTS `sungjuks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sungjuks` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `jumsu` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sungjuks`
--

LOCK TABLES `sungjuks` WRITE;
/*!40000 ALTER TABLE `sungjuks` DISABLE KEYS */;
INSERT INTO `sungjuks` VALUES (1,'길동',90),(2,'말숙',80),(3,'철수',90),(4,'영희',60),(5,'민수',60),(6,'수지',70),(7,'수민',50);
/*!40000 ALTER TABLE `sungjuks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test` (
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES ('김장미',20,'여자','2026-01-15 20:23:23','서울'),('홍길동',20,'남자','2026-01-15 20:23:23','청주'),('강감찬',50,'남자','2026-01-15 20:23:23','제주'),('가나다',35,'남자','2000-10-01 00:00:00','광주'),('소나무',34,'남자','2023-06-25 00:00:00','울산'),('이순신',42,'남자','2024-09-09 00:00:00','서울'),('오하늘',58,'여자','2000-02-01 00:00:00','청주'),('강감찬',50,'남자','2026-01-16 09:00:40','제주'),('가나다',20,'남자','2000-10-01 00:00:00','서울'),('소나무',34,'여자','2023-05-05 00:00:00','청주'),('이순신',54,'남자','2024-05-03 00:00:00','울산'),('오하늘',73,'여자','2000-12-10 00:00:00','광주'),('오하늘',73,'여자','2000-12-10 00:00:00','광주');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test2`
--

DROP TABLE IF EXISTS `test2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test2` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) NOT NULL DEFAULT '남자',
  `address` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test2`
--

LOCK TABLES `test2` WRITE;
/*!40000 ALTER TABLE `test2` DISABLE KEYS */;
INSERT INTO `test2` VALUES (1,'홍길동',20,'남자',NULL),(2,'김말숙',20,'여자',''),(4,'김연아',29,'남자','서울'),(5,'소나무',55,'남자','청주'),(6,'가나다',39,'여자','서울'),(7,'김자자',25,'여자','광주'),(8,'강노노',60,'남자','제주'),(9,'감나무',15,'여자','광주'),(10,'반갑다',22,'여자','안산'),(13,'아이고',34,'여자','서울'),(16,'연습맨',20,'남자',NULL),(17,'연습맨',20,'남자',NULL),(18,'연습맨2',39,'여자','청주');
/*!40000 ALTER TABLE `test2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test3`
--

DROP TABLE IF EXISTS `test3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test3` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test3`
--

LOCK TABLES `test3` WRITE;
/*!40000 ALTER TABLE `test3` DISABLE KEYS */;
INSERT INTO `test3` VALUES (1,'hks1234','홍길순',22),(2,'hkd1234','홍길동',25),(3,'lkj1234','이기자',22);
/*!40000 ALTER TABLE `test3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test4`
--

DROP TABLE IF EXISTS `test4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test4` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `bookName` varchar(20) NOT NULL,
  `price` int DEFAULT NULL,
  PRIMARY KEY (`idx`),
  KEY `mid` (`mid`),
  CONSTRAINT `test4_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `test3` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test4`
--

LOCK TABLES `test4` WRITE;
/*!40000 ALTER TABLE `test4` DISABLE KEYS */;
INSERT INTO `test4` VALUES (1,'lkj1234','노인과바다',10000),(2,'hkd1234','노인저편',25000),(3,'hkd1234','노인저편',25000);
/*!40000 ALTER TABLE `test4` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-06 17:10:30
