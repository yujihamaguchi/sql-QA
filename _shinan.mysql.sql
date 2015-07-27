-- MySQL dump 10.13  Distrib 5.1.58, for apple-darwin10.3.0 (i386)
--
-- Host: localhost    Database: shinan
-- ------------------------------------------------------
-- Server version	5.1.58-log

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
-- Table structure for table `Addresses`
--

DROP TABLE IF EXISTS `Addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE Addresses
(name VARCHAR(32),
 family_id INTEGER,
 address VARCHAR(32),
 PRIMARY KEY(name, family_id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Addresses`
--

LOCK TABLES `Addresses` WRITE;
/*!40000 ALTER TABLE `Addresses` DISABLE KEYS */;

INSERT INTO Addresses VALUES('前田 義明', '100', '東京都港区虎ノ門3-2-29');
INSERT INTO Addresses VALUES('前田 由美', '100', '東京都港区虎ノ門3-2-92');
INSERT INTO Addresses VALUES('加藤 茶',   '200', '東京都新宿区西新宿2-8-1');
INSERT INTO Addresses VALUES('加藤 勝',   '200', '東京都新宿区西新宿2-8-1');
INSERT INTO Addresses VALUES('ホームズ',  '300', 'ベーカー街221B');
INSERT INTO Addresses VALUES('ワトソン',  '400', 'ベーカー街221B');
/*!40000 ALTER TABLE `Addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ArrayTbl`
--

DROP TABLE IF EXISTS `ArrayTbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ArrayTbl` (
  `keycol` char(1) NOT NULL,
  `col1` int(11) DEFAULT NULL,
  `col2` int(11) DEFAULT NULL,
  `col3` int(11) DEFAULT NULL,
  `col4` int(11) DEFAULT NULL,
  `col5` int(11) DEFAULT NULL,
  `col6` int(11) DEFAULT NULL,
  `col7` int(11) DEFAULT NULL,
  `col8` int(11) DEFAULT NULL,
  `col9` int(11) DEFAULT NULL,
  `col10` int(11) DEFAULT NULL,
  PRIMARY KEY (`keycol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ArrayTbl`
--

LOCK TABLES `ArrayTbl` WRITE;
/*!40000 ALTER TABLE `ArrayTbl` DISABLE KEYS */;
INSERT INTO `ArrayTbl` VALUES ('B',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('E',NULL,3,NULL,1,9,NULL,NULL,9,NULL,NULL);
/*!40000 ALTER TABLE `ArrayTbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class_A`
--

DROP TABLE IF EXISTS `Class_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Class_A` (
  `name` varchar(16) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(16) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class_A`
--

LOCK TABLES `Class_A` WRITE;
/*!40000 ALTER TABLE `Class_A` DISABLE KEYS */;
INSERT INTO `Class_A` VALUES ('ブラウン',22,'東京'),('ラリー',19,'埼玉'),('ボギー',21,'千葉');
/*!40000 ALTER TABLE `Class_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Class_B`
--

DROP TABLE IF EXISTS `Class_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Class_B` (
  `name` varchar(16) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `city` varchar(16) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Class_B`
--

LOCK TABLES `Class_B` WRITE;
/*!40000 ALTER TABLE `Class_B` DISABLE KEYS */;
INSERT INTO `Class_B` VALUES ('和泉',18,'千葉'),('武田',20,'千葉'),('石川',19,'神奈川');
/*!40000 ALTER TABLE `Class_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CourseMaster`
--

DROP TABLE IF EXISTS `CourseMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CourseMaster` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(32) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CourseMaster`
--

LOCK TABLES `CourseMaster` WRITE;
/*!40000 ALTER TABLE `CourseMaster` DISABLE KEYS */;
INSERT INTO `CourseMaster` VALUES (1,'経理入門'),(2,'財務知識'),(3,'簿記検定'),(4,'税理士');
/*!40000 ALTER TABLE `CourseMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Courses`
--

DROP TABLE IF EXISTS `Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Courses` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `course` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`,`course`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Courses`
--

LOCK TABLES `Courses` WRITE;
/*!40000 ALTER TABLE `Courses` DISABLE KEYS */;
INSERT INTO `Courses` VALUES ('吉田','UNIX基礎'),('工藤','Java中級'),('工藤','SQL入門'),('渡辺','SQL入門'),('赤井','SQL入門'),('赤井','UNIX基礎'),('鈴木','SQL入門');
/*!40000 ALTER TABLE `Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Digits`
--

DROP TABLE IF EXISTS `Digits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Digits` (
  `digit` int(11) NOT NULL,
  PRIMARY KEY (`digit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Digits`
--

LOCK TABLES `Digits` WRITE;
/*!40000 ALTER TABLE `Digits` DISABLE KEYS */;
INSERT INTO `Digits` VALUES (0),(1),(2),(3),(4),(5),(6),(7),(8),(9);
/*!40000 ALTER TABLE `Digits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DistrictProducts`
--

DROP TABLE IF EXISTS `DistrictProducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DistrictProducts` (
  `district` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`district`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DistrictProducts`
--

LOCK TABLES `DistrictProducts` WRITE;
/*!40000 ALTER TABLE `DistrictProducts` DISABLE KEYS */;
INSERT INTO `DistrictProducts` VALUES ('東北','みかん',100),('東北','りんご',50),('東北','ぶどう',50),('東北','レモン',30),('関東','レモン',100),('関東','パイン',100),('関東','りんご',100),('関東','ぶどう',70),('関西','レモン',70),('関西','スイカ',30),('関西','りんご',20);
/*!40000 ALTER TABLE `DistrictProducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DistrictProducts2`
--

DROP TABLE IF EXISTS `DistrictProducts2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DistrictProducts2` (
  `district` varchar(16) NOT NULL,
  `name` varchar(16) NOT NULL,
  `price` int(11) NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  PRIMARY KEY (`district`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DistrictProducts2`
--

LOCK TABLES `DistrictProducts2` WRITE;
/*!40000 ALTER TABLE `DistrictProducts2` DISABLE KEYS */;
INSERT INTO `DistrictProducts2` VALUES ('東北','みかん',100,NULL),('東北','りんご',50,NULL),('東北','ぶどう',50,NULL),('東北','レモン',30,NULL),('関東','レモン',100,NULL),('関東','パイン',100,NULL),('関東','りんご',100,NULL),('関東','ぶどう',70,NULL),('関西','レモン',70,NULL),('関西','スイカ',30,NULL),('関西','りんご',20,NULL);
/*!40000 ALTER TABLE `DistrictProducts2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmpSkills`
--

DROP TABLE IF EXISTS `EmpSkills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmpSkills` (
  `emp` varchar(32) NOT NULL DEFAULT '',
  `skill` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`emp`,`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmpSkills`
--

LOCK TABLES `EmpSkills` WRITE;
/*!40000 ALTER TABLE `EmpSkills` DISABLE KEYS */;
INSERT INTO `EmpSkills` VALUES ('平井','C++'),('平井','Oracle'),('平井','Perl'),('平井','PHP'),('平井','UNIX'),('渡来','Oracle'),('相田','C#'),('相田','Java'),('相田','Oracle'),('相田','UNIX'),('神崎','Java'),('神崎','Oracle'),('神崎','UNIX'),('若田部','Perl');
/*!40000 ALTER TABLE `EmpSkills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Graduates`
--

DROP TABLE IF EXISTS `Graduates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Graduates` (
  `name` varchar(16) NOT NULL,
  `income` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Graduates`
--

LOCK TABLES `Graduates` WRITE;
/*!40000 ALTER TABLE `Graduates` DISABLE KEYS */;
INSERT INTO `Graduates` VALUES ('サンプソン',400000),('マイク',30000),('ホワイト',20000),('アーノルド',20000),('スミス',20000),('ロレンス',15000),('ハドソン',15000),('ケント',10000),('ベッカー',10000),('スコット',10000);
/*!40000 ALTER TABLE `Graduates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Greatests`
--

DROP TABLE IF EXISTS `Greatests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Greatests` (
  `_key` char(1) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `z` int(11) NOT NULL,
  PRIMARY KEY (`_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Greatests`
--

LOCK TABLES `Greatests` WRITE;
/*!40000 ALTER TABLE `Greatests` DISABLE KEYS */;
INSERT INTO `Greatests` VALUES ('A',1,2,3),('B',5,5,2),('C',4,7,1),('D',3,3,8);
/*!40000 ALTER TABLE `Greatests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Items`
--

DROP TABLE IF EXISTS `Items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Items` (
  `item` varchar(16) NOT NULL,
  PRIMARY KEY (`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Items`
--

LOCK TABLES `Items` WRITE;
/*!40000 ALTER TABLE `Items` DISABLE KEYS */;
INSERT INTO `Items` VALUES ('ビール'),('紙オムツ'),('自転車');
/*!40000 ALTER TABLE `Items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Materials`
--

DROP TABLE IF EXISTS `Materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Materials` (
  `center` varchar(32) NOT NULL,
  `receive_date` date NOT NULL,
  `material` varchar(32) NOT NULL,
  `orgland` varchar(32) NOT NULL,
  PRIMARY KEY (`center`,`receive_date`,`material`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Materials`
--

LOCK TABLES `Materials` WRITE;
/*!40000 ALTER TABLE `Materials` DISABLE KEYS */;
INSERT INTO `Materials` VALUES ('東京','2007-04-01','錫','チリ'),('東京','2007-04-12','亜鉛','タイ'),('東京','2007-05-17','アルミニウム','ブラジル'),('東京','2007-05-20','亜鉛','タイ'),('大阪','2007-04-20','銅','オーストラリア'),('大阪','2007-04-22','ニッケル','南アフリカ'),('大阪','2007-04-29','鉛','インド'),('名古屋','2007-03-15','チタン','ボリビア'),('名古屋','2007-04-01','炭素鋼','チリ'),('名古屋','2007-04-24','炭素鋼','アルゼンチン'),('名古屋','2007-05-02','マグネシウム','チリ'),('名古屋','2007-05-10','チタン','タイ'),('福岡','2007-05-10','亜鉛','アメリカ'),('福岡','2007-05-28','錫','ロシア');
/*!40000 ALTER TABLE `Materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Meetings`
--

DROP TABLE IF EXISTS `Meetings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Meetings` (
  `meeting` char(32) NOT NULL,
  `person` char(32) NOT NULL,
  PRIMARY KEY (`meeting`,`person`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Meetings`
--

LOCK TABLES `Meetings` WRITE;
/*!40000 ALTER TABLE `Meetings` DISABLE KEYS */;
INSERT INTO `Meetings` VALUES ('第１回','伊藤'),('第１回','坂東'),('第１回','水島'),('第２回','伊藤'),('第２回','宮田'),('第３回','坂東'),('第３回','宮田'),('第３回','水島');
/*!40000 ALTER TABLE `Meetings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OpenCourses`
--

DROP TABLE IF EXISTS `OpenCourses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OpenCourses` (
  `month` int(11) NOT NULL DEFAULT '0',
  `course_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`month`,`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OpenCourses`
--

LOCK TABLES `OpenCourses` WRITE;
/*!40000 ALTER TABLE `OpenCourses` DISABLE KEYS */;
INSERT INTO `OpenCourses` VALUES (200706,1),(200706,3),(200706,4),(200707,4),(200708,2),(200708,4);
/*!40000 ALTER TABLE `OpenCourses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Personnel`
--

DROP TABLE IF EXISTS `Personnel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Personnel` (
  `employee` varchar(32) NOT NULL DEFAULT '',
  `child_1` varchar(32) DEFAULT NULL,
  `child_2` varchar(32) DEFAULT NULL,
  `child_3` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`employee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Personnel`
--

LOCK TABLES `Personnel` WRITE;
/*!40000 ALTER TABLE `Personnel` DISABLE KEYS */;
INSERT INTO `Personnel` VALUES ('赤井','一郎','二郎','三郎'),('工藤','春子','夏子',NULL),('鈴木','夏子',NULL,NULL),('吉田',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Personnel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PopTbl`
--

DROP TABLE IF EXISTS `PopTbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PopTbl` (
  `pref_name` varchar(32) NOT NULL,
  `population` int(11) NOT NULL,
  PRIMARY KEY (`pref_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PopTbl`
--

LOCK TABLES `PopTbl` WRITE;
/*!40000 ALTER TABLE `PopTbl` DISABLE KEYS */;
INSERT INTO `PopTbl` VALUES ('徳島',100),('香川',200),('愛媛',150),('高知',200),('福岡',300),('佐賀',100),('長崎',200),('東京',400),('群馬',50);
/*!40000 ALTER TABLE `PopTbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PopTbl2`
--

DROP TABLE IF EXISTS `PopTbl2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PopTbl2` (
  `pref_name` varchar(32) NOT NULL DEFAULT '',
  `sex` char(1) NOT NULL,
  `population` int(11) NOT NULL,
  PRIMARY KEY (`pref_name`,`sex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PopTbl2`
--

LOCK TABLES `PopTbl2` WRITE;
/*!40000 ALTER TABLE `PopTbl2` DISABLE KEYS */;
INSERT INTO `PopTbl2` VALUES ('徳島','1',60),('徳島','2',40),('香川','1',100),('香川','2',100),('愛媛','1',100),('愛媛','2',50),('高知','1',100),('高知','2',100),('福岡','1',100),('福岡','2',200),('佐賀','1',20),('佐賀','2',80),('長崎','1',125),('長崎','2',125),('東京','1',250),('東京','2',150);
/*!40000 ALTER TABLE `PopTbl2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products` (
  `name` varchar(16) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES ('みかん',50),('バナナ',80),('りんご',50),('ぶどう',50),('スイカ',80),('レモン',30);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products2`
--

DROP TABLE IF EXISTS `Products2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products2` (
  `name` varchar(16) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products2`
--

LOCK TABLES `Products2` WRITE;
/*!40000 ALTER TABLE `Products2` DISABLE KEYS */;
INSERT INTO `Products2` VALUES
('りんご',50)
,('みかん',100)
,('みかん',100)
,('みかん',100)
,('バナナ',80);
/*!40000 ALTER TABLE `Products2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products3`
--

DROP TABLE IF EXISTS `Products3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products3` (
  `name` varchar(16) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products3`
--

LOCK TABLES `Products3` WRITE;
/*!40000 ALTER TABLE `Products3` DISABLE KEYS */;
INSERT INTO Products3 VALUES('りんご',  50);
INSERT INTO Products3 VALUES('みかん',  100);
INSERT INTO Products3 VALUES('ぶどう',  50);
INSERT INTO Products3 VALUES('スイカ',  80);
INSERT INTO Products3 VALUES('レモン',  30);
INSERT INTO Products3 VALUES('いちご',  100);
INSERT INTO Products3 VALUES('バナナ',  100);
/*!40000 ALTER TABLE `Products3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products4`
--

DROP TABLE IF EXISTS `Products4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Products4` (
  `name` varchar(16) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products4`
--

LOCK TABLES `Products4` WRITE;
/*!40000 ALTER TABLE `Products4` DISABLE KEYS */;
INSERT INTO Products4 VALUES('りんご',  50);
INSERT INTO Products4 VALUES('みかん',  100);
INSERT INTO Products4 VALUES('ぶどう',  50);
INSERT INTO Products4 VALUES('スイカ',  80);
INSERT INTO Products4 VALUES('レモン',  30);
INSERT INTO Products4 VALUES('バナナ',  50);
/*!40000 ALTER TABLE `Products4` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `Projects`
--

DROP TABLE IF EXISTS `Projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Projects` (
  `project_id` varchar(32) NOT NULL DEFAULT '',
  `step_nbr` int(11) NOT NULL DEFAULT '0',
  `status` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`project_id`,`step_nbr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projects`
--

LOCK TABLES `Projects` WRITE;
/*!40000 ALTER TABLE `Projects` DISABLE KEYS */;
INSERT INTO `Projects` VALUES ('AA100',0,'完了'),('AA100',1,'待機'),('AA100',2,'待機'),('B200',0,'待機'),('B200',1,'待機'),('CS300',0,'完了'),('CS300',1,'完了'),('CS300',2,'待機'),('CS300',3,'待機'),('DY400',0,'完了'),('DY400',1,'完了'),('DY400',2,'完了');
/*!40000 ALTER TABLE `Projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salaries`
--

DROP TABLE IF EXISTS `Salaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Salaries` (
  `name` varchar(10) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salaries`
--

LOCK TABLES `Salaries` WRITE;
/*!40000 ALTER TABLE `Salaries` DISABLE KEYS */;
INSERT INTO `Salaries` VALUES ('相田',300000),('神崎',270000),('木村',220000),('斎藤',290000);
/*!40000 ALTER TABLE `Salaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SalesHistory`
--

DROP TABLE IF EXISTS `SalesHistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SalesHistory` (
  `sale_date` date NOT NULL,
  `item_no` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`sale_date`,`item_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SalesHistory`
--

LOCK TABLES `SalesHistory` WRITE;
/*!40000 ALTER TABLE `SalesHistory` DISABLE KEYS */;
INSERT INTO `SalesHistory` VALUES ('2007-10-01',10,4),('2007-10-01',20,10),('2007-10-01',30,3),('2007-10-03',10,32),('2007-10-03',30,12),('2007-10-04',20,22),('2007-10-04',30,7);
/*!40000 ALTER TABLE `SalesHistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SeqTbl`
--

DROP TABLE IF EXISTS `SeqTbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SeqTbl` (
  `seq` int(11) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SeqTbl`
--

LOCK TABLES `SeqTbl` WRITE;
/*!40000 ALTER TABLE `SeqTbl` DISABLE KEYS */;
INSERT INTO `SeqTbl` VALUES (1,'ディック'),(2,'アン'),(3,'ライル'),(5,'カー'),(6,'マリー'),(8,'ベン');
/*!40000 ALTER TABLE `SeqTbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShopItems`
--

DROP TABLE IF EXISTS `ShopItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShopItems` (
  `shop` varchar(16) NOT NULL DEFAULT '',
  `item` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`shop`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShopItems`
--

LOCK TABLES `ShopItems` WRITE;
/*!40000 ALTER TABLE `ShopItems` DISABLE KEYS */;
INSERT INTO `ShopItems` VALUES ('仙台','カーテン'),('仙台','ビール'),('仙台','紙オムツ'),('仙台','自転車'),('大阪','テレビ'),('大阪','紙オムツ'),('大阪','自転車'),('東京','ビール'),('東京','紙オムツ'),('東京','自転車');
/*!40000 ALTER TABLE `ShopItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Skills`
--

DROP TABLE IF EXISTS `Skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Skills` (
  `skill` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`skill`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Skills`
--

LOCK TABLES `Skills` WRITE;
/*!40000 ALTER TABLE `Skills` DISABLE KEYS */;
INSERT INTO `Skills` VALUES ('Java'),('Oracle'),('UNIX');
/*!40000 ALTER TABLE `Skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SomeTable`
--

DROP TABLE IF EXISTS `SomeTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SomeTable` (
  `p_key` char(1) NOT NULL,
  `col_1` int(11) NOT NULL,
  `col_2` char(2) NOT NULL,
  PRIMARY KEY (`p_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SomeTable`
--

LOCK TABLES `SomeTable` WRITE;
/*!40000 ALTER TABLE `SomeTable` DISABLE KEYS */;
INSERT INTO `SomeTable` VALUES ('a',1,'あ'),('b',2,'い'),('c',3,'う');
/*!40000 ALTER TABLE `SomeTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentClub`
--

DROP TABLE IF EXISTS `StudentClub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StudentClub` (
  `std_id` int(11) NOT NULL DEFAULT '0',
  `club_id` int(11) NOT NULL DEFAULT '0',
  `club_name` varchar(32) DEFAULT NULL,
  `main_club_flg` char(1) DEFAULT NULL,
  PRIMARY KEY (`std_id`,`club_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentClub`
--

LOCK TABLES `StudentClub` WRITE;
/*!40000 ALTER TABLE `StudentClub` DISABLE KEYS */;
INSERT INTO `StudentClub` VALUES (100,1,'野球','Y'),(100,2,'吹奏楽','N'),(200,2,'吹奏楽','N'),(200,3,'バドミントン','Y'),(200,4,'サッカー','N'),(300,4,'サッカー','N'),(400,5,'水泳','N'),(500,6,'囲碁','N');
/*!40000 ALTER TABLE `StudentClub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Students` (
  `name` varchar(16) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES ('ブラウン',22),('ラリー',19),('ジョン',NULL),('ボギー',21);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SupParts`
--

DROP TABLE IF EXISTS `SupParts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SupParts` (
  `sup` char(32) NOT NULL,
  `part` char(32) NOT NULL,
  PRIMARY KEY (`sup`,`part`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SupParts`
--

LOCK TABLES `SupParts` WRITE;
/*!40000 ALTER TABLE `SupParts` DISABLE KEYS */;
INSERT INTO `SupParts` VALUES ('A','ナット'),('A','パイプ'),('A','ボルト'),('B','パイプ'),('B','ボルト'),('C','ナット'),('C','パイプ'),('C','ボルト'),('D','パイプ'),('D','ボルト'),('E','ナット'),('E','パイプ'),('E','ヒューズ'),('F','ヒューズ');
/*!40000 ALTER TABLE `SupParts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TblAge`
--

DROP TABLE IF EXISTS `TblAge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TblAge` (
  `age_class` char(1) NOT NULL DEFAULT '',
  `age_range` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`age_class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblAge`
--

LOCK TABLES `TblAge` WRITE;
/*!40000 ALTER TABLE `TblAge` DISABLE KEYS */;
INSERT INTO `TblAge` VALUES ('1','21～30歳'),('2','31～40歳'),('3','41～50歳');
/*!40000 ALTER TABLE `TblAge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TblPop`
--

DROP TABLE IF EXISTS `TblPop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TblPop` (
  `pref_name` varchar(30) NOT NULL DEFAULT '',
  `age_class` char(1) NOT NULL DEFAULT '',
  `sex_cd` char(1) NOT NULL DEFAULT '',
  `population` int(11) DEFAULT NULL,
  PRIMARY KEY (`pref_name`,`age_class`,`sex_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblPop`
--

LOCK TABLES `TblPop` WRITE;
/*!40000 ALTER TABLE `TblPop` DISABLE KEYS */;
INSERT INTO `TblPop` VALUES ('秋田','1','m',400),('秋田','3','m',1000),('秋田','1','f',800),('秋田','3','f',1000),('青森','1','m',700),('青森','1','f',500),('青森','3','f',800),('東京','1','m',900),('東京','1','f',1500),('東京','3','f',1200),('千葉','1','m',900),('千葉','1','f',1000),('千葉','3','f',900);
/*!40000 ALTER TABLE `TblPop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TblSex`
--

DROP TABLE IF EXISTS `TblSex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TblSex` (
  `sex_cd` char(1) NOT NULL DEFAULT '',
  `sex` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`sex_cd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TblSex`
--

LOCK TABLES `TblSex` WRITE;
/*!40000 ALTER TABLE `TblSex` DISABLE KEYS */;
INSERT INTO `TblSex` VALUES ('m','男'),('f','女');
/*!40000 ALTER TABLE `TblSex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tbl_A`
--

DROP TABLE IF EXISTS `Tbl_A`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tbl_A` (
  `keycol` char(1) NOT NULL,
  `col_1` int(11) DEFAULT NULL,
  `col_2` int(11) DEFAULT NULL,
  `col_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`keycol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tbl_A`
--

LOCK TABLES `Tbl_A` WRITE;
/*!40000 ALTER TABLE `Tbl_A` DISABLE KEYS */;
INSERT INTO `Tbl_A` VALUES ('A',NULL,3,4),('B',0,7,9),('C',NULL,NULL,NULL);
/*!40000 ALTER TABLE `Tbl_A` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tbl_B`
--

DROP TABLE IF EXISTS `Tbl_B`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tbl_B` (
  `keycol` char(1) NOT NULL,
  `col_1` int(11) DEFAULT NULL,
  `col_2` int(11) DEFAULT NULL,
  `col_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`keycol`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tbl_B`
--

LOCK TABLES `Tbl_B` WRITE;
/*!40000 ALTER TABLE `Tbl_B` DISABLE KEYS */;
INSERT INTO `Tbl_B` VALUES ('A',NULL,3,4),('B',0,7,9),('C',0,NULL,NULL);
/*!40000 ALTER TABLE `Tbl_B` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teams`
--

DROP TABLE IF EXISTS `Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Teams` (
  `member` varchar(32) NOT NULL,
  `team` char(1) NOT NULL,
  `age` int(11) NOT NULL,
  PRIMARY KEY (`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teams`
--

LOCK TABLES `Teams` WRITE;
/*!40000 ALTER TABLE `Teams` DISABLE KEYS */;
INSERT INTO `Teams` VALUES ('大木','A',28),('逸見','A',19),('新藤','A',23),('山田','B',40),('久本','B',29),('橋田','C',30),('野々宮','D',28),('鬼塚','D',28),('加藤','D',24),('新城','D',22);
/*!40000 ALTER TABLE `Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestSal`
--

DROP TABLE IF EXISTS `TestSal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TestSal` (
  `sex` char(1) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestSal`
--

LOCK TABLES `TestSal` WRITE;
/*!40000 ALTER TABLE `TestSal` DISABLE KEYS */;
INSERT INTO `TestSal` VALUES ('1',200000),('1',300000),('1',NULL),('2',200000),('2',300000),('1',300000);
/*!40000 ALTER TABLE `TestSal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TestScores`
--

DROP TABLE IF EXISTS `TestScores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TestScores` (
  `student_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(32) NOT NULL DEFAULT '',
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`,`subject`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TestScores`
--

LOCK TABLES `TestScores` WRITE;
/*!40000 ALTER TABLE `TestScores` DISABLE KEYS */;
INSERT INTO `TestScores` VALUES (100,'算数',100),(100,'国語',80),(100,'理科',80),(200,'算数',80),(200,'国語',95),(300,'算数',40),(300,'国語',90),(300,'社会',55),(400,'算数',80);
/*!40000 ALTER TABLE `TestScores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-02-01  7:02:28
