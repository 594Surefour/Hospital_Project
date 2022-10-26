-- MySQL dump 10.13  Distrib 5.7.35, for Win64 (x86_64)
--
-- Host: localhost    Database: yygh_order
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
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `user_id` bigint(20) DEFAULT NULL,
  `out_trade_no` varchar(300) DEFAULT NULL COMMENT '订单交易号',
  `hoscode` varchar(30) DEFAULT NULL COMMENT '医院编号',
  `hosname` varchar(100) DEFAULT NULL COMMENT '医院名称',
  `depcode` varchar(30) DEFAULT NULL COMMENT '科室编号',
  `depname` varchar(20) DEFAULT NULL COMMENT '科室名称',
  `title` varchar(20) DEFAULT NULL COMMENT '医生职称',
  `hos_schedule_id` varchar(50) DEFAULT NULL COMMENT '排班编号（医院自己的排班主键）',
  `reserve_date` date DEFAULT NULL COMMENT '安排日期',
  `reserve_time` tinyint(3) DEFAULT '0' COMMENT '安排时间（0：上午 1：下午）',
  `patient_id` bigint(20) DEFAULT NULL COMMENT '就诊人id',
  `patient_name` varchar(20) DEFAULT NULL COMMENT '就诊人名称',
  `patient_phone` varchar(11) DEFAULT NULL COMMENT '就诊人手机',
  `hos_record_id` varchar(30) DEFAULT NULL COMMENT '预约记录唯一标识（医院预约记录主键）',
  `number` int(11) DEFAULT NULL COMMENT '预约号序',
  `fetch_time` varchar(50) DEFAULT NULL COMMENT '建议取号时间',
  `fetch_address` varchar(255) DEFAULT NULL COMMENT '取号地点',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '医事服务费',
  `quit_time` datetime DEFAULT NULL COMMENT '退号时间',
  `order_status` tinyint(3) DEFAULT NULL COMMENT '订单状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_out_trade_no` (`out_trade_no`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_hoscode` (`hoscode`),
  KEY `idx_hos_schedule_id` (`hos_schedule_id`),
  KEY `idx_hos_record_id` (`hos_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` VALUES (1,6,'163093146694440','123456789','北京协和医院','200040878','多发性硬化专科门诊','医师','6134ba588f067176ff1610dd','2021-09-07',0,1,'张晓琪','15119443172',NULL,NULL,NULL,NULL,100,'2021-09-09 15:30:00',1,'2021-09-06 12:31:07','2021-09-07 13:07:21',0),(2,6,'163093228100363','123456789','北京协和医院','200040878','多发性硬化专科门诊','医师','6134ba588f067176ff1610dd','2021-09-10',0,1,'张晓琪','15119443172',NULL,NULL,NULL,NULL,100,'2021-09-09 15:30:00',1,'2021-09-06 12:44:41','2021-09-07 10:57:17',0),(3,6,'163093247777866','123456789','北京协和医院','200040878','多发性硬化专科门诊','医师','6134ba588f067176ff1610dd','2021-09-10',0,1,'张晓琪','15119443172','2',12,'2021-09-1009:00前','一层114窗口',100,'2021-09-09 15:30:00',-1,'2021-09-06 12:47:58','2021-09-07 10:57:19',0),(4,6,'163093344550268','123456789','北京协和医院','200040878','多发性硬化专科门诊','医师','6134ba588f067176ff1610dd','2021-09-10',0,1,'张晓琪','15119443172','3',13,'2021-09-1009:00前','一层114窗口',100,'2021-09-09 15:30:00',0,'2021-09-06 13:04:05','2021-09-07 10:57:22',0),(5,6,'163101416937526','123456789','北京协和医院','200040878','多发性硬化专科门诊','医师','6134ba588f067176ff1610dd','2021-09-10',0,1,'张晓琪','15119443172','4',14,'2021-09-1009:00前','一层114窗口',100,'2021-09-09 15:30:00',-1,'2021-09-07 11:29:29','2021-09-07 11:29:31',0);
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_trade_no` varchar(30) DEFAULT NULL COMMENT '对外业务编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单id',
  `payment_type` tinyint(1) DEFAULT NULL COMMENT '支付类型（微信 支付宝）',
  `trade_no` varchar(50) DEFAULT NULL COMMENT '交易编号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '支付金额',
  `subject` varchar(200) DEFAULT NULL COMMENT '交易内容',
  `payment_status` tinyint(3) DEFAULT NULL COMMENT '支付状态',
  `callback_time` datetime DEFAULT NULL COMMENT '回调时间',
  `callback_content` varchar(1000) DEFAULT NULL COMMENT '回调信息',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  KEY `idx_out_trade_no` (`out_trade_no`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='支付信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES (1,'163093146694440',1,2,'4200001155202109062083631023',100.00,'2021-09-10|北京协和医院|多发性硬化专科门诊|医师',2,'2021-09-06 23:23:36','{transaction_id=4200001155202109062083631023, nonce_str=orOItqyT6FcfJppn, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuKUg65XbyA0sTnA06sbfOyI, sign=A6F51BBD27229AEED28BCFE9491D5BE7, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=163093146694440, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20210906232151, is_subscribe=N, return_code=SUCCESS}','2021-09-06 14:48:27','2021-09-06 14:48:26',0),(2,'163101416937526',5,2,'4200001154202109076528786758',100.00,'2021-09-10|北京协和医院|多发性硬化专科门诊|医师',2,'2021-09-07 19:37:02','{transaction_id=4200001154202109076528786758, nonce_str=FQaUPXTEWBKMyM3b, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuKUg65XbyA0sTnA06sbfOyI, sign=292B2BA592A3EAA092ABC29191E69465, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=163101416937526, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20210907193700, is_subscribe=N, return_code=SUCCESS}','2021-09-07 11:36:45','2021-09-07 11:36:44',0),(3,'163093228100363',2,2,'4200001202202109072760822753',100.00,'2021-09-10|北京协和医院|多发性硬化专科门诊|医师',2,'2021-09-07 20:19:39','{transaction_id=4200001202202109072760822753, nonce_str=w1VbgH2oS1hg3Se3, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuKUg65XbyA0sTnA06sbfOyI, sign=300932ECCE05A4DC705782F7874408E4, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=163093228100363, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20210907201932, is_subscribe=N, return_code=SUCCESS}','2021-09-07 12:19:21','2021-09-07 12:19:20',0),(4,'163093247777866',3,2,'4200001175202109073484887682',100.00,'2021-09-10|北京协和医院|多发性硬化专科门诊|医师',2,'2021-09-07 23:37:48','{transaction_id=4200001175202109073484887682, nonce_str=bQrFwGXy0tF0lv99, trade_state=SUCCESS, bank_type=OTHERS, openid=oHwsHuKUg65XbyA0sTnA06sbfOyI, sign=92C74366BD664740663399B98A5EC454, return_msg=OK, fee_type=CNY, mch_id=1558950191, cash_fee=1, out_trade_no=163093247777866, cash_fee_type=CNY, appid=wx74862e0dfcf69954, total_fee=1, trade_state_desc=支付成功, trade_type=NATIVE, result_code=SUCCESS, attach=, time_end=20210907233740, is_subscribe=N, return_code=SUCCESS}','2021-09-07 15:37:25','2021-09-07 15:37:25',0),(5,'163093344550268',4,2,NULL,100.00,'2021-09-10|北京协和医院|多发性硬化专科门诊|医师',1,NULL,NULL,'2021-09-08 06:31:04','2021-09-08 06:31:03',0);
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_info`
--

DROP TABLE IF EXISTS `refund_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `refund_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `out_trade_no` varchar(50) DEFAULT NULL COMMENT '对外业务编号',
  `order_id` bigint(20) DEFAULT NULL COMMENT '订单编号',
  `payment_type` tinyint(3) DEFAULT NULL COMMENT '支付类型（微信 支付宝）',
  `trade_no` varchar(50) DEFAULT NULL COMMENT '交易编号',
  `total_amount` decimal(10,2) DEFAULT NULL COMMENT '退款金额',
  `subject` varchar(200) DEFAULT NULL COMMENT '交易内容',
  `refund_status` tinyint(3) DEFAULT NULL COMMENT '退款状态',
  `callback_content` varchar(1000) DEFAULT NULL COMMENT '回调信息',
  `callback_time` datetime DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(3) NOT NULL DEFAULT '0' COMMENT '逻辑删除(1:已删除，0:未删除)',
  PRIMARY KEY (`id`),
  KEY `idx_out_trade_no` (`out_trade_no`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='退款信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_info`
--

LOCK TABLES `refund_info` WRITE;
/*!40000 ALTER TABLE `refund_info` DISABLE KEYS */;
INSERT INTO `refund_info` VALUES (1,'163101416937526',5,2,'50301009472021090712254050953',100.00,'2021-09-10|北京协和医院|多发性硬化专科门诊|医师',2,'{\"transaction_id\":\"4200001154202109076528786758\",\"nonce_str\":\"Polb4uCKE4JQvVgK\",\"out_refund_no\":\"tk163101416937526\",\"sign\":\"A876F8DA5BA3FEE58C7240CB492C7C36\",\"return_msg\":\"OK\",\"mch_id\":\"1558950191\",\"refund_id\":\"50301009472021090712254050953\",\"cash_fee\":\"1\",\"out_trade_no\":\"163101416937526\",\"coupon_refund_fee\":\"0\",\"refund_channel\":\"\",\"appid\":\"wx74862e0dfcf69954\",\"refund_fee\":\"1\",\"total_fee\":\"1\",\"result_code\":\"SUCCESS\",\"coupon_refund_count\":\"0\",\"cash_refund_fee\":\"1\",\"return_code\":\"SUCCESS\"}','2021-09-07 19:40:07','2021-09-07 11:40:06','2021-09-07 11:40:07',0),(2,'163093247777866',3,2,'50301509282021090712250725279',100.00,'2021-09-10|北京协和医院|多发性硬化专科门诊|医师',2,'{\"transaction_id\":\"4200001175202109073484887682\",\"nonce_str\":\"wjFo7yECKHDQbWJa\",\"out_refund_no\":\"tk163093247777866\",\"sign\":\"8E13060E7ED6C598051A7EAAFB38AA8F\",\"return_msg\":\"OK\",\"mch_id\":\"1558950191\",\"refund_id\":\"50301509282021090712250725279\",\"cash_fee\":\"1\",\"out_trade_no\":\"163093247777866\",\"coupon_refund_fee\":\"0\",\"refund_channel\":\"\",\"appid\":\"wx74862e0dfcf69954\",\"refund_fee\":\"1\",\"total_fee\":\"1\",\"result_code\":\"SUCCESS\",\"coupon_refund_count\":\"0\",\"cash_refund_fee\":\"1\",\"return_code\":\"SUCCESS\"}','2021-09-07 23:38:40','2021-09-07 15:38:39','2021-09-07 15:38:40',0);
/*!40000 ALTER TABLE `refund_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-08 16:03:16
