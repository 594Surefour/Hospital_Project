-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: localhost    Database: yygh_hosp
-- ------------------------------------------------------
-- Server version	5.7.35-log

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
-- Table structure for table `hospital_set`
--

DROP TABLE IF EXISTS `hospital_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_set` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `hosname` varchar(100) DEFAULT NULL COMMENT '医院名称',
  `hoscode` varchar(30) DEFAULT NULL COMMENT '医院编号',
  `api_url` varchar(100) DEFAULT NULL COMMENT 'api基础路径',
  `sign_key` varchar(50) DEFAULT NULL COMMENT '签名秘钥',
  `contacts_name` varchar(20) DEFAULT NULL COMMENT '联系人',
  `contacts_phone` varchar(11) DEFAULT NULL COMMENT '联系人手机',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_hoscode` (`hoscode`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='医院设置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_set`
--

LOCK TABLES `hospital_set` WRITE;
/*!40000 ALTER TABLE `hospital_set` DISABLE KEYS */;
INSERT INTO `hospital_set` VALUES (1,'北京协和医院','123456789','http://localhost:8201','ba27058f8dcbf42c1523b4b7881a1c07','不知道叫什么','15115447254',1,'2021-08-20 08:07:43','2021-08-24 07:55:08',0),(3,'陆丰市人民医院','123456222','http://localhost:8888',NULL,'不知道叫什么','15477785658',1,'2021-08-21 14:58:09','2021-08-22 07:15:08',0),(4,'上海人民医院','123456666','http://localhost:8555',NULL,'不知道叫什么','18554456484',1,'2021-08-21 14:58:46','2021-08-22 07:15:15',0),(5,'中山协和医院','123546486','http://localhost:8844',NULL,'不知道叫什么','15477785658',1,'2021-08-21 14:59:14','2021-08-22 07:15:10',0),(6,'东海高级医院','788888888','http://jiaxianniubi.com','a100b98afd6afa687c760f6f6af5ef5f','张天纯','14744684861',1,'2021-08-22 08:57:39','2021-08-22 08:57:39',0),(7,'1111','111','111','ba27058f8dcbf42c1523b4b6629a1c07','11','11',1,'2021-08-22 08:58:53','2021-08-22 08:58:53',0),(8,'11353','353','3543','42f9d93d44e46f44a8c451ca0ffb3693','5345','5435',1,'2021-08-22 08:59:49','2021-08-22 08:59:49',0),(9,'535433','53453453','543543','86077eb5c6b4963c73d4320f9d3c96ba','5435345','3453534',1,'2021-08-22 09:04:25','2021-08-22 09:04:25',0),(10,'0000','00','00','458616ff6386801c36c9e57e75061d4a','00','00',1,'2021-08-22 10:13:57','2021-08-22 10:13:57',0);
/*!40000 ALTER TABLE `hospital_set` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-08 16:00:22
