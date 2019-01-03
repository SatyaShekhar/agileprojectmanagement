CREATE DATABASE  IF NOT EXISTS `task_manager` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `task_manager`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: task_manager
-- ------------------------------------------------------
-- Server version	5.6.29-enterprise-commercial-advanced-log

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
-- Table structure for table `all_history`
--

DROP TABLE IF EXISTS `all_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_history` (
  `historyId` bigint(20) NOT NULL,
  `infoId` bigint(20) NOT NULL,
  PRIMARY KEY (`historyId`,`infoId`),
  KEY `FK_wdsjy1cpv83umlqkw99biv69` (`infoId`),
  CONSTRAINT `FK_rprpq6c43puduhnjrfht1is8w` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`),
  CONSTRAINT `FK_wdsjy1cpv83umlqkw99biv69` FOREIGN KEY (`infoId`) REFERENCES `pastinformation` (`infoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_history`
--

LOCK TABLES `all_history` WRITE;
/*!40000 ALTER TABLE `all_history` DISABLE KEYS */;
INSERT INTO `all_history` VALUES (4,1),(5,2),(6,3),(7,4),(8,5),(9,6),(10,7),(11,8),(12,9),(13,10),(14,11),(15,12),(16,13),(17,14),(18,15),(19,16),(20,17),(21,18),(22,19),(23,20),(24,21),(25,22),(26,23),(27,24),(28,25),(29,26),(30,27),(31,28),(32,29),(33,30),(34,31),(35,32),(36,33),(37,34),(38,35),(39,36),(40,37),(41,38),(36,39),(42,40),(43,41),(44,42),(44,43),(45,44),(46,45),(47,46),(37,47),(46,48),(45,49),(44,50),(46,51),(48,52),(49,53),(50,54),(51,55),(48,56),(52,57),(48,58),(48,59),(42,60),(53,61),(54,62),(55,63),(49,64),(56,65),(57,66),(39,67),(58,68),(59,69),(59,70),(60,71),(61,72),(62,73),(56,74),(57,75),(58,76),(59,77),(62,78),(60,79),(61,80),(63,81),(64,82),(65,83),(47,84),(40,85),(43,86),(45,87),(66,88),(67,89),(68,90),(38,91),(69,92),(38,93),(70,94),(71,95),(72,96),(73,97),(67,98),(74,99),(71,100),(72,101),(75,102),(76,103),(75,104),(70,105),(70,106),(77,107),(77,108),(63,109),(78,110),(78,111),(74,112),(36,113),(79,114),(80,115),(81,116),(81,117),(81,118),(81,119),(82,120),(82,121),(70,122),(41,123),(70,124),(83,125),(85,127),(86,128),(87,129),(70,130),(70,131),(70,132),(87,133),(85,134),(88,135),(89,136),(71,137),(72,138),(90,139),(41,140),(40,141),(39,142),(41,143),(89,144),(91,145),(92,146),(93,147),(94,148),(95,149),(96,150),(88,151),(90,152),(97,153),(98,154),(99,155),(100,156),(101,157),(101,158);
/*!40000 ALTER TABLE `all_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `author` (
  `authorId` bigint(20) NOT NULL AUTO_INCREMENT,
  `authorName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `fullName` longtext,
  `creationTime` datetime DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  `historyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`authorId`),
  UNIQUE KEY `UK_b9vtumwpr2o7485380bp9hmcj` (`authorName`),
  KEY `FK_ilkkg5564qikda1j3cu9l6m2r` (`id`),
  KEY `FK_2naqpeg8hmkddgvknp3gbvotl` (`historyId`),
  CONSTRAINT `FK_2naqpeg8hmkddgvknp3gbvotl` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`),
  CONSTRAINT `FK_ilkkg5564qikda1j3cu9l6m2r` FOREIGN KEY (`id`) REFERENCES `organization` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Satya (TM)','password@12345','Shekhar Shekhar Barik','2018-12-22 21:08:44',1,NULL),(2,'Debasmita (TM)','password@12345','Debasmita (TM) Full Name','2018-12-22 21:08:44',1,NULL),(3,'Sanjiv (TM)','password@12345','Sanjiv (TM) Full Name','2018-12-22 21:08:44',1,NULL),(4,'Satya (SC)','password@12345','Shekhar Shekhar Barik','2018-12-22 21:08:44',2,NULL),(5,'Debasmita (SC)','password@12345','Debasmita (SC) Full Name','2018-12-22 21:08:44',2,NULL),(6,'Sanjiv (SC)','password@12345','Sanjiv (SC) Full Name','2018-12-22 21:08:44',2,NULL),(7,'Satya (MB)','password@12345','Shekhar Shekhar Barik','2018-12-22 21:08:44',3,NULL),(8,'Debasmita (MB)','password@12345','Debasmita (MB) Full Name','2018-12-22 21:08:44',3,NULL),(9,'Sanjiv (MB)','password@12345','Sanjiv (MB) Full Name','2018-12-22 21:08:44',3,NULL),(10,'satya','satya','Satya Shekhar Barik','2018-12-22 21:08:44',1,NULL);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bug`
--

DROP TABLE IF EXISTS `bug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bug` (
  `bugId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `description` longtext,
  `status` tinyint(4) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `severity` tinyint(4) DEFAULT NULL,
  `creationTime` datetime DEFAULT NULL,
  `comment` longtext,
  `estimate` float DEFAULT NULL,
  `actual` float DEFAULT NULL,
  `remaining` float DEFAULT NULL,
  `engineerId` bigint(20) DEFAULT NULL,
  `submitterId` bigint(20) DEFAULT NULL,
  `userstoryId` bigint(20) DEFAULT NULL,
  `historyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`bugId`),
  KEY `FK_790cadby14ho4m0g6is2fx59y` (`engineerId`),
  KEY `FK_90584qkq5wymwu7g1r802avbj` (`submitterId`),
  KEY `FK_3kd7i71aqwsr8mr2asne2vigc` (`userstoryId`),
  KEY `FK_cj6cy82b8yow2wpc1yiyc4yhx` (`historyId`),
  CONSTRAINT `FK_3kd7i71aqwsr8mr2asne2vigc` FOREIGN KEY (`userstoryId`) REFERENCES `userstory` (`userstoryId`),
  CONSTRAINT `FK_790cadby14ho4m0g6is2fx59y` FOREIGN KEY (`engineerId`) REFERENCES `author` (`authorId`),
  CONSTRAINT `FK_90584qkq5wymwu7g1r802avbj` FOREIGN KEY (`submitterId`) REFERENCES `author` (`authorId`),
  CONSTRAINT `FK_cj6cy82b8yow2wpc1yiyc4yhx` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bug`
--

LOCK TABLES `bug` WRITE;
/*!40000 ALTER TABLE `bug` DISABLE KEYS */;
INSERT INTO `bug` VALUES (1,'Bug0','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,1,4),(2,'Bug1','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,2,5),(3,'Bug2','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,3,6),(4,'Bug3','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,4,7),(5,'Bug4','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,5,8),(6,'Bug5','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,6,9),(7,'Bug6','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,7,10),(8,'Bug7','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,8,11),(9,'Bug8','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,9,12),(10,'Bug9','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,10,13),(11,'Bug10','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,11,14),(12,'Bug11','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,12,15),(13,'Bug12','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,13,16),(14,'Bug13','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,14,17),(15,'Bug14','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,15,18),(16,'Bug15','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,16,19),(17,'Bug16','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,17,20),(18,'Bug17','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,18,21),(19,'Bug18','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,19,22),(20,'Bug19','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,20,23),(21,'Bug20','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,21,24),(22,'Bug21','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,22,25),(23,'Bug22','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,23,26),(24,'Bug23','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,24,27),(25,'Bug24','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,25,28),(26,'Bug25','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,26,29),(27,'Bug26','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,27,30),(28,'Bug27','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,28,31),(29,'Bug28','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,29,32),(30,'Bug29','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,30,33),(31,'Bug30','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,31,34),(32,'Bug31','Sample Bug Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,0,NULL,NULL,32,35),(33,'Hibernate session factory should be created at init time ','Due to hibernate session factory is created at 1st action it takes some time to start',2,7,2,'2018-12-22 21:46:32','',0.5,0,0,1,1,39,50),(34,'Testing of the written business logic','No test cases available for the existing business logic now',2,5,1,'2018-12-22 21:47:22','',3.12,0,0,1,1,39,51),(35,'Ask for confirmation while deleting items','Find all delete action and make sure you ask for an pop up if user really want to delete this or wrongly clicked on the button',2,1,1,'2018-12-22 21:52:35','',5.14,0,0,1,1,39,53),(36,'View over all task estimates for the user stories','The over all report is really handy to have a better picture',1,1,1,'2018-12-22 21:53:23','',0,0,0,1,1,39,54),(37,'Navigation links to move across pages','Now its very difficult to move from one project or section to another project or section. Need to find a common section (could be top heading where user can navigate from across project or section)',1,4,1,'2018-12-22 21:56:35','',5.8,0,0,1,1,39,55),(38,'While removing the template task app is getting closed','[Not able to reproduce the issue, But already got two times.. need to find the right steps to reproduce\r\n\r\n12-23 19:49:20.579 7745-7745/? E/AndroidRuntime: FATAL EXCEPTION: main\r\n    Process: com.lotusbin.myapplication, PID: 7745\r\n    java.lang.NullPointerException: Attempt to invoke virtual method \'android.content.res.Resources android.content.Context.getResources()\' on a null object reference\r\n        at android.widget.Toast.<init>(Toast.java:101)\r\n        at android.widget.Toast.makeText(Toast.java:258)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:49)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:46)\r\n        at android.arch.lifecycle.LiveData.considerNotify(LiveData.java:109)\r\n        at android.arch.lifecycle.LiveData.dispatchingValue(LiveData.java:126)\r\n        at android.arch.lifecycle.LiveData.setValue(LiveData.java:282)\r\n        at android.arch.lifecycle.LiveData$1.run(LiveData.java:87)\r\n        at android.os.Handler.handleCallback(Handler.java:739)\r\n        at android.os.Handler.dispatchMessage(Handler.java:95)\r\n        at android.os.Looper.loop(Looper.java:135)',1,0,1,'2018-12-23 20:22:17','',0.5,0,0,1,1,60,81);
/*!40000 ALTER TABLE `bug` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `historyId` bigint(20) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history`
--

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31),(32),(33),(34),(35),(36),(37),(38),(39),(40),(41),(42),(43),(44),(45),(46),(47),(48),(49),(50),(51),(52),(53),(54),(55),(56),(57),(58),(59),(60),(61),(62),(63),(64),(65),(66),(67),(68),(69),(70),(71),(72),(73),(74),(75),(76),(77),(78),(79),(80),(81),(82),(83),(85),(86),(87),(88),(89),(90),(91),(92),(93),(94),(95),(96),(97),(98),(99),(100),(101);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iteration`
--

DROP TABLE IF EXISTS `iteration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iteration` (
  `iterationId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `creationTime` datetime DEFAULT NULL,
  `authorId` bigint(20) DEFAULT NULL,
  `projectId` bigint(20) DEFAULT NULL,
  `historyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`iterationId`),
  KEY `FK_81l1vdo4kj8id3tdi7ep9ry33` (`authorId`),
  KEY `FK_ehabv8sl4u3lvq81najvq4vtb` (`projectId`),
  KEY `FK_er3xt7tct9n7ayususy0tfb0f` (`historyId`),
  CONSTRAINT `FK_81l1vdo4kj8id3tdi7ep9ry33` FOREIGN KEY (`authorId`) REFERENCES `author` (`authorId`),
  CONSTRAINT `FK_ehabv8sl4u3lvq81najvq4vtb` FOREIGN KEY (`projectId`) REFERENCES `project` (`projectId`),
  CONSTRAINT `FK_er3xt7tct9n7ayususy0tfb0f` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iteration`
--

LOCK TABLES `iteration` WRITE;
/*!40000 ALTER TABLE `iteration` DISABLE KEYS */;
INSERT INTO `iteration` VALUES (1,'Unscheduled','All un scheduled Items','1970-01-01 05:30:00','1970-01-01 05:30:00','2018-12-22 21:08:44',10,1,NULL),(2,'1001: Iteration 0 (Level 1 planning) [22 to 23 Dec 2018]','1st Iteration','2018-12-22 00:00:00','2018-12-23 00:00:00','2018-12-22 21:20:22',1,4,39),(3,'1002: Iteration 1 (Detail planning and POC) [24th to 29th Dec 2018]','','2018-12-24 00:00:00','2018-12-29 00:00:00','2018-12-22 21:20:56',1,4,40),(4,'1003: Iteration 3 (27th to 31st Dec 2018)','','2018-12-27 00:00:00','2018-12-31 00:00:00','2018-12-22 21:21:33',1,4,41),(5,'1001: Organize existing project and backup and upgrade plan','','2018-12-22 00:00:00','2018-12-31 00:00:00','2018-12-22 21:25:28',1,2,42),(6,'Unscheduled','','2022-12-23 00:00:00','2022-12-23 00:00:00','2018-12-23 16:30:36',1,4,67),(9,'Bugs 1: 1st 10 defects','','2018-12-27 00:00:00','2018-12-31 00:00:00','2018-12-23 19:52:44',1,4,79);
/*!40000 ALTER TABLE `iteration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `historyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_7lw87gps8fle6mvawhxdcyi3k` (`historyId`),
  CONSTRAINT `FK_7lw87gps8fle6mvawhxdcyi3k` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES (1,'Task Manager',1),(2,'Space Crafter',2),(3,'My Blogger',3);
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pastinformation`
--

DROP TABLE IF EXISTS `pastinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pastinformation` (
  `infoId` bigint(20) NOT NULL AUTO_INCREMENT,
  `whenCreated` datetime DEFAULT NULL,
  `changeMessage` longtext,
  `authorId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`infoId`),
  KEY `FK_d29xnaewbfycbnx2wl2rb049m` (`authorId`),
  CONSTRAINT `FK_d29xnaewbfycbnx2wl2rb049m` FOREIGN KEY (`authorId`) REFERENCES `author` (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pastinformation`
--

LOCK TABLES `pastinformation` WRITE;
/*!40000 ALTER TABLE `pastinformation` DISABLE KEYS */;
INSERT INTO `pastinformation` VALUES (1,'2018-12-22 21:08:44','first change',10),(2,'2018-12-22 21:08:44','first change',10),(3,'2018-12-22 21:08:44','first change',10),(4,'2018-12-22 21:08:44','first change',10),(5,'2018-12-22 21:08:44','first change',10),(6,'2018-12-22 21:08:44','first change',10),(7,'2018-12-22 21:08:44','first change',10),(8,'2018-12-22 21:08:44','first change',10),(9,'2018-12-22 21:08:44','first change',10),(10,'2018-12-22 21:08:44','first change',10),(11,'2018-12-22 21:08:44','first change',10),(12,'2018-12-22 21:08:44','first change',10),(13,'2018-12-22 21:08:44','first change',10),(14,'2018-12-22 21:08:44','first change',10),(15,'2018-12-22 21:08:44','first change',10),(16,'2018-12-22 21:08:44','first change',10),(17,'2018-12-22 21:08:44','first change',10),(18,'2018-12-22 21:08:44','first change',10),(19,'2018-12-22 21:08:44','first change',10),(20,'2018-12-22 21:08:44','first change',10),(21,'2018-12-22 21:08:44','first change',10),(22,'2018-12-22 21:08:44','first change',10),(23,'2018-12-22 21:08:44','first change',10),(24,'2018-12-22 21:08:44','first change',10),(25,'2018-12-22 21:08:44','first change',10),(26,'2018-12-22 21:08:44','first change',10),(27,'2018-12-22 21:08:44','first change',10),(28,'2018-12-22 21:08:44','first change',10),(29,'2018-12-22 21:08:44','first change',10),(30,'2018-12-22 21:08:44','first change',10),(31,'2018-12-22 21:08:44','first change',10),(32,'2018-12-22 21:08:44','first change',10),(33,'2018-12-22 21:17:26','New Project created with name Test project\n Description test description',1),(34,'2018-12-22 21:17:52','New Project created with name Test project 2\n Description project description',1),(35,'2018-12-22 21:19:28','New Project created with name Daily Task Manager\n Description Agile project',1),(36,'2018-12-22 21:20:22','New iteration created with name 1001: Iteration 0  Description 1st Iteration',1),(37,'2018-12-22 21:20:56','New iteration created with name 1002: Iteration 1  Description ',1),(38,'2018-12-22 21:21:33','New iteration created with name 1003: Iteration 3 Description ',1),(39,'2018-12-22 21:22:41','Name My Project work and backup Organization\n Description test description',1),(40,'2018-12-22 21:25:28','New iteration created with name 1001: Organize existing project and backup and upgrade plan Description ',1),(41,'2018-12-22 21:27:28','New user story created with name Step by step guide how to check out task manager project and make it live Task Description 1. Add details on how to check out and make a project live\r\n2. How to create the data base and tables (config xml file change and creating test setup)\r\n',1),(42,'2018-12-22 21:29:24','New user story created with name Make a setup to view end to end flow in task manager project Task Description 1. Create a basic project/ iteration/ task / bugs/ user stories/ others\r\n2. Take a simple use case and create a case study with details',1),(43,'2018-12-22 21:29:37','User story name Make a setup to view end to end flow in task manager project Description 1. Create a basic project/ iteration/ task / bugs/ user stories/ others\r\n2. Take a simple use case and create a case study with details',1),(44,'2018-12-22 21:32:13','New user story created with name How to handle upgrade of task manager project (Hibernate + WEB) Task Description Once we will have the data base populated it will be difficult to loose all the data and create it from stretch again.. hence on any improvement we need to upgrade from previous data base without data lose\r\n\r\nCan try with Liquibase or any other way',1),(45,'2018-12-22 21:33:29','New user story created with name Rework on my project GUI (to angular with web services and spring boot) Task Description Check with Mama ... if he is going to do the angular part I can work on Spring Boot with rest API and can provide the APIs....\r\n\r\n',1),(46,'2018-12-22 21:33:59','New user story created with name Regular backup of data base Task Description ',1),(47,'2018-12-22 21:35:47','Name Self Learning and Training\n Description 1. Self learning of technology\r\n2. Giving session\r\n3. Prepare for higher learning or project change\r\n4. Check with Lakshmi on any organizational activity',1),(48,'2018-12-22 21:36:55','User story name Rework on my project GUI (to angular with web services and spring boot) Description Check with Mama ... if he is going to do the angular part I can work on Spring Boot with rest API and can provide the APIs....\r\n\r\n',1),(49,'2018-12-22 21:37:09','User story name How to handle upgrade of task manager project (Hibernate + WEB) Description Once we will have the data base populated it will be difficult to loose all the data and create it from stretch again.. hence on any improvement we need to upgrade from previous data base without data lose\r\n\r\nCan try with Liquibase or any other way',1),(50,'2018-12-22 21:37:31','User story name Make a setup to view end to end flow in task manager project Description 1. Create a basic project/ iteration/ task / bugs/ user stories/ others\r\n2. Take a simple use case and create a case study with details',1),(51,'2018-12-22 21:37:49','User story name Rework on my project GUI (to angular with web services and spring boot) Description Check with Mama ... if he is going to do the angular part I can work on Spring Boot with rest API and can provide the APIs....\r\n\r\n',1),(52,'2018-12-22 21:39:15','New user story created with name Upgrade on my android app\'s (Database upgrade) Task Description ',1),(53,'2018-12-22 21:45:07','New user story created with name General ISSUE Task Description Captured all issues in general here',1),(54,'2018-12-22 21:46:32','Bug Name : Hibernate session factory should be created at init time  \n Bug Description: Due to hibernate session factory is created at 1st action it takes some time to start',1),(55,'2018-12-22 21:47:22','Bug Name : Testing of the written business logic \n Bug Description: No test cases available for the existing business logic now',1),(56,'2018-12-22 21:47:47','User story name Upgrade on my android app\'s (Database upgrade) Description ',1),(57,'2018-12-22 21:49:53','New user story created with name <b>New IDEAS</b> Check and discuss on new ideas Task Description Talk and discuss on new ideas\r\n\r\n1. Mobile app\r\n2. Training session\r\n3. Web development\r\n4. Learning and implementation\r\n5. Communication improvement',1),(58,'2018-12-22 21:50:32','User story name Upgrade on android app (Database upgrade) Description ',1),(59,'2018-12-22 21:50:50','User story name Upgrade on <b>android app </b> (Database upgrade) Description ',1),(60,'2018-12-22 21:51:18','User story deleted with Name Upgrade on <b>android app </b> (Database upgrade) Description :',1),(61,'2018-12-22 21:52:35','Bug Name : Ask for confirmation while deleting items \n Bug Description: Find all delete action and make sure you ask for an pop up if user really want to delete this or wrongly clicked on the button',1),(62,'2018-12-22 21:53:23','Bug Name : View over all task estimates for the user stories \n Bug Description: The over all report is really handy to have a better picture',1),(63,'2018-12-22 21:56:35','Bug Name : Navigation links to move across pages \n Bug Description: Now its very difficult to move from one project or section to another project or section. Need to find a common section (could be top heading where user can navigate from across project or section)',1),(64,'2018-12-22 21:56:58','User story name General ISSUE Description Captured all issues in general here',1),(65,'2018-12-22 21:59:31','New user story created with name User can customize the 1st Page Task Description can be an iteration page/user/project/report',1),(66,'2018-12-22 22:00:36','New user story created with name Support for attachment and image Task Description for us/task/project',1),(67,'2018-12-22 22:01:25','New iteration created with name 1001: Iteration 0 (Level 1 planning) Description 1st Iteration',1),(68,'2018-12-22 22:02:12','New user story created with name Sorting based on table column (all pages) Task Description ',1),(69,'2018-12-22 22:02:25','New user story created with name Search  Task Description ',1),(70,'2018-12-22 22:03:04','User story name Search (Basic) Based on view type Description ',1),(71,'2018-12-22 22:03:36','New user story created with name Advance search: across project Task Description ',1),(72,'2018-12-22 22:04:38','New user story created with name Search by ID (project/us/task)[exact match/partial match) Task Description ',1),(73,'2018-12-22 22:05:14','New user story created with name Support for duplicate action (us/task) Task Description ',1),(74,'2018-12-22 22:05:53','User story name User can customize the 1st Page Description can be an iteration page/user/project/report',1),(75,'2018-12-22 22:06:09','User story name Support for attachment and image Description for us/task/project',1),(76,'2018-12-22 22:06:23','User story name Sorting based on table column (all pages) Description ',1),(77,'2018-12-22 22:06:44','User story name Search (Basic) Based on view type Description ',1),(78,'2018-12-22 22:07:06','User story name Support for duplicate action (us/task) Description ',1),(79,'2018-12-22 22:07:19','User story name Advance search: across project Description ',1),(80,'2018-12-22 22:07:33','User story name Search by ID (project/us/task)[exact match/partial match) Description ',1),(81,'2018-12-22 22:09:12','New user story created with name Exception should not be visible to client Task Description ',1),(82,'2018-12-22 22:25:38','New user story created with name Code refactoring (Different aspects) Task Description Different aspects of refactoring are there to solve',1),(83,'2018-12-22 22:26:43','New user story created with name Multi select and edit  Task Description Ex: multi select and move to un scheduled\r\nmulti select change author\r\nchange iteration\r\nchange priority. ... etc',1),(84,'2018-12-22 22:29:13','User story name Regular backup of data base (Every Day when there is a Change) Description ',1),(85,'2018-12-22 22:30:22','New iteration created with name 1002: Iteration 1 (Detail planning and POC) Description ',1),(86,'2018-12-22 22:37:36','User story name Step by step guide how to check out task manager project and make it live Description 1. Add details on how to check out and make a project live\r\n2. How to create the data base and tables (config xml file change and creating test setup)\r\n',1),(87,'2018-12-22 22:37:49','User story name How to handle upgrade of task manager project (Hibernate + WEB) Description Once we will have the data base populated it will be difficult to loose all the data and create it from stretch again.. hence on any improvement we need to upgrade from previous data base without data lose\r\n\r\nCan try with Liquibase or any other way',1),(88,'2018-12-23 14:42:51','New TASK created with name Steps required for my sql data base Task Description 1. Open my sql work bench\r\n2. Left side Management menu go to \"Data Export\"\r\n3. Under object selection select schema and select other object to export \r\n4. Under export options select Export to self contained file\r\n5. under that enable both the check boxes\r\n    5.1 Create dump in single file\r\n    5.2 Include create schema\r\n6. Start export\r\nNOW DATA BASE UPDATE SHOULD BE PASSING\r\n7. Take the dump from the created location and save under hard disk\r\n8. Also make sure to take another copy of the project directly linked to that data base (or if no change than just add a note in the same folder of hard disk explaining which web server can be used for this\r\n',1),(89,'2018-12-23 16:30:36','New iteration created with name Unscheduled Description ',1),(90,'2018-12-23 16:32:24','New iteration created with name nnn Description mmm',1),(91,'2018-12-23 16:32:31','Iteration deleted. Name nnn Description :mmm',1),(92,'2018-12-23 16:39:16','New iteration created with name strttt Description ',1),(93,'2018-12-23 16:39:24','Iteration deleted. Name strttt Description :',1),(94,'2018-12-23 16:55:40','New user story created with name Select Daily activity from Template Task Description ',1),(95,'2018-12-23 17:02:25','New user story created with name Change the daily image icons Task Description ',1),(96,'2018-12-23 17:03:12','New user story created with name Check list support in daily app Task Description ',1),(97,'2018-12-23 17:03:26','New user story created with name  Task Description ',1),(98,'2018-12-23 17:03:38','User story deleted with Name  Description :',1),(99,'2018-12-23 17:04:37','New user story created with name Room data base upgrade should preserve the settings Task Description ',1),(100,'2018-12-23 17:04:52','User story name Change the daily image icons Description ',1),(101,'2018-12-23 17:05:06','User story name Check list support in daily app Description ',1),(102,'2018-12-23 17:09:31','New user story created with name Customize each items for daily views Task Description ',1),(103,'2018-12-23 17:10:08','New user story created with name Customize each items on template items Task Description ',1),(104,'2018-12-23 17:10:21','User story name Customize each items for daily views Description ',1),(105,'2018-12-23 17:13:15','User story name Select Daily activity from Template Description ',1),(106,'2018-12-23 17:13:40','User story name Select Daily activity from Template Description ',1),(107,'2018-12-23 17:15:36','New user story created with name Saving list for user Task Description ',1),(108,'2018-12-23 17:15:53','User story name Saving list for user Description ',1),(109,'2018-12-23 18:25:27','User story name Exception should not be visible to client Description Check if there is an error page defined if not we need to define an error page for all pages',1),(110,'2018-12-23 18:46:01','New user story created with name Reminders Task Description Reminder page',1),(111,'2018-12-23 18:46:15','User story name Reminders Description Reminder page',1),(112,'2018-12-23 18:46:54','User story name Room data base upgrade should preserve the settings Description \r\nRefer how to migrate: https://developer.android.com/training/data-storage/room/migrating-db-versions',1),(113,'2018-12-23 19:23:15','Name My Project work and backup Organization\n Description test description',1),(114,'2018-12-23 19:52:44','New iteration created with name Bugs 1: 1st 10 defects Description ',1),(115,'2018-12-23 19:53:56','New user story created with name All Bugs Task Description ',1),(116,'2018-12-23 19:55:28','Bug Name : While removing the template task app is getting closed \n Bug Description: ',1),(117,'2018-12-23 19:58:42','Bug Name : While removing the template task app is getting closed \n Bug Description: 12-23 19:49:20.579 7745-7745/? E/AndroidRuntime: FATAL EXCEPTION: main\r\n    Process: com.lotusbin.myapplication, PID: 7745\r\n    java.lang.NullPointerException: Attempt to invoke virtual method \'android.content.res.Resources android.content.Context.getResources()\' on a null object reference\r\n        at android.widget.Toast.<init>(Toast.java:101)\r\n        at android.widget.Toast.makeText(Toast.java:258)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:49)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:46)\r\n        at android.arch.lifecycle.LiveData.considerNotify(LiveData.java:109)\r\n        at android.arch.lifecycle.LiveData.dispatchingValue(LiveData.java:126)\r\n        at android.arch.lifecycle.LiveData.setValue(LiveData.java:282)\r\n        at android.arch.lifecycle.LiveData$1.run(LiveData.java:87)\r\n        at android.os.Handler.handleCallback(Handler.java:739)\r\n        at android.os.Handler.dispatchMessage(Handler.java:95)\r\n        at android.os.Looper.loop(Looper.java:135)',1),(118,'2018-12-23 20:01:27','Bug Name : While removing the template task app is getting closed \n Bug Description: 12-23 19:49:20.579 7745-7745/? E/AndroidRuntime: FATAL EXCEPTION: main\r\n    Process: com.lotusbin.myapplication, PID: 7745\r\n    java.lang.NullPointerException: Attempt to invoke virtual method \'android.content.res.Resources android.content.Context.getResources()\' on a null object reference\r\n        at android.widget.Toast.<init>(Toast.java:101)\r\n        at android.widget.Toast.makeText(Toast.java:258)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:49)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:46)\r\n        at android.arch.lifecycle.LiveData.considerNotify(LiveData.java:109)\r\n        at android.arch.lifecycle.LiveData.dispatchingValue(LiveData.java:126)\r\n        at android.arch.lifecycle.LiveData.setValue(LiveData.java:282)\r\n        at android.arch.lifecycle.LiveData$1.run(LiveData.java:87)\r\n        at android.os.Handler.handleCallback(Handler.java:739)\r\n        at android.os.Handler.dispatchMessage(Handler.java:95)\r\n        at android.os.Looper.loop(Looper.java:135)',1),(119,'2018-12-23 20:22:17','Bug Name : While removing the template task app is getting closed \n Bug Description: [Not able to reproduce the issue, But already got two times.. need to find the right steps to reproduce\r\n\r\n12-23 19:49:20.579 7745-7745/? E/AndroidRuntime: FATAL EXCEPTION: main\r\n    Process: com.lotusbin.myapplication, PID: 7745\r\n    java.lang.NullPointerException: Attempt to invoke virtual method \'android.content.res.Resources android.content.Context.getResources()\' on a null object reference\r\n        at android.widget.Toast.<init>(Toast.java:101)\r\n        at android.widget.Toast.makeText(Toast.java:258)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:49)\r\n        at com.lotusbin.myapplication.task.TaskTempletViewFragment$1.onChanged(TaskTempletViewFragment.java:46)\r\n        at android.arch.lifecycle.LiveData.considerNotify(LiveData.java:109)\r\n        at android.arch.lifecycle.LiveData.dispatchingValue(LiveData.java:126)\r\n        at android.arch.lifecycle.LiveData.setValue(LiveData.java:282)\r\n        at android.arch.lifecycle.LiveData$1.run(LiveData.java:87)\r\n        at android.os.Handler.handleCallback(Handler.java:739)\r\n        at android.os.Handler.dispatchMessage(Handler.java:95)\r\n        at android.os.Looper.loop(Looper.java:135)',1),(120,'2018-12-23 20:36:22','New user story created with name Navigating from different pages is really difficult and also the page is not highlighted properly Task Description Already there is another US for displaying the navigation... need to have more as part of this user story to display or organize page nicely',1),(121,'2018-12-23 20:36:36','User story name Navigating from different pages is really difficult and also the page is not highlighted properly Description Already there is another US for displaying the navigation... need to have more as part of this user story to display or organize page nicely',1),(122,'2018-12-27 22:00:09','User story name Select Daily activity from Template Description ',1),(123,'2018-12-27 22:01:35','New iteration created with name 1003: Iteration 3 Description ',1),(124,'2018-12-27 22:05:06','User story name Select Daily activity from Template Description ',1),(125,'2018-12-27 22:06:18','New TASK created with name Support check box at template page Task Description ',1),(127,'2018-12-27 22:07:42','New TASK created with name On selecting template task and clicking on any action button capture the selected items Task Description ',1),(128,'2018-12-27 22:09:31','New TASK created with name Ask for a confirmation if you want to add the selected X number of tasks to xx/yy/zzz date or not Task Description 1. On confirm add and on cancel not add\r\n2. Already added items should not be added (identified by name)\r\n3. Can not add items to old date (max only previous day allowed (or show an warning that you are adding to a previous date as a Toast',1),(129,'2018-12-27 22:10:01','New TASK created with name Add selected items to the asked for date  Task Description ',1),(130,'2018-12-27 22:28:17','User story name Select Daily activity from Template Description https://stackoverflow.com/questions/36369913/how-to-implement-multi-select-in-recyclerview',1),(131,'2018-12-28 19:07:44','Task Deleted with Name Support check box at template page Description :',1),(132,'2018-12-28 19:07:56','Task Deleted with Name Ask for a confirmation if you want to add the selected X number of tasks to xx/yy/zzz date or not Description :1. On confirm add and on cancel not add\r\n2. Already added items should not be added (identified by name)\r\n3. Can not add items to old date (max only previous day allowed (or show an warning that you are adding to a previous date as a Toast',1),(133,'2018-12-28 19:08:13','New TASK updated with name Add selected items to the asked for date  Task Description ',1),(134,'2018-12-28 19:08:42','New TASK updated with name On selecting template task and clicking on any action button capture the selected items Task Description ',1),(135,'2018-12-28 19:09:34','New TASK created with name Select daily items for a given date (as per the date on the daily items) Task Description ',1),(136,'2018-12-28 19:10:13','New TASK created with name Edit daily item title or description or priority Task Description ',1),(137,'2018-12-28 19:11:00','User story name Change the daily image icons Description ',1),(138,'2018-12-28 19:12:59','User story name Check list support in daily app Description A separate page to display the check list items\r\n\r\nObjective: Suppose you want to have a check list template for travel/ interview/exam or any generic templates... from there you can create a specific check list (general or for a specific topic) and can edit each items status and addd/update/delete items from check list',1),(139,'2018-12-28 19:16:30','New user story created with name Daily Task view item (actions) Task Description ',1),(140,'2018-12-28 19:16:53','New iteration created with name 1003: Iteration 3 (27th to 31st Dec) Description ',1),(141,'2018-12-28 19:17:23','New iteration created with name 1002: Iteration 1 (Detail planning and POC) [24th to 29th Dec 2018] Description ',1),(142,'2018-12-28 19:17:41','New iteration created with name 1001: Iteration 0 (Level 1 planning) [22 to 23 Dec 2018] Description 1st Iteration',1),(143,'2018-12-28 19:17:52','New iteration created with name 1003: Iteration 3 (27th to 31st Dec 2018) Description ',1),(144,'2018-12-28 19:18:19','New TASK updated with name Edit daily item title or description or priority Task Description ',1),(145,'2018-12-28 19:18:57','New TASK created with name Delete daily Item Task Description ',1),(146,'2018-12-28 19:24:52','New TASK created with name Right click menu for [Actions] Task Description ',1),(147,'2018-12-28 19:26:37','New TASK created with name Mark Complete/ Mark Pending (based on current status) Task Description If current status is pending show drop down option Mark Complete, If current status is complete Mark as pending',1),(148,'2018-12-28 19:29:22','New TASK created with name Don\'t display the ID as part of the title Task Description Currently ID is displayed as ([12]) before title should be removed\r\n',1),(149,'2018-12-28 19:30:03','New TASK created with name Grey out the completed task and move to the end of the list (customize compare) Task Description ',1),(150,'2018-12-28 19:33:59','New TASK created with name On click (select task for daily page from template go to template page with current date) Task Description ',1),(151,'2018-12-28 19:43:04','New TASK updated with name Select daily items for a given date (as per the date on the daily items) Task Description ',1),(152,'2018-12-28 19:43:18','User story name Daily Task view item (actions) Description ',1),(153,'2018-12-28 21:42:51','New user story created with name Template Task View items Task Description ',1),(154,'2018-12-28 21:43:05','New TASK created with name Edit action Task Description ',1),(155,'2018-12-28 22:21:11','New user story created with name Returning to daily view from other fragments should preserve the day Task Description ',1),(156,'2018-12-28 22:21:33','New user story created with name Returning to daily view from other Activity should preserve the day Task Description ',1),(157,'2018-12-28 23:47:46','New TASK created with name Preserve the date in string in parent activity and use that for finding the last selected date Task Description ',1),(158,'2018-12-28 23:48:02','New TASK updated with name Preserve the date in string in parent activity and use that for finding the last selected date Task Description ',1);
/*!40000 ALTER TABLE `pastinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project` (
  `projectId` bigint(20) NOT NULL AUTO_INCREMENT,
  `projectName` longtext,
  `projectDescription` longtext,
  `creationDate` datetime DEFAULT NULL,
  `authorId` bigint(20) DEFAULT NULL,
  `historyId` bigint(20) DEFAULT NULL,
  `id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`projectId`),
  KEY `FK_t19h0qxqnchyie7tiwoinetcx` (`authorId`),
  KEY `FK_smp7cv15vfmbaxb5qsd5f24as` (`historyId`),
  KEY `FK_nmetmdrakmrud9hho08avrr2g` (`id`),
  CONSTRAINT `FK_nmetmdrakmrud9hho08avrr2g` FOREIGN KEY (`id`) REFERENCES `organization` (`id`),
  CONSTRAINT `FK_smp7cv15vfmbaxb5qsd5f24as` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`),
  CONSTRAINT `FK_t19h0qxqnchyie7tiwoinetcx` FOREIGN KEY (`authorId`) REFERENCES `author` (`authorId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES (1,'Common Features','This project represents all common tasks accross all projects','2018-12-22 21:08:44',10,NULL,NULL),(2,'My Project work and backup Organization','test description','2018-12-22 21:17:26',1,36,1),(3,'Self Learning and Training','1. Self learning of technology\r\n2. Giving session\r\n3. Prepare for higher learning or project change\r\n4. Check with Lakshmi on any organizational activity','2018-12-22 21:17:52',1,37,1),(4,'Daily Task Manager','Agile project','2018-12-22 21:19:28',1,38,1);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task`
--

DROP TABLE IF EXISTS `task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task` (
  `taskId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `description` longtext,
  `taskEstimate` float DEFAULT NULL,
  `actual` float DEFAULT NULL,
  `remaining` float DEFAULT NULL,
  `creationTime` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `authorId` bigint(20) DEFAULT NULL,
  `userstoryId` bigint(20) DEFAULT NULL,
  `historyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`taskId`),
  KEY `FK_3m2ms0rfrl9il2kkow78q1yah` (`authorId`),
  KEY `FK_go8yx7np2kkt3fw3keieun7eo` (`userstoryId`),
  KEY `FK_sfrc7wnwlidmahntj7lu6trbk` (`historyId`),
  CONSTRAINT `FK_3m2ms0rfrl9il2kkow78q1yah` FOREIGN KEY (`authorId`) REFERENCES `author` (`authorId`),
  CONSTRAINT `FK_go8yx7np2kkt3fw3keieun7eo` FOREIGN KEY (`userstoryId`) REFERENCES `userstory` (`userstoryId`),
  CONSTRAINT `FK_sfrc7wnwlidmahntj7lu6trbk` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES (1,'Sample Task0','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,1,NULL),(2,'Sample Task1','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,2,NULL),(3,'Sample Task2','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,3,NULL),(4,'Sample Task3','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,4,NULL),(5,'Sample Task4','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,5,NULL),(6,'Sample Task5','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,6,NULL),(7,'Sample Task6','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,7,NULL),(8,'Sample Task7','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,8,NULL),(9,'Sample Task8','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,9,NULL),(10,'Sample Task9','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,10,NULL),(11,'Sample Task10','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,11,NULL),(12,'Sample Task11','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,12,NULL),(13,'Sample Task12','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,13,NULL),(14,'Sample Task13','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,14,NULL),(15,'Sample Task14','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,15,NULL),(16,'Sample Task15','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,16,NULL),(17,'Sample Task16','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,17,NULL),(18,'Sample Task17','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,18,NULL),(19,'Sample Task18','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,19,NULL),(20,'Sample Task19','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,20,NULL),(21,'Sample Task20','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,21,NULL),(22,'Sample Task21','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,22,NULL),(23,'Sample Task22','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,23,NULL),(24,'Sample Task23','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,24,NULL),(25,'Sample Task24','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,25,NULL),(26,'Sample Task25','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,26,NULL),(27,'Sample Task26','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,27,NULL),(28,'Sample Task27','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,28,NULL),(29,'Sample Task28','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,29,NULL),(30,'Sample Task29','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,30,NULL),(31,'Sample Task30','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,31,NULL),(32,'Sample Task31','Sample Description',0,0,0,'2018-12-22 21:08:44',NULL,0,0,10,32,NULL),(33,'Steps required for my sql data base','1. Open my sql work bench\r\n2. Left side Management menu go to \"Data Export\"\r\n3. Under object selection select schema and select other object to export \r\n4. Under export options select Export to self contained file\r\n5. under that enable both the check boxes\r\n    5.1 Create dump in single file\r\n    5.2 Include create schema\r\n6. Start export\r\nNOW DATA BASE UPDATE SHOULD BE PASSING\r\n7. Take the dump from the created location and save under hard disk\r\n8. Also make sure to take another copy of the project directly linked to that data base (or if no change than just add a note in the same folder of hard disk explaining which web server can be used for this\r\n',0.2,0,0,'2018-12-23 14:42:51',NULL,1,1,1,37,66),(35,'On selecting template task and clicking on any action button capture the selected items','',0.5,0,0,'2018-12-27 22:07:42',NULL,0,3,1,51,85),(37,'Add selected items to the asked for date ','',0.5,0,0,'2018-12-27 22:10:01',NULL,0,3,1,51,87),(38,'Select daily items for a given date (as per the date on the daily items)','',0.5,0,0,'2018-12-28 19:09:34',NULL,0,1,1,62,88),(39,'Edit daily item title or description or priority','',0.5,0,0,'2018-12-28 19:10:13',NULL,0,1,1,62,89),(40,'Delete daily Item','',0.2,0,0,'2018-12-28 19:18:57',NULL,3,1,1,62,91),(41,'Right click menu for [Actions]','',0.25,0,0,'2018-12-28 19:24:52',NULL,0,1,1,62,92),(42,'Mark Complete/ Mark Pending (based on current status)','If current status is pending show drop down option Mark Complete, If current status is complete Mark as pending',0.5,0,0,'2018-12-28 19:26:37',NULL,0,1,1,62,93),(43,'Don\'t display the ID as part of the title','Currently ID is displayed as ([12]) before title should be removed\r\n',0,0,0,'2018-12-28 19:29:22',NULL,0,1,1,62,94),(44,'Grey out the completed task and move to the end of the list (customize compare)','',0,0,0,'2018-12-28 19:30:03',NULL,0,1,1,62,95),(45,'On click (select task for daily page from template go to template page with current date)','',0.5,0,0,'2018-12-28 19:33:59',NULL,0,1,1,62,96),(46,'Edit action','',0,0,0,'2018-12-28 21:43:05',NULL,0,1,1,63,98),(47,'Preserve the date in string in parent activity and use that for finding the last selected date','',0.3,0,0,'2018-12-28 23:47:46',NULL,0,3,1,64,101);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstory`
--

DROP TABLE IF EXISTS `userstory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstory` (
  `userstoryId` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `description` longtext,
  `planEstimate` float DEFAULT NULL,
  `creationTime` datetime DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `priority` tinyint(4) DEFAULT NULL,
  `authorId` bigint(20) DEFAULT NULL,
  `iterationId` bigint(20) DEFAULT NULL,
  `historyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`userstoryId`),
  KEY `FK_jfbm7yriy7w8koefml67m3na1` (`authorId`),
  KEY `FK_gx9wpx9u1g1m2dt42y878ejap` (`iterationId`),
  KEY `FK_s7ndqkntd8les1b1va4bk4fl6` (`historyId`),
  CONSTRAINT `FK_gx9wpx9u1g1m2dt42y878ejap` FOREIGN KEY (`iterationId`) REFERENCES `iteration` (`iterationId`),
  CONSTRAINT `FK_jfbm7yriy7w8koefml67m3na1` FOREIGN KEY (`authorId`) REFERENCES `author` (`authorId`),
  CONSTRAINT `FK_s7ndqkntd8les1b1va4bk4fl6` FOREIGN KEY (`historyId`) REFERENCES `history` (`historyId`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstory`
--

LOCK TABLES `userstory` WRITE;
/*!40000 ALTER TABLE `userstory` DISABLE KEYS */;
INSERT INTO `userstory` VALUES (1,'Log message geneation and saving in a separate log file','log formate desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(2,'Formating of all modules per project (resuable components)','log formate desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(3,'Hibernate mapping like task : Connection Pooling for hibernate and bi directional mapping call optimization','log formate desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(4,'Hibernate adoption for annotations','log formate desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(5,'Unit testing (JUnit) for business logic + hibernate testing','log formate desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(6,'Unit Testing for JSP','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(7,'Performance Testing','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(8,'Tutorial Home page','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(9,'Tutorial Sub page','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(10,'Question entry page','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(11,'Question entry edit and update','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(12,'Maintaining the history of activities for all actions (by User, Project, Task, Iteration)','User Story is for Task management module',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(13,'Overall report using some analyisis from previous task completed/inprogress','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(14,'<b>Change log management for data base changes and incremental DB update</b>','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(15,'<b>Upgrade, Backup and restore of data base from old database</b>','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(16,'Finding of all topics and Question entry (50 per each topic)','1. One use story can contain 10 tasks (i.e. 10 Task x 5 Question/Task x 3 Topics2. List down all topics, 3. Testing of each question readbility and speelling, formating',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(17,'Error management for all pages in Web application and logging in separate log file','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(18,'Hosting of Website and finalization of steps','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(19,'Google optimization in HTML file header for search topics','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(20,'Blog entry and related questions to Q&A site','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(21,'Interview question Topic separation and entry 20 questions per each topic','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(22,'Performacne optimization of page and Enhance GUI implementation','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(23,'Test matrix preparation and standadization of best practices in project with Task/Role separation','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(24,'Separation of different modules and high level user stories and iterration separation','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(25,'Standardizing the documentation for better maintanability','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(26,'Increasing the Visitors for website and adverising in our and for our website','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(27,'Learning of new topics and adding them to blog with analysis','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(28,'Devleopment template preparation and knowledge sharing','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(29,'Java Script validation of all pages','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(30,'Better scripting and use of JQuert for enhanced GUI like calender','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(31,'Separate schema mgt for each project','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(32,'Pagination  (numbers of record per page)','Desc',3,'2018-12-22 21:08:44',NULL,1,10,1,NULL),(33,'Step by step guide how to check out task manager project and make it live','1. Add details on how to check out and make a project live\r\n2. How to create the data base and tables (config xml file change and creating test setup)\r\n',4,NULL,NULL,1,1,5,43),(34,'Make a setup to view end to end flow in task manager project','1. Create a basic project/ iteration/ task / bugs/ user stories/ others\r\n2. Take a simple use case and create a case study with details',2,NULL,NULL,4,1,5,44),(35,'How to handle upgrade of task manager project (Hibernate + WEB)','Once we will have the data base populated it will be difficult to loose all the data and create it from stretch again.. hence on any improvement we need to upgrade from previous data base without data lose\r\n\r\nCan try with Liquibase or any other way',2,NULL,NULL,1,1,5,45),(36,'Rework on my project GUI (to angular with web services and spring boot)','Check with Mama ... if he is going to do the angular part I can work on Spring Boot with rest API and can provide the APIs....\r\n\r\n',10,NULL,NULL,4,2,5,46),(37,'Regular backup of data base (Every Day when there is a Change)','',3,NULL,NULL,1,1,5,47),(39,'General ISSUE','Captured all issues in general here',30.123,NULL,NULL,7,1,5,49),(40,'<b>New IDEAS</b> Check and discuss on new ideas','Talk and discuss on new ideas\r\n\r\n1. Mobile app\r\n2. Training session\r\n3. Web development\r\n4. Learning and implementation\r\n5. Communication improvement',0,NULL,NULL,3,1,5,52),(41,'User can customize the 1st Page','can be an iteration page/user/project/report',5.12,NULL,NULL,5,1,5,56),(42,'Support for attachment and image','for us/task/project',0,NULL,NULL,5,1,5,57),(43,'Sorting based on table column (all pages)','',0,NULL,NULL,6,1,5,58),(44,'Search (Basic) Based on view type','',0,NULL,NULL,7,1,5,59),(45,'Advance search: across project','',0,NULL,NULL,7,1,5,60),(46,'Search by ID (project/us/task)[exact match/partial match)','',0,NULL,NULL,4,1,5,61),(47,'Support for duplicate action (us/task)','',0,NULL,NULL,7,1,5,62),(48,'Exception should not be visible to client','Check if there is an error page defined if not we need to define an error page for all pages',5.14,NULL,NULL,4,1,5,63),(49,'Code refactoring (Different aspects)','Different aspects of refactoring are there to solve',12.67,NULL,NULL,4,1,5,64),(50,'Multi select and edit ','Ex: multi select and move to un scheduled\r\nmulti select change author\r\nchange iteration\r\nchange priority. ... etc',0,NULL,NULL,4,1,5,65),(51,'Select Daily activity from Template','https://stackoverflow.com/questions/36369913/how-to-implement-multi-select-in-recyclerview',2,NULL,NULL,1,1,4,70),(52,'Change the daily image icons','',1,NULL,NULL,7,1,6,71),(53,'Check list support in daily app','A separate page to display the check list items\r\n\r\nObjective: Suppose you want to have a check list template for travel/ interview/exam or any generic templates... from there you can create a specific check list (general or for a specific topic) and can edit each items status and addd/update/delete items from check list',10,NULL,NULL,4,1,6,72),(55,'Room data base upgrade should preserve the settings','\r\nRefer how to migrate: https://developer.android.com/training/data-storage/room/migrating-db-versions',5.14,NULL,NULL,1,1,6,74),(56,'Customize each items for daily views','',1,NULL,NULL,3,1,6,75),(57,'Customize each items on template items','',3.14,NULL,NULL,4,1,6,76),(58,'Saving list for user','',1,NULL,NULL,2,1,6,77),(59,'Reminders','Reminder page',0,NULL,NULL,2,1,6,78),(60,'All Bugs','',1,NULL,NULL,0,1,9,80),(61,'Navigating from different pages is really difficult and also the page is not highlighted properly','Already there is another US for displaying the navigation... need to have more as part of this user story to display or organize page nicely',5.14,NULL,NULL,5,1,5,82),(62,'Daily Task view item (actions)','',3,NULL,NULL,0,1,4,90),(63,'Template Task View items','',5,NULL,NULL,4,1,4,97),(64,'Returning to daily view from other fragments should preserve the day','',0,NULL,NULL,0,1,4,99),(65,'Returning to daily view from other Activity should preserve the day','',3,NULL,NULL,0,1,4,100);
/*!40000 ALTER TABLE `userstory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'task_manager'
--

--
-- Dumping routines for database 'task_manager'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-29 10:21:49
