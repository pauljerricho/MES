-- MariaDB dump 10.19  Distrib 10.4.22-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: 8084localhost
-- ------------------------------------------------------
-- Server version	10.4.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `board` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) NOT NULL,
  `hit` int(11) NOT NULL,
  `file_name` char(40) DEFAULT NULL,
  `file_type` char(40) DEFAULT NULL,
  `file_copied` char(40) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'test2','test2','sdfsad fsda fasdf sdf','sd fsdaf asdf asd','2022-02-15 (14:28)',1,'','',''),(6,'test2','test2','sadfasdf sdf sd fsdf sadf','sdfsdfsd sdf sdf sdfsdf sdfsdf sd','2022-02-18 (16:08)',3,'facebook.png','image/png','');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_info`
--

DROP TABLE IF EXISTS `company_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_info` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(30) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `hp` varchar(13) DEFAULT NULL,
  `tel` varchar(13) DEFAULT NULL,
  `businessnum` varchar(12) DEFAULT NULL,
  `fax` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `postno` varchar(6) DEFAULT NULL,
  `address` varchar(120) DEFAULT NULL,
  `address2` varchar(60) DEFAULT NULL,
  `c_manager` varchar(30) DEFAULT NULL,
  `c_ma_tel` varchar(13) DEFAULT NULL,
  `c_ma_email` varchar(30) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `n_postno` varchar(6) DEFAULT NULL,
  `n_address` varchar(120) DEFAULT NULL,
  `n_address2` varchar(60) DEFAULT NULL,
  `notice` text DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `account_num` varchar(30) DEFAULT NULL,
  `account_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_info`
--

LOCK TABLES `company_info` WRITE;
/*!40000 ALTER TABLE `company_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `company_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cu_code` varchar(30) NOT NULL DEFAULT '',
  `c_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `businessnum` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `postno` varchar(6) DEFAULT NULL,
  `address_1` varchar(120) DEFAULT NULL,
  `address_2` varchar(60) DEFAULT NULL,
  `payment` varchar(30) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `etc` longtext DEFAULT NULL,
  `cu_manager` varchar(20) DEFAULT NULL,
  `cu_ma_tel` varchar(13) DEFAULT NULL,
  `cu_ma_email` varchar(30) DEFAULT NULL,
  `n_postno` varchar(6) DEFAULT NULL,
  `n_address` varchar(120) DEFAULT NULL,
  `n_address2` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`cu_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('AB-0001','ABC마트','곽필두','1058627477','02-123-1234','02-1234-1234','qwer1234@yahoo.co.kr','44989','울산광역시 울주군 청량읍 신촌1길 2','','','2022-02-23 15:35:00','010-1234-1234','','김김김','010-9876-9876','asdf1234@netian.com','28064','충청북도 괴산군 청천면 괴산로상신3길 12-12',''),('BON-0002','인생관','봉다겸','1234567891','033-1234-1234','024-456-456','qweqwe124@naver.com','','','','','2022-02-23 15:38:16','010-5675-4564','','봉씨','011-5678-5678','1234@hotmail.com','','',''),('CU-0003','cu편의점','김지연','1058627477','042-2978-8302','02-123-123','qweqwe@naver.com','','','','','2022-02-23 15:34:36','010-1234-1234','','김김김','010-5678-5678','1234@gmail.com','','',''),('HS-0001','한성컴퓨터','한동열','1068617410','02-715-5714','02-715-5714','hs0092@naver.com','','','','','2022-02-23 15:35:55','010-9961-1355','','남훈우 ','010-9845-4415','nh1818@naver.com','','',''),('LYJ-0001','주식회사 이','이예지','1058627477','02-1234-5678','02-1234-5678','aaa1@naver.com','04058','서울특별시 마포구 신촌로 92(노고산동)','','','2022-02-23 15:33:40','010-1234-5678','','이예지','010-1234-5678','aaa2@naver.com','14234','경기도 광명시 시청로 20(철산동)',''),('NKJ-0225','NKJ','조남근','1058627477','02-307-8213','031-4429-3517','dipper25@nate.com','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804','','2022-02-23 15:39:14','010-4429-3517','','조남근','010-4429-3517','dipper25@nate.com','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804'),('SIM-0001','농심','박준','1188103914','02-820-7114','02-820-7114','rubato@naver.com','','','','','2022-02-23 15:33:07','010-7574-5211','','박준','010-5231-1154','parkjun123@naver.com','','',''),('STAR01','별에서온컴퓨터','장민준','5388801050','02-884-6513','02-884-6513','star112@netian.com','','','','','2022-02-23 15:38:20','010-2157-4465','','장민준','010-8798-5451','jmj0209@daum.net','','','');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `initial`
--

DROP TABLE IF EXISTS `initial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `initial` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `initial` varchar(30) DEFAULT NULL,
  `table_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `initial`
--

LOCK TABLES `initial` WRITE;
/*!40000 ALTER TABLE `initial` DISABLE KEYS */;
INSERT INTO `initial` VALUES (1,'SIM','customer'),(2,'LYJ','customer'),(3,'CU','customer'),(4,'AB','customer'),(5,'HS','customer'),(6,'BON','customer'),(7,'NKJ','customer'),(8,'PAK','route'),(9,'NKJ','work_standard_1'),(10,'DEL','route'),(11,'WRI','route'),(12,'BON','route'),(13,'FRI','route'),(14,'TRI','route'),(15,'KIL','route'),(16,'DEN','route'),(17,'WRI','work_standard_1'),(18,'AS','work_standard_1'),(19,'OP','work_standard_1'),(20,'DIS','work_standard_1'),(21,'SIM','product'),(22,'BON','product'),(23,'RA','product'),(24,'IP','product'),(25,'NKJ','product'),(26,'CH','warehouse_1'),(27,'BDG','warehouse_1'),(28,'NKJ','warehouse_1'),(29,'AA','warehouse_1'),(30,'KU','warehouse_1'),(31,'YSS','warehouse_1'),(32,'TS','warehouse_1');
/*!40000 ALTER TABLE `initial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `material` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `mt_number` varchar(30) NOT NULL DEFAULT '',
  `p_name` varchar(70) DEFAULT NULL,
  `box_quantity` int(11) DEFAULT NULL,
  `sacks_unit` int(20) DEFAULT NULL,
  `p_unit` varchar(10) DEFAULT NULL,
  `p_price` int(11) DEFAULT NULL,
  `c_name` text DEFAULT NULL,
  `pt_code` text DEFAULT NULL,
  `expiration_term1` int(11) DEFAULT NULL,
  `expiration_term2` char(2) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `division` char(1) NOT NULL DEFAULT '',
  `standard` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `wk_code` varchar(50) DEFAULT NULL,
  `wk_name` varchar(50) DEFAULT NULL,
  `origin` varchar(200) DEFAULT NULL,
  `mix_standard` varchar(2) DEFAULT 'A',
  `box_unit` varchar(10) DEFAULT NULL,
  `display_order` varchar(20) DEFAULT '0',
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `id` char(15) NOT NULL,
  `pass` char(15) NOT NULL,
  `name` char(10) NOT NULL,
  `email` char(80) DEFAULT NULL,
  `regist_day` char(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `point` int(11) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'test13','test13','test13','test13@naver.com','2022-02-14 (10:14)',9,0),(2,'test2','test2','test2','test2@test2.com','2022-02-14 (14:07)',1,200),(4,'test4','test4','test4','test4@test4.com','2022-02-14 (14:08)',7,100),(7,'test4444','test4444','test44333','test44333@test4444.com','2022-02-22 (10:53)',9,0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `num` int(11) NOT NULL AUTO_INCREMENT,
  `send_id` char(20) NOT NULL,
  `rv_id` char(20) NOT NULL,
  `subject` char(200) NOT NULL,
  `content` text NOT NULL,
  `regist_day` char(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'test13','test2','sfdsdfsdf','contentsdfsd sdf sdf sdf ','2022-02-14 (15:52)'),(2,'test13','test2','sfdsdfsdf','contentsdfsd sdf sdf sdf ','2022-02-14 (15:53)'),(4,'test13','test2','sfdsdfsdf','contentsdfsd sdf sdf sdf ','2022-02-14 (15:54)'),(5,'test2','test13','sfsdfsd','content sdf sdf sdfsdf sdf ','2022-02-14 (16:34)'),(7,'test2','test13','test13 azsdfcasdfsdfsd sdf fsd s df','contentsdf sd fsdf sdf sd','2022-02-14 (16:35)'),(8,'test2','test13','RE:sfdsdfsdf11111111111','\r\nsdfsdfsdfsd\r\nfsdfsdfsd sdfs\r\nd fsd \r\n------------------------------------------\r\n&gt; contentsdfsd sdf sdf sdf ','2022-02-15 (11:08)'),(9,'test66','test4','','sdfsdf sdf sdf sdf sdf s','2022-02-17 (16:50)'),(10,'test66','test2','','sd fsdf sdf sd','2022-02-18 (09:11)'),(11,'test66','test2','sdfasd sdf asdf sadfa sd','fsdf sdfasd fsd fasd fasd ','2022-02-18 (09:35)'),(12,'test2','test66','RE: sdfasd sdf asdf sadfa sd 1111111111111111111111','content111  111111111111  1111111111111111111','2022-02-18 (11:33)'),(13,'test2','test2','RE: RE: sdfasd sdf asdf sadfa sd 1111111111111111111111','contents sdf sdfsdf sdf sdf sd','2022-02-18 (11:53)'),(15,'test4444','test2','test22222','sfsd sdf sdf sdf sdf sd s',''),(17,'test2','test4444','RE: test222222342342342','\r\nasdasdas242342 234 234234 23 \r\n-----------------------------------------------\r\n&gt; sfsd sdf sdf sdf sdf sd s','2022-02-23 (14:19)');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixture_info_1`
--

DROP TABLE IF EXISTS `mixture_info_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mixture_info_1` (
  `mi_code` varchar(30) NOT NULL DEFAULT '',
  `mi_name` varchar(150) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `wk_code` varchar(50) DEFAULT NULL,
  `wk_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`mi_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixture_info_1`
--

LOCK TABLES `mixture_info_1` WRITE;
/*!40000 ALTER TABLE `mixture_info_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixture_info_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mixture_info_2`
--

DROP TABLE IF EXISTS `mixture_info_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mixture_info_2` (
  `mid_no` int(11) NOT NULL AUTO_INCREMENT,
  `mi_code` varchar(30) NOT NULL DEFAULT '',
  `p_name` varchar(30) DEFAULT NULL,
  `mt_number` varchar(30) DEFAULT NULL,
  `p_unit` varchar(20) DEFAULT NULL,
  `ratio` varchar(20) DEFAULT NULL,
  `division` char(1) NOT NULL DEFAULT '',
  `batter` varchar(20) NOT NULL DEFAULT '',
  `quantity` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`mid_no`),
  KEY `mixture_info_2_FKIndex1` (`mi_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mixture_info_2`
--

LOCK TABLES `mixture_info_2` WRITE;
/*!40000 ALTER TABLE `mixture_info_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `mixture_info_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_1`
--

DROP TABLE IF EXISTS `order_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_1` (
  `od_code` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) DEFAULT NULL,
  `cu_code` varchar(30) DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `s_date` date DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `cu_businessnum` varchar(30) DEFAULT NULL,
  `cu_username` varchar(50) DEFAULT NULL,
  `cu_tel` varchar(30) DEFAULT NULL,
  `cu_fax` varchar(30) DEFAULT NULL,
  `cu_address` varchar(120) DEFAULT NULL,
  `cu_manager` varchar(20) DEFAULT NULL,
  `cu_ma_tel` varchar(13) DEFAULT NULL,
  `cu_ma_email` varchar(30) DEFAULT NULL,
  `od_address` varchar(120) DEFAULT NULL,
  `od_post` varchar(6) DEFAULT NULL,
  `od_address2` varchar(60) DEFAULT NULL,
  `bank` varchar(20) DEFAULT NULL,
  `account_num` varchar(30) DEFAULT NULL,
  `account_name` varchar(30) DEFAULT NULL,
  `status` char(1) DEFAULT '1',
  PRIMARY KEY (`od_code`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_1`
--

LOCK TABLES `order_1` WRITE;
/*!40000 ALTER TABLE `order_1` DISABLE KEYS */;
INSERT INTO `order_1` VALUES (1,'농심','SIM-0001','2022-02-24','2022-02-23','2022-02-23 17:16:09','1188103914','박준','02-820-7114','02-820-7114','','박준','010-5231-1154','parkjun123@naver.com','서울특별시 마포구 노고산동 57-4 신촌카리스빌딩','04058','','호주은행','123-456-789456','호주','1'),(2,'NKJ','NKJ-0225','2022-02-24','2022-02-23','2022-02-23 17:16:39','1058627477','조남근','02-307-8213','031-4429-3517','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','조남근','010-4429-3517','dipper25@nate.com','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','03428','108-804','','','','1'),(3,'인생관','BON-0002','2022-02-24','2022-02-23','2022-02-23 17:16:42','1234567891','봉다겸','033-1234-1234','024-456-456','','봉씨','011-5678-5678','1234@hotmail.com','서울특별시 서대문구 대현동 101-22','03766','','신한은행','123-456-789456','다겸봉','1'),(4,'한성컴퓨터','HS-0001','2022-02-24','2022-02-23','2022-02-23 17:16:57','1068617410','한동열','02-715-5714','02-715-5714','서울시 용산구 원효로 3가 449','남훈우 ','010-9845-4415','nh1818@naver.com','서울특별시 용산구 원효로 7(청암동)','04359','','','','','1'),(5,'ABC마트','AB-0001','2022-02-24','2022-02-23','2022-02-23 17:17:09','1058627477','곽필두','02-123-1234','02-1234-1234','울산광역시 울주군 청량읍 신촌1길 2','김김김','010-9876-9876','asdf1234@netian.com','충청북도 괴산군 청천면 괴산로상신3길 12-12','28064','','호주은행','123-456-789456','호주','1'),(6,'cu편의점','CU-0003','2022-02-24','2022-02-23','2022-02-23 17:17:30','1058627477','김지연','042-2978-8302','02-123-123','','김김김','010-5678-5678','1234@gmail.com','서울특별시 영등포구 영등포로 109(당산동2가)','07264','1234','','','','1'),(7,'NKJ','NKJ-0225','2022-02-24','2022-02-23','2022-02-23 17:17:48','1058627477','조남근','02-307-8213','031-4429-3517','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','조남근','010-4429-3517','dipper25@nate.com','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','03428','108-804','','','','1'),(8,'인생관','BON-0002','2022-02-24','2022-02-23','2022-02-23 17:18:27','1234567891','봉다겸','033-1234-1234','024-456-456','','봉씨','011-5678-5678','1234@hotmail.com','서울특별시 서대문구 신촌역로 9(대현동)','03780','','','','','1'),(9,'NKJ','NKJ-0225','2022-02-24','2022-02-23','2022-02-23 17:18:55','1058627477','조남근','02-307-8213','031-4429-3517','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','조남근','010-4429-3517','dipper25@nate.com','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','03428','108-804','','','','1'),(10,'NKJ','NKJ-0225','2022-02-24','2022-02-23','2022-02-23 17:46:06','1058627477','조남근','02-307-8213','031-4429-3517','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','조남근','010-4429-3517','dipper25@nate.com','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','03428','108-804','','','','1');
/*!40000 ALTER TABLE `order_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_2`
--

DROP TABLE IF EXISTS `order_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_2` (
  `od_no` int(11) NOT NULL AUTO_INCREMENT,
  `od_code` int(11) NOT NULL DEFAULT 0,
  `p_name` varchar(30) DEFAULT NULL,
  `mt_number` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `p_price` varchar(30) DEFAULT NULL,
  `price_sum` varchar(30) DEFAULT NULL,
  `vat_sum` varchar(30) DEFAULT NULL,
  `total_sum` varchar(30) DEFAULT NULL,
  `quantity2` varchar(30) NOT NULL DEFAULT '',
  `quantity3` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`od_no`),
  KEY `order_2_FKIndex1` (`od_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_2`
--

LOCK TABLES `order_2` WRITE;
/*!40000 ALTER TABLE `order_2` DISABLE KEYS */;
INSERT INTO `order_2` VALUES (1,4,'갤럭시','SIM-0001','10','1500000','1500000','150000','1650000','0','1'),(2,4,'아이폰','IP-0001','100','6700000','6700000','670000','7370000','0','1'),(3,5,'아이폰','IP-0001','200','6700000','13400000','1340000','14740000','0','2'),(4,6,'라면','RA-0001','50','30000','30000','3000','33000','0','1'),(5,6,'캔디','BON-0001','50','10000','10000','1000','11000','0','1'),(7,9,'캔디','BON-0001','50','10000','10000','1000','11000','0','1'),(8,8,'봉다겸','BON-0003','2000','3500','7000000','700000','7700000','0','2000'),(9,10,'포도','NKJ-0025','60','10000','60000','6000','66000','0','6');
/*!40000 ALTER TABLE `order_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner`
--

DROP TABLE IF EXISTS `partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner` (
  `pt_code` varchar(30) NOT NULL DEFAULT '',
  `c_name` varchar(90) DEFAULT NULL,
  `division` char(1) DEFAULT NULL,
  `user_name` varchar(30) DEFAULT NULL,
  `businessnum` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `postno` varchar(10) DEFAULT NULL,
  `address_1` varchar(150) DEFAULT NULL,
  `address_2` varchar(150) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `etc` longtext DEFAULT NULL,
  `p_manager` varchar(30) DEFAULT NULL,
  `p_ma_tel` varchar(30) DEFAULT NULL,
  `p_ma_email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pt_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner`
--

LOCK TABLES `partner` WRITE;
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_order_1`
--

DROP TABLE IF EXISTS `pro_order_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_order_1` (
  `po_code` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) DEFAULT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `mt_number` varchar(30) NOT NULL DEFAULT '',
  `quantity` varchar(30) DEFAULT NULL,
  `weight` varchar(30) DEFAULT NULL,
  `time_slots` char(1) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `s_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `st_date` datetime DEFAULT NULL,
  `ed_date` datetime DEFAULT NULL,
  `jloty` varchar(5) NOT NULL DEFAULT '',
  `jlotw` varchar(5) NOT NULL DEFAULT '',
  `jlotc` varchar(5) NOT NULL DEFAULT '',
  `od_no` int(11) DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`po_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_order_1`
--

LOCK TABLES `pro_order_1` WRITE;
/*!40000 ALTER TABLE `pro_order_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_order_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_order_2`
--

DROP TABLE IF EXISTS `pro_order_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_order_2` (
  `po_no` int(11) NOT NULL AUTO_INCREMENT,
  `po_code` int(11) NOT NULL DEFAULT 0,
  `ro_name` varchar(170) DEFAULT NULL,
  `ro_code` varchar(30) DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  `user_id` varchar(30) DEFAULT '',
  `user_name` varchar(30) DEFAULT NULL,
  `turn` int(11) DEFAULT NULL,
  `line` varchar(10) DEFAULT '-',
  `state` char(1) NOT NULL DEFAULT 'N',
  `transition` char(2) NOT NULL DEFAULT '0',
  `quantity` varchar(30) DEFAULT NULL,
  `span_time_1` varchar(10) DEFAULT NULL,
  `span_time_2` char(1) DEFAULT NULL,
  `mi_code` varchar(30) DEFAULT NULL,
  `mi_name` varchar(30) DEFAULT NULL,
  `batter` varchar(20) DEFAULT '',
  `re_batter` varchar(20) DEFAULT '',
  `ratio` varchar(30) DEFAULT NULL,
  `do_amt` varchar(30) DEFAULT '0',
  PRIMARY KEY (`po_no`),
  KEY `pro_order_2_FKIndex1` (`po_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_order_2`
--

LOCK TABLES `pro_order_2` WRITE;
/*!40000 ALTER TABLE `pro_order_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_order_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `mt_number` varchar(30) NOT NULL DEFAULT '',
  `p_name` varchar(70) DEFAULT NULL,
  `box_quantity` int(11) DEFAULT NULL,
  `sacks_unit` int(20) DEFAULT NULL,
  `p_unit` varchar(10) DEFAULT NULL,
  `p_price` int(11) DEFAULT NULL,
  `expiration_term1` int(11) DEFAULT NULL,
  `expiration_term2` char(2) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `wk_code` varchar(50) DEFAULT NULL,
  `wk_name` varchar(50) DEFAULT NULL,
  `standard` varchar(255) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `division` char(1) DEFAULT '0',
  `mix_standard` varchar(2) DEFAULT 'A',
  `box_unit` varchar(10) DEFAULT NULL,
  `display_order` varchar(20) DEFAULT '0',
  `display_yn` varchar(2) DEFAULT 'N',
  `c_name` text DEFAULT NULL,
  `pt_code` text DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'SIM-0001','갤럭시',10,5,'kg',1500000,7,'Y','2022-02-23 16:13:55','DIS-0001','배선','100*45*120','','0','A','BOX','','N','Array','Array'),(2,'BON-0001','캔디',50,10,'kg',10000,1,'D','2022-02-23 16:14:54','NKJ-0004','휘파람','123','','0','A','BOX','','N','Array','Array'),(3,'RA-0001','라면',50,3,'kg',30000,5,'Y','2022-02-23 16:15:43','AS-0004','상품관리','1000*4000*1000','','0','A','BOX','','N','Array','Array'),(4,'NKJ','이과',5,3,'kg',10000,30,'D','2022-02-23 16:16:28','NKJ-0001','캔디','50','','0','A','BOX','','N','Array','Array'),(5,'BON-0003','봉다겸',1,63,'kg',3500,73,'Y','2022-02-23 16:16:35','NKJ-0004','휘파람','173','','0','A','BOX','','N','Array','Array'),(6,'IP-0001','아이폰',100,4,'kg',6700000,10,'M','2022-02-23 16:17:00','NKJ-0003','테스트','1000*4000*1000','','0','A','BOX','','N','Array','Array'),(7,'NKJ-0025','포도',10,5,'kg',10000,2,'M','2022-02-23 16:18:50','NKJ-0001','캔디','60','','0','A','BOX','','N','Array','Array'),(8,'BON-0005','봉ㄷ',1,63,'kg',1750,73,'Y','2022-02-23 16:19:01','OP-0011','휘파람','173','','3','A','BOX','','N','Array','Array');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_1`
--

DROP TABLE IF EXISTS `purchase_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_1` (
  `ph_code` int(11) NOT NULL AUTO_INCREMENT,
  `od_no` int(11) DEFAULT NULL,
  `s_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `status` char(1) NOT NULL DEFAULT '1',
  `bloty` varchar(5) DEFAULT NULL,
  `blotw` varchar(5) DEFAULT NULL,
  `blotc` varchar(5) DEFAULT NULL,
  `ph_post` varchar(6) DEFAULT NULL,
  `ph_address` varchar(120) DEFAULT NULL,
  `ph_address2` varchar(60) DEFAULT NULL,
  `notice` text DEFAULT NULL,
  PRIMARY KEY (`ph_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_1`
--

LOCK TABLES `purchase_1` WRITE;
/*!40000 ALTER TABLE `purchase_1` DISABLE KEYS */;
INSERT INTO `purchase_1` VALUES (1,0,'2022-02-23','2022-02-24','2022-02-23 17:24:01','1','22','08','01','04359','서울특별시 용산구 청암동 168-24','','');
/*!40000 ALTER TABLE `purchase_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_2`
--

DROP TABLE IF EXISTS `purchase_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_2` (
  `ph_no` int(11) NOT NULL AUTO_INCREMENT,
  `ph_code` int(11) NOT NULL DEFAULT 0,
  `c_name` varchar(50) DEFAULT NULL,
  `pt_code` varchar(30) DEFAULT NULL,
  `mt_number` varchar(30) DEFAULT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `p_price` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `weight` varchar(30) NOT NULL DEFAULT '',
  `box_quantity` varchar(30) NOT NULL DEFAULT '',
  `p_unit` varchar(10) DEFAULT NULL,
  `stock_count` int(20) NOT NULL DEFAULT 0,
  `price_sum` varchar(30) DEFAULT NULL,
  `vat` varchar(30) DEFAULT NULL,
  `total_sum` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ph_no`),
  KEY `purchase_2_FKIndex1` (`ph_code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_2`
--

LOCK TABLES `purchase_2` WRITE;
/*!40000 ALTER TABLE `purchase_2` DISABLE KEYS */;
INSERT INTO `purchase_2` VALUES (1,1,'Array','Array','NKJ','이과','10000','10','30.00','2.00','kg',0,'20000','2000','22000');
/*!40000 ALTER TABLE `purchase_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_stock`
--

DROP TABLE IF EXISTS `purchase_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchase_stock` (
  `ps_no` int(11) NOT NULL AUTO_INCREMENT,
  `ph_no` int(11) NOT NULL DEFAULT 0,
  `wh_no` int(11) DEFAULT NULL,
  `wh_name` varchar(30) DEFAULT NULL,
  `zone_name` varchar(30) DEFAULT NULL,
  `count` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ps_no`),
  KEY `purchase_stock_FKIndex1` (`ph_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_stock`
--

LOCK TABLES `purchase_stock` WRITE;
/*!40000 ALTER TABLE `purchase_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchase_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_1`
--

DROP TABLE IF EXISTS `recipe_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_1` (
  `re_code` varchar(30) NOT NULL DEFAULT '',
  `re_name` varchar(30) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `mt_number` varchar(30) DEFAULT NULL,
  `p_name` varchar(120) DEFAULT NULL,
  `output` varchar(20) DEFAULT NULL,
  `o_unit` varchar(2) DEFAULT 'K',
  PRIMARY KEY (`re_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_1`
--

LOCK TABLES `recipe_1` WRITE;
/*!40000 ALTER TABLE `recipe_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe_2`
--

DROP TABLE IF EXISTS `recipe_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipe_2` (
  `re_no` int(11) NOT NULL AUTO_INCREMENT,
  `re_code` varchar(30) NOT NULL DEFAULT '',
  `mi_code` varchar(30) DEFAULT NULL,
  `mi_name` varchar(30) DEFAULT NULL,
  `ratio` varchar(30) DEFAULT NULL,
  `ro_code` varchar(30) DEFAULT NULL,
  `ro_name` varchar(170) DEFAULT NULL,
  `method` char(1) DEFAULT NULL,
  `batter` varchar(20) NOT NULL DEFAULT '',
  `wk_no` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`re_no`),
  KEY `recipe_2_FKIndex1` (`re_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe_2`
--

LOCK TABLES `recipe_2` WRITE;
/*!40000 ALTER TABLE `recipe_2` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipe_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_1_22`
--

DROP TABLE IF EXISTS `request_1_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_1_22` (
  `request_number` int(11) NOT NULL AUTO_INCREMENT,
  `in_out` char(1) DEFAULT NULL,
  `state` char(1) DEFAULT NULL,
  `sh_code` int(11) DEFAULT NULL,
  `po_code` int(11) DEFAULT NULL,
  `ph_code` int(11) DEFAULT NULL,
  `off_code` varchar(30) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `rel_no` char(1) DEFAULT NULL,
  `req_info` char(1) DEFAULT NULL,
  `dev_id` varchar(30) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `c_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`request_number`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_1_22`
--

LOCK TABLES `request_1_22` WRITE;
/*!40000 ALTER TABLE `request_1_22` DISABLE KEYS */;
INSERT INTO `request_1_22` VALUES (1,'1','N',NULL,NULL,NULL,NULL,'2022-02-23 16:39:14',NULL,NULL,'','192.168.5.17',NULL),(2,'1','E',NULL,NULL,NULL,NULL,'2022-02-23 16:39:31',NULL,NULL,'','192.168.5.22',NULL),(3,'1','E',NULL,NULL,NULL,NULL,'2022-02-23 16:40:03',NULL,NULL,'','192.168.5.13',NULL),(4,'1','E',NULL,NULL,NULL,NULL,'2022-02-23 16:40:43',NULL,NULL,'','192.168.5.17',NULL),(5,'1','E',NULL,NULL,NULL,NULL,'2022-02-23 16:41:06',NULL,NULL,'','192.168.5.13',NULL),(6,'1','E',NULL,NULL,NULL,NULL,'2022-02-23 16:43:26',NULL,NULL,'','192.168.5.22',NULL),(7,'1','E',NULL,NULL,NULL,NULL,'2022-02-23 16:45:04',NULL,NULL,'','192.168.5.13',NULL),(8,'1','N',NULL,NULL,NULL,NULL,'2022-02-23 16:46:48',NULL,NULL,'','192.168.5.10',NULL),(9,'1','E',NULL,NULL,NULL,NULL,'2022-02-23 16:47:50',NULL,NULL,'','192.168.5.13',NULL),(10,'2','E',2,NULL,NULL,NULL,'2022-02-23 17:25:27',NULL,NULL,'','192.168.5.13','한성컴퓨터'),(11,'2','E',7,NULL,NULL,NULL,'2022-02-23 17:47:49',NULL,NULL,'','192.168.5.17','NKJ'),(12,'2','N',7,NULL,NULL,NULL,'2022-02-23 17:52:20',NULL,NULL,'','192.168.5.17','NKJ');
/*!40000 ALTER TABLE `request_1_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_2_22`
--

DROP TABLE IF EXISTS `request_2_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_2_22` (
  `req_no` int(11) NOT NULL AUTO_INCREMENT,
  `request_number` int(11) NOT NULL DEFAULT 0,
  `mt_number` varchar(30) DEFAULT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`req_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_2_22`
--

LOCK TABLES `request_2_22` WRITE;
/*!40000 ALTER TABLE `request_2_22` DISABLE KEYS */;
INSERT INTO `request_2_22` VALUES (1,1,'BON-0005','봉ㄷ','1000'),(2,2,'NKJ','이과','10'),(3,3,'SIM-0001','갤럭시','1000'),(4,4,'BON-0003','봉다겸','1000'),(5,5,'IP-0001','아이폰','1000'),(6,5,'RA-0001','라면','1000'),(7,5,'BON-0001','캔디','1000'),(8,5,'NKJ-0025','포도','1000'),(9,6,'NKJ-0025','포도','1000'),(10,7,'SIM-0001','갤럭시','500'),(11,8,'IP-0001','아이폰','654154'),(12,9,'BON-0005','봉ㄷ','5090'),(13,10,'SIM-0001','갤럭시','10'),(14,10,'IP-0001','아이폰','100'),(15,11,'NKJ-0025','포도','30'),(16,12,'NKJ-0025','포도','30');
/*!40000 ALTER TABLE `request_2_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request_3_22`
--

DROP TABLE IF EXISTS `request_3_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request_3_22` (
  `r_no` int(11) NOT NULL AUTO_INCREMENT,
  `req_no` int(11) NOT NULL DEFAULT 0,
  `mt_number` varchar(30) DEFAULT NULL,
  `wh_no` int(11) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `wh_name` varchar(30) NOT NULL DEFAULT '',
  `zone_name` varchar(30) NOT NULL DEFAULT '',
  `wh_code` varchar(30) DEFAULT NULL,
  `do_amt` varchar(30) DEFAULT '0',
  PRIMARY KEY (`r_no`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request_3_22`
--

LOCK TABLES `request_3_22` WRITE;
/*!40000 ALTER TABLE `request_3_22` DISABLE KEYS */;
INSERT INTO `request_3_22` VALUES (1,1,'BON-0005',25,'2','고오오급레스토랑','블리자드','BDG-0003','0'),(2,2,'NKJ',17,'10','그니의수상한창고','신도림','NKJ-0002','1010'),(3,3,'SIM-0001',19,'1000','물자창고','A102','YSS-0001','1000'),(4,4,'BON-0003',18,'1000','봉이의수상한창고','여기 어딘가','BDG-0002','1000'),(5,5,'IP-0001',20,'1000','물자창고','A103','YSS-0001','1000'),(6,6,'RA-0001',24,'1000','구산창고','은평 구산','NKJ-0003','1000'),(7,7,'BON-0001',13,'1000','식품창고','K0880','KU-0001','1000'),(8,8,'NKJ-0025',22,'1000','물자창고','A105','YSS-0001','1000'),(9,9,'NKJ-0025',24,'1000','구산창고','은평 구산','NKJ-0003','1000'),(10,10,'SIM-0001',26,'500','롯데제과','1','YSS-0002','500'),(11,11,'IP-0001',6,'654154','그니의수상한창고','가산디지털','NKJ-0001','0'),(12,12,'BON-0005',21,'5090','물자창고','A104','YSS-0001','5090'),(13,13,'SIM-0001',19,'10','물자창고','A102','YSS-0001','10'),(14,14,'IP-0001',20,'100','물자창고','A103','YSS-0001','100'),(15,15,'NKJ-0025',24,'30','구산창고','은평 구산','NKJ-0003','30'),(16,16,'NKJ-0025',24,'30','구산창고','은평 구산','NKJ-0003','0');
/*!40000 ALTER TABLE `request_3_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `route` (
  `ro_code` varchar(30) NOT NULL DEFAULT '',
  `ro_name` varchar(170) DEFAULT NULL,
  `ro_info` longtext DEFAULT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `method` char(1) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `multiple` int(11) DEFAULT NULL,
  PRIMARY KEY (`ro_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES ('BON-0002','구입하기','구입','2022-02-23 15:50:38','1','',0),('BON-0003','본따기','','2022-02-23 15:50:54','1','',0),('DEL-0001','배달하기','배달','2022-02-23 15:49:41','1','',0),('DEL-0005','그대여여여 나의 장미여','그대에에에는 휘파아아람 휘이이잏 히','2022-02-23 16:02:56','3','',0),('DEL-0007','그대대에에에는휘파람휘히히히','','2022-02-23 16:03:22','1','',0),('DEL-0225','용접하기','용접','2022-02-23 16:02:20','1','',10),('DEN-0001','지우기','','2022-02-23 15:52:17','1','',0),('FRI-0001',' 얼리기','얼리기','2022-02-23 15:50:51','3','',0),('KIL-0001','죽이기','죽이기','2022-02-23 15:51:40','1','',0),('PAK-0001','포장하기','포장하기','2022-02-23 15:48:16','1','',0),('PAK-0002','공정','','2022-02-23 15:50:01','1','',0),('TRI-0001','검사하기','','2022-02-23 15:51:34','3','',0),('WRI-0001','쓰기','쓰기','2022-02-23 15:50:20','1','',0);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_1`
--

DROP TABLE IF EXISTS `shipment_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_1` (
  `sh_code` int(11) NOT NULL AUTO_INCREMENT,
  `cu_code` varchar(30) DEFAULT NULL,
  `c_name` varchar(50) DEFAULT NULL,
  `postno` varchar(6) DEFAULT NULL,
  `address_1` varchar(120) DEFAULT NULL,
  `address_2` varchar(60) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `state` char(1) NOT NULL DEFAULT '1',
  `od_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `n_post` varchar(6) DEFAULT NULL,
  `n_address` varchar(255) DEFAULT NULL,
  `n_address2` varchar(60) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `od_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`sh_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_1`
--

LOCK TABLES `shipment_1` WRITE;
/*!40000 ALTER TABLE `shipment_1` DISABLE KEYS */;
INSERT INTO `shipment_1` VALUES (1,'NKJ-0225','NKJ','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804','2022-02-23 17:20:10','2','2022-02-23','2022-02-24','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804','',9),(2,'HS-0001','한성컴퓨터','','','','2022-02-23 17:22:58','2','2022-02-23','2022-02-24','04359','서울특별시 용산구 원효로 7(청암동)','','',4),(3,'NKJ-0225','NKJ','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804','2022-02-23 17:24:54','2','2022-02-23','2022-02-24','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804','',9),(4,'AB-0001','ABC마트','44989','울산광역시 울주군 청량읍 신촌1길 2','','2022-02-23 17:25:12','2','2022-02-23','2022-02-24','28064','충청북도 괴산군 청천면 괴산로상신3길 12-12','','',5),(5,'CU-0003','cu편의점','','','','2022-02-23 17:26:44','2','2022-02-23','2022-02-24','07264','서울특별시 영등포구 영등포로 109(당산동2가)','1234','',6),(6,'BON-0002','인생관','','','','2022-02-23 17:34:02','3','2022-02-23','2022-02-24','03780','서울특별시 서대문구 신촌역로 9-1(대현동)','','',0),(7,'NKJ-0225','NKJ','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804','2022-02-23 17:46:17','2','2022-02-23','2022-02-24','03428','서울특별시 은평구 갈현로11길 46(구산동, 경남 아너스빌)','108-804','',10);
/*!40000 ALTER TABLE `shipment_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_2`
--

DROP TABLE IF EXISTS `shipment_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_2` (
  `sh_no` int(11) NOT NULL AUTO_INCREMENT,
  `sh_code` int(11) NOT NULL DEFAULT 0,
  `p_name` varchar(30) DEFAULT NULL,
  `pd_number` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `unit` varchar(30) DEFAULT NULL,
  `meno` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sh_no`),
  KEY `shipment_2_FKIndex1` (`sh_code`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_2`
--

LOCK TABLES `shipment_2` WRITE;
/*!40000 ALTER TABLE `shipment_2` DISABLE KEYS */;
INSERT INTO `shipment_2` VALUES (1,1,'캔디','BON-0001','50','kg',''),(2,2,'갤럭시','SIM-0001','10','kg',''),(3,2,'아이폰','IP-0001','100','kg',''),(4,3,'캔디','BON-0001','50','kg',''),(5,4,'아이폰','IP-0001','200','kg',''),(6,5,'캔디','BON-0001','50','kg',''),(7,5,'라면','RA-0001','50','kg',''),(8,6,'봉다겸','BON-0003','1','kg',''),(9,7,'포도','NKJ-0025','60','kg','');
/*!40000 ALTER TABLE `shipment_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_3`
--

DROP TABLE IF EXISTS `shipment_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_3` (
  `sh_whno` int(11) NOT NULL AUTO_INCREMENT,
  `sh_no` int(11) NOT NULL DEFAULT 0,
  `wh_no` int(11) DEFAULT NULL,
  `wh_name` varchar(30) DEFAULT NULL,
  `zone_name` varchar(30) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `dis_code` varchar(20) DEFAULT NULL,
  `out_qty` varchar(20) NOT NULL DEFAULT '0',
  `st_code` int(11) DEFAULT NULL,
  `division` varchar(2) DEFAULT '1',
  PRIMARY KEY (`sh_whno`),
  KEY `shipment_3_FKIndex1` (`sh_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_3`
--

LOCK TABLES `shipment_3` WRITE;
/*!40000 ALTER TABLE `shipment_3` DISABLE KEYS */;
INSERT INTO `shipment_3` VALUES (1,1,13,'식품창고','K0880','50',NULL,'50',7,'1'),(2,2,19,'물자창고','A102','10',NULL,'10',9,'1'),(3,3,20,'물자창고','A103','100',NULL,'100',5,'1'),(4,4,13,'식품창고','K0880','50',NULL,'50',7,'1'),(5,5,20,'물자창고','A103','200',NULL,'200',5,'1'),(6,6,13,'식품창고','K0880','50',NULL,'50',7,'1'),(7,7,24,'구산창고','은평 구산','50',NULL,'50',6,'1'),(8,8,18,'봉이의수상한창고','여기 어딘가','1',NULL,'1',1,'1'),(9,9,24,'구산창고','은평 구산','60',NULL,'30',2,'1');
/*!40000 ALTER TABLE `shipment_3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_inout`
--

DROP TABLE IF EXISTS `shipment_inout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_inout` (
  `si_code` int(11) NOT NULL AUTO_INCREMENT,
  `quantity` varchar(30) DEFAULT NULL,
  `in_out` char(1) NOT NULL DEFAULT '',
  `reg_date` datetime DEFAULT NULL,
  `sh_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`si_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_inout`
--

LOCK TABLES `shipment_inout` WRITE;
/*!40000 ALTER TABLE `shipment_inout` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_inout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipment_inout_22`
--

DROP TABLE IF EXISTS `shipment_inout_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipment_inout_22` (
  `si_no` int(11) NOT NULL AUTO_INCREMENT,
  `si_code` int(11) DEFAULT NULL,
  `mt_number` varchar(30) DEFAULT NULL,
  `p_name` varchar(50) DEFAULT NULL,
  `wh_code` varchar(30) DEFAULT NULL,
  `wh_name` varchar(50) DEFAULT NULL,
  `zone_name` varchar(50) DEFAULT NULL,
  `wh_no` int(11) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `price` varchar(60) DEFAULT NULL,
  `division` char(1) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `bloty` varchar(5) DEFAULT NULL,
  `blotw` varchar(5) DEFAULT NULL,
  `blotc` varchar(5) DEFAULT NULL,
  `jloty` varchar(5) DEFAULT NULL,
  `jlotw` varchar(5) DEFAULT NULL,
  `jlotc` varchar(5) DEFAULT NULL,
  `sh_whno` int(11) DEFAULT NULL,
  `st_code` int(11) DEFAULT NULL,
  PRIMARY KEY (`si_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipment_inout_22`
--

LOCK TABLES `shipment_inout_22` WRITE;
/*!40000 ALTER TABLE `shipment_inout_22` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipment_inout_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sticker`
--

DROP TABLE IF EXISTS `sticker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sticker` (
  `stno` int(11) NOT NULL AUTO_INCREMENT,
  `mt_no` int(11) NOT NULL DEFAULT 0,
  `p_name` varchar(70) DEFAULT NULL,
  `capacity` varchar(30) DEFAULT NULL,
  `product_type` varchar(100) DEFAULT NULL,
  `locality` varchar(200) DEFAULT NULL,
  `row_material` text DEFAULT NULL,
  `packing` varchar(50) DEFAULT NULL,
  `produce_num` varchar(20) DEFAULT NULL,
  `store_method1` text DEFAULT NULL,
  `store_method2` text DEFAULT NULL,
  `exchange_place` varchar(200) DEFAULT NULL,
  `caution` text DEFAULT NULL,
  `cooking_method` text DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `expiration` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sticker`
--

LOCK TABLES `sticker` WRITE;
/*!40000 ALTER TABLE `sticker` DISABLE KEYS */;
/*!40000 ALTER TABLE `sticker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_inout_22`
--

DROP TABLE IF EXISTS `stock_inout_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_inout_22` (
  `st_no` int(11) NOT NULL AUTO_INCREMENT,
  `mt_number` varchar(30) DEFAULT NULL,
  `p_name` varchar(30) DEFAULT NULL,
  `wh_code` varchar(30) DEFAULT NULL,
  `wh_name` varchar(30) DEFAULT NULL,
  `wh_no` int(11) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `price` varchar(60) DEFAULT NULL,
  `division` char(1) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `user_id` varchar(30) NOT NULL DEFAULT '',
  `user_name` varchar(30) NOT NULL DEFAULT '',
  `zone_name` varchar(30) DEFAULT NULL,
  `in_out` char(1) NOT NULL DEFAULT '',
  `r_no` int(11) DEFAULT NULL,
  `sh_no` int(11) DEFAULT NULL,
  `st_code` int(11) DEFAULT NULL,
  `bloty` varchar(5) DEFAULT NULL,
  `blotw` varchar(5) DEFAULT NULL,
  `blotc` varchar(5) DEFAULT NULL,
  `jloty` varchar(5) DEFAULT NULL,
  `jlotw` varchar(5) DEFAULT NULL,
  `jlotc` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`st_no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_inout_22`
--

LOCK TABLES `stock_inout_22` WRITE;
/*!40000 ALTER TABLE `stock_inout_22` DISABLE KEYS */;
INSERT INTO `stock_inout_22` VALUES (1,'BON-0003','봉다겸','BDG-0002','봉이의수상한창고',18,'1000','3500','0','2022-02-23 16:45:44','','','여기 어딘가','1',4,NULL,1,'','','','','',''),(2,'NKJ-0025','포도','NKJ-0003','구산창고',24,'1000','10000','0','2022-02-23 16:45:57','','','은평 구산','1',9,NULL,2,'','','','','',''),(3,'NKJ','이과','NKJ-0002','그니의수상한창고',17,'1000','10000','0','2022-02-23 16:46:33','','','신도림','1',2,NULL,3,'','','','','',''),(5,'IP-0001','아이폰','YSS-0001','물자창고',20,'1000','6700000','0','2022-02-23 16:46:47','','','A103','1',5,NULL,5,'','','','','',''),(7,'BON-0001','캔디','KU-0001','식품창고',13,'1000','10000','0','2022-02-23 16:46:47','','','K0880','1',7,NULL,7,'','','','','',''),(8,'NKJ-0025','포도','YSS-0001','물자창고',22,'1000','10000','0','2022-02-23 16:46:47','','','A105','1',8,NULL,8,'','','','','',''),(9,'SIM-0001','갤럭시','YSS-0001','물자창고',19,'1000','1500000','0','2022-02-23 16:47:15','','','A102','1',3,NULL,9,'','','','','',''),(11,'BON-0005','봉ㄷ','YSS-0001','물자창고',21,'5090','1750','3','2022-02-23 16:47:56','','','A104','1',12,NULL,11,'','','','','',''),(12,'NKJ-0025','포도','NKJ-0003','구산창고',24,'30','10000','0','2022-02-23 17:51:16','','','은평 구산','2',15,NULL,2,'','','','','',''),(13,'SIM-0001','갤럭시','YSS-0001','물자창고',19,'10','1500000','0','2022-02-23 17:51:30','','','A102','2',13,NULL,9,'','','','','',''),(14,'IP-0001','아이폰','YSS-0001','물자창고',20,'100','6700000','0','2022-02-23 17:51:30','','','A103','2',14,NULL,5,'','','','','','');
/*!40000 ALTER TABLE `stock_inout_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_status`
--

DROP TABLE IF EXISTS `stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_status` (
  `st_code` int(11) NOT NULL AUTO_INCREMENT,
  `mt_number` varchar(30) DEFAULT NULL,
  `wh_no` int(11) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `division` char(1) DEFAULT NULL,
  `bloty` varchar(5) DEFAULT NULL,
  `blotw` varchar(5) DEFAULT NULL,
  `blotc` varchar(5) DEFAULT NULL,
  `jloty` varchar(5) DEFAULT NULL,
  `jlotw` varchar(5) DEFAULT NULL,
  `jlotc` varchar(5) DEFAULT NULL,
  `dis_code` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`st_code`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_status`
--

LOCK TABLES `stock_status` WRITE;
/*!40000 ALTER TABLE `stock_status` DISABLE KEYS */;
INSERT INTO `stock_status` VALUES (1,'BON-0003',18,'1000','2022-02-23 16:45:44','0','','','','','','',NULL),(2,'NKJ-0025',24,'970','2022-02-23 16:45:57','0','','','','','','',NULL),(3,'NKJ',17,'1000','2022-02-23 16:46:33','0','','','','','','',NULL),(4,'NKJ',17,'10','2022-02-23 16:46:46','0','','','','','','',NULL),(5,'IP-0001',20,'900','2022-02-23 16:46:47','0','','','','','','',NULL),(6,'RA-0001',24,'1000','2022-02-23 16:46:47','0','','','','','','',NULL),(7,'BON-0001',13,'1000','2022-02-23 16:46:47','0','','','','','','',NULL),(8,'NKJ-0025',22,'1000','2022-02-23 16:46:47','0','','','','','','',NULL),(9,'SIM-0001',19,'990','2022-02-23 16:47:15','0','','','','','','',NULL),(10,'SIM-0001',26,'500','2022-02-23 16:47:26','0','','','','','','',NULL),(11,'BON-0005',21,'5090','2022-02-23 16:47:56','3','','','','','','',NULL);
/*!40000 ALTER TABLE `stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `user_id` varchar(30) NOT NULL DEFAULT '',
  `user_name` varchar(30) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `bir_date` date DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_1`
--

DROP TABLE IF EXISTS `warehouse_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_1` (
  `wh_code` varchar(30) NOT NULL DEFAULT '',
  `wh_name` varchar(30) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  `location` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`wh_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_1`
--

LOCK TABLES `warehouse_1` WRITE;
/*!40000 ALTER TABLE `warehouse_1` DISABLE KEYS */;
INSERT INTO `warehouse_1` VALUES ('AA-0001','컴퓨터','2022-02-23 16:33:18','A209'),('BDG-0001','집에가즈아','2022-02-23 16:30:44','서울'),('BDG-0002','봉이의수상한창고','2022-02-23 16:36:09','대전 중구'),('BDG-0003','고오오급레스토랑','2022-02-23 16:37:16','미국 어딘가'),('CH-0001','보물창고','2022-02-23 16:30:12','화장실옆'),('CH-0002','유산균발효액','2022-02-23 16:37:58',''),('KU-0001','식품창고','2022-02-23 16:34:30','B099'),('NKJ-0001','그니의수상한창고','2022-02-23 16:31:18','서울시 금천구'),('NKJ-0002','그니의수상한창고','2022-02-23 16:33:24','서울시 금천구'),('NKJ-0003','구산창고','2022-02-23 16:37:16','서울시 은평구'),('TS-0001','기구창고','2022-02-23 16:38:21','T1010'),('YSS-0001','물자창고','2022-02-23 16:36:30','N997'),('YSS-0002','롯데제과','2022-02-23 16:37:24','');
/*!40000 ALTER TABLE `warehouse_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse_2`
--

DROP TABLE IF EXISTS `warehouse_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse_2` (
  `wh_no` int(11) NOT NULL AUTO_INCREMENT,
  `wh_code` varchar(30) NOT NULL DEFAULT '',
  `zone_name` varchar(30) DEFAULT NULL,
  `memo` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`wh_no`),
  KEY `warehouse_2_FKIndex1` (`wh_code`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_2`
--

LOCK TABLES `warehouse_2` WRITE;
/*!40000 ALTER TABLE `warehouse_2` DISABLE KEYS */;
INSERT INTO `warehouse_2` VALUES (1,'CH-0001','보물창고',''),(2,'CH-0001','돈창고',''),(3,'CH-0001','비상금',''),(6,'NKJ-0001','가산디지털',''),(7,'BDG-0001','내집',''),(8,'AA-0001','EK090','메인보드'),(9,'AA-0001','EA298','그래픽카드'),(10,'AA-0001','PP094','메모리'),(12,'KU-0001','IN12','라면'),(13,'KU-0001','K0880','우동'),(14,'KU-0001','Q203','마이신'),(15,'KU-0001','M8948','햇반'),(17,'NKJ-0002','신도림',''),(18,'BDG-0002','여기 어딘가','이쯤인가'),(19,'YSS-0001','A102','필기구'),(20,'YSS-0001','A103','종이'),(21,'YSS-0001','A104','가방'),(22,'YSS-0001','A105','책상'),(23,'YSS-0001','A106','의자'),(24,'NKJ-0003','은평 구산',''),(25,'BDG-0003','블리자드','여쯤?>'),(26,'YSS-0002','1','2'),(27,'CH-0002','1','1'),(28,'TS-0001','Y110','전선'),(29,'TS-0001','Y111','조명기구'),(30,'TS-0001','Y112','케이블트레이'),(31,'TS-0001','Y113','덕트'),(32,'TS-0001','Y114','소켓');
/*!40000 ALTER TABLE `warehouse_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_standard_1`
--

DROP TABLE IF EXISTS `work_standard_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_standard_1` (
  `wk_code` varchar(50) NOT NULL DEFAULT '',
  `wk_name` varchar(50) DEFAULT NULL,
  `reg_date` datetime DEFAULT NULL,
  PRIMARY KEY (`wk_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_standard_1`
--

LOCK TABLES `work_standard_1` WRITE;
/*!40000 ALTER TABLE `work_standard_1` DISABLE KEYS */;
INSERT INTO `work_standard_1` VALUES ('AS-0001','AS','2022-02-23 16:07:49'),('AS-0003','휘파람','2022-02-23 16:08:41'),('AS-0004','상품관리','2022-02-23 16:11:10'),('DIS-0001','배선','2022-02-23 16:11:05'),('NKJ-0001','캔디','2022-02-23 15:49:22'),('NKJ-0002','휘파람','2022-02-23 16:07:24'),('NKJ-0003','테스트','2022-02-23 16:10:15'),('NKJ-0004','휘파람','2022-02-23 16:10:02'),('NKJ-0005','약국','2022-02-23 16:11:01'),('OP-0001','작동','2022-02-23 16:08:47'),('OP-0011','휘파람','2022-02-23 16:10:32'),('WRI-0001','수기','2022-02-23 16:06:42'),('WRI-0002','주문배송관리','2022-02-23 16:11:53');
/*!40000 ALTER TABLE `work_standard_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_standard_2`
--

DROP TABLE IF EXISTS `work_standard_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_standard_2` (
  `wk_no` int(11) NOT NULL AUTO_INCREMENT,
  `wk_code` varchar(50) NOT NULL DEFAULT '',
  `turn` int(11) DEFAULT NULL,
  `ro_name` varchar(170) DEFAULT NULL,
  `ro_code` varchar(30) DEFAULT NULL,
  `caution` varchar(30) DEFAULT NULL,
  `span_time_1` varchar(30) DEFAULT NULL,
  `span_time_2` char(1) DEFAULT NULL,
  `line` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`wk_no`),
  KEY `work_standard_2_FKIndex1` (`wk_code`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_standard_2`
--

LOCK TABLES `work_standard_2` WRITE;
/*!40000 ALTER TABLE `work_standard_2` DISABLE KEYS */;
INSERT INTO `work_standard_2` VALUES (1,'NKJ-0001',5,'포장하기','PAK-0001','','60','m','L'),(2,'WRI-0001',1,'쓰기','WRI-0001','잘쓰세요','12','m','22'),(3,'WRI-0001',2,'지우기','DEN-0001','잘지우세요','14','m','23'),(4,'NKJ-0002',1,'그대대에에에는휘파람휘히히히','DEL-0007','','2','m','1'),(5,'AS-0001',1,'검사하기','TRI-0001','','10','m','11'),(6,'AS-0001',2,'용접하기','DEL-0225','','20','m','12'),(7,'AS-0001',3,'포장하기','PAK-0001','','10','m','13'),(8,'AS-0003',2,'그대여여여 나의 장미여','DEL-0005','','4','m','2'),(9,'OP-0001',1,' 얼리기','FRI-0001','','5','m','65'),(10,'OP-0001',2,'용접하기','DEL-0225','','5','m','66'),(11,'OP-0001',3,'공정','PAK-0002','','10','m','67'),(12,'OP-0001',4,'포장하기','PAK-0001','','20','m','68'),(13,'NKJ-0004',3,'포장하기','PAK-0001','','6','m','3'),(14,'NKJ-0003',10,'용접하기','DEL-0225','','60','m','K'),(15,'OP-0011',56,'배달하기','DEL-0001','','123','m','1'),(16,'NKJ-0005',11,'용접하기','DEL-0225','','30','m','S'),(17,'DIS-0001',1,'본따기','BON-0003','','100','m','44'),(18,'DIS-0001',2,'검사하기','TRI-0001','','10','m','45'),(19,'DIS-0001',3,'그대여여여 나의 장미여','DEL-0005','','40','m','46'),(20,'AS-0004',1,'검사하기','TRI-0001','1','1','m','1'),(21,'WRI-0002',2,'검사하기','TRI-0001','2','2','m','2');
/*!40000 ALTER TABLE `work_standard_2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-24 15:47:51
