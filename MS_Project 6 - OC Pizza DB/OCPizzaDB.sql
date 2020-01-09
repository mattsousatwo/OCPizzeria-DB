-- MySQL dump 10.13  Distrib 5.7.26, for macos10.14 (x86_64)
--
-- Host: localhost    Database: OCPizza
-- ------------------------------------------------------
-- Server version	5.7.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Branches`
--

DROP TABLE IF EXISTS `Branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Branches` (
  `branch_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `supervisor_ID` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  PRIMARY KEY (`branch_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Branches`
--

LOCK TABLES `Branches` WRITE;
/*!40000 ALTER TABLE `Branches` DISABLE KEYS */;
INSERT INTO `Branches` VALUES (1,'Cambridge','84 Harvard Ave.',101,6172938472),(2,'Waltham','227 Putnum Ave.',201,8573828393),(3,'Belmont','289 Western Ave.',301,8578839037),(4,'Andover','11 Elmwood Rd.',401,6178837993),(5,'Newtonville','566 Lemon St.',501,6175260365);
/*!40000 ALTER TABLE `Branches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customers` (
  `customers_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `card_no` bigint(20) NOT NULL,
  PRIMARY KEY (`customers_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10005 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'NO NAME','In-Store',0),(10001,'James Phillips','293 Stonewall St.',5172637872638372),(10002,'Stephine Dorsett','12 Lincoln Way',6273938173627281),(10003,'Damien White','89 Parker St.',8374894774892839),(10004,'Jacob Smith','20 Third St.',2998772617289927);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Deliveries`
--

DROP TABLE IF EXISTS `Deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Deliveries` (
  `delivery_ID` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` int(11) NOT NULL,
  `time_placed` time NOT NULL,
  `time_delivered` time NOT NULL,
  `driver_ID` int(11) NOT NULL,
  PRIMARY KEY (`delivery_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Deliveries`
--

LOCK TABLES `Deliveries` WRITE;
/*!40000 ALTER TABLE `Deliveries` DISABLE KEYS */;
INSERT INTO `Deliveries` VALUES (1,100003,'17:43:52','18:17:20',102),(2,100004,'17:43:52','18:17:20',102),(3,100005,'20:17:58','20:50:12',102);
/*!40000 ALTER TABLE `Deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employees`
--

DROP TABLE IF EXISTS `Employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Employees` (
  `emp_ID` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `age` int(11) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `hire_date` date NOT NULL,
  `position` int(11) NOT NULL,
  `supervisor_ID` int(11) NOT NULL,
  `salary` bigint(20) NOT NULL,
  PRIMARY KEY (`emp_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employees`
--

LOCK TABLES `Employees` WRITE;
/*!40000 ALTER TABLE `Employees` DISABLE KEYS */;
INSERT INTO `Employees` VALUES (100,'Christina','Marshall',32,6178273823,'2019-03-11',1,100,65000),(101,'Rita','Yu',27,8572938472,'2018-07-29',1,100,65000),(102,'Alexio','David',22,8574438432,'2018-02-19',3,101,40000),(103,'Damon','Cropper',34,6173628394,'2018-08-04',4,101,35000),(104,'Ashley','Torres',19,6176359573,'2019-08-27',2,101,50000);
/*!40000 ALTER TABLE `Employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Inventory`
--

DROP TABLE IF EXISTS `Inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Inventory` (
  `food_ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`food_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Inventory`
--

LOCK TABLES `Inventory` WRITE;
/*!40000 ALTER TABLE `Inventory` DISABLE KEYS */;
INSERT INTO `Inventory` VALUES (1,'Tomato Sauce',302),(2,'Pizza Dough',102),(3,'Pepperoni',234),(4,'Mozzarella Cheese',400),(5,'Coke',382);
/*!40000 ALTER TABLE `Inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order_Type`
--

DROP TABLE IF EXISTS `Order_Type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Order_Type` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order_Type`
--

LOCK TABLES `Order_Type` WRITE;
/*!40000 ALTER TABLE `Order_Type` DISABLE KEYS */;
INSERT INTO `Order_Type` VALUES (1,'Delivery'),(2,'Pick Up'),(3,'In Store');
/*!40000 ALTER TABLE `Order_Type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Orders` (
  `order_no` int(11) NOT NULL AUTO_INCREMENT,
  `customer_ID` int(11) NOT NULL,
  `items` varchar(20) NOT NULL,
  `order_type` int(11) NOT NULL,
  `time_placed` time NOT NULL,
  `pay_method` int(11) NOT NULL,
  PRIMARY KEY (`order_no`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (100001,0,'ORDER 100001',3,'19:22:24',1),(100002,10001,'ORDER 100002',2,'16:02:43',3),(100003,10004,'ORDER 100003',1,'17:43:52',2),(100004,10004,'ORDER 100004',1,'17:43:52',4),(100005,10002,'ORDER 100005',1,'20:17:58',3);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pay_Method`
--

DROP TABLE IF EXISTS `Pay_Method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pay_Method` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pay_Method`
--

LOCK TABLES `Pay_Method` WRITE;
/*!40000 ALTER TABLE `Pay_Method` DISABLE KEYS */;
INSERT INTO `Pay_Method` VALUES (1,'Cash'),(2,'Credit'),(3,'Debit'),(4,'Cupon');
/*!40000 ALTER TABLE `Pay_Method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Positions`
--

DROP TABLE IF EXISTS `Positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Positions` (
  `pos_ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `starting_salary` bigint(20) NOT NULL,
  PRIMARY KEY (`pos_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Positions`
--

LOCK TABLES `Positions` WRITE;
/*!40000 ALTER TABLE `Positions` DISABLE KEYS */;
INSERT INTO `Positions` VALUES (1,'Supervisor',65000),(2,'Cook',50000),(3,'Driver',40000),(4,'Cashier',35000);
/*!40000 ALTER TABLE `Positions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Transactions`
--

DROP TABLE IF EXISTS `Transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Transactions` (
  `tranaction_no` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(6) NOT NULL,
  `pay_method` int(11) NOT NULL,
  `customer_ID` int(11) NOT NULL,
  PRIMARY KEY (`tranaction_no`)
) ENGINE=InnoDB AUTO_INCREMENT=100006 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Transactions`
--

LOCK TABLES `Transactions` WRITE;
/*!40000 ALTER TABLE `Transactions` DISABLE KEYS */;
INSERT INTO `Transactions` VALUES (100001,'23.99',1,0),(100002,'15.99',3,10001),(100003,'45.99',2,10004),(100004,'0.00',4,10004),(100005,'18.99',3,10002);
/*!40000 ALTER TABLE `Transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-28 14:16:39
