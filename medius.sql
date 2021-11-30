CREATE DATABASE  IF NOT EXISTS `medius` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `medius`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: medius
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add variant',7,'add_variant'),(26,'Can change variant',7,'change_variant'),(27,'Can delete variant',7,'delete_variant'),(28,'Can view variant',7,'view_variant'),(29,'Can add product',8,'add_product'),(30,'Can change product',8,'change_product'),(31,'Can delete product',8,'delete_product'),(32,'Can view product',8,'view_product'),(33,'Can add product variant',9,'add_productvariant'),(34,'Can change product variant',9,'change_productvariant'),(35,'Can delete product variant',9,'delete_productvariant'),(36,'Can view product variant',9,'view_productvariant'),(37,'Can add product variant price',10,'add_productvariantprice'),(38,'Can change product variant price',10,'change_productvariantprice'),(39,'Can delete product variant price',10,'delete_productvariantprice'),(40,'Can view product variant price',10,'view_productvariantprice'),(41,'Can add product image',11,'add_productimage'),(42,'Can change product image',11,'change_productimage'),(43,'Can delete product image',11,'delete_productimage'),(44,'Can view product image',11,'view_productimage'),(45,'Can add product product',12,'add_productproduct'),(46,'Can change product product',12,'change_productproduct'),(47,'Can delete product product',12,'delete_productproduct'),(48,'Can view product product',12,'view_productproduct'),(49,'Can add product productimage',13,'add_productproductimage'),(50,'Can change product productimage',13,'change_productproductimage'),(51,'Can delete product productimage',13,'delete_productproductimage'),(52,'Can view product productimage',13,'view_productproductimage'),(53,'Can add product productvariant',14,'add_productproductvariant'),(54,'Can change product productvariant',14,'change_productproductvariant'),(55,'Can delete product productvariant',14,'delete_productproductvariant'),(56,'Can view product productvariant',14,'view_productproductvariant'),(57,'Can add product productvariantprice',15,'add_productproductvariantprice'),(58,'Can change product productvariantprice',15,'change_productproductvariantprice'),(59,'Can delete product productvariantprice',15,'delete_productproductvariantprice'),(60,'Can view product productvariantprice',15,'view_productproductvariantprice'),(61,'Can add auth group',16,'add_authgroup'),(62,'Can change auth group',16,'change_authgroup'),(63,'Can delete auth group',16,'delete_authgroup'),(64,'Can view auth group',16,'view_authgroup'),(65,'Can add auth group permissions',17,'add_authgrouppermissions'),(66,'Can change auth group permissions',17,'change_authgrouppermissions'),(67,'Can delete auth group permissions',17,'delete_authgrouppermissions'),(68,'Can view auth group permissions',17,'view_authgrouppermissions'),(69,'Can add auth permission',18,'add_authpermission'),(70,'Can change auth permission',18,'change_authpermission'),(71,'Can delete auth permission',18,'delete_authpermission'),(72,'Can view auth permission',18,'view_authpermission'),(73,'Can add auth user',19,'add_authuser'),(74,'Can change auth user',19,'change_authuser'),(75,'Can delete auth user',19,'delete_authuser'),(76,'Can view auth user',19,'view_authuser'),(77,'Can add auth user groups',20,'add_authusergroups'),(78,'Can change auth user groups',20,'change_authusergroups'),(79,'Can delete auth user groups',20,'delete_authusergroups'),(80,'Can view auth user groups',20,'view_authusergroups'),(81,'Can add auth user user permissions',21,'add_authuseruserpermissions'),(82,'Can change auth user user permissions',21,'change_authuseruserpermissions'),(83,'Can delete auth user user permissions',21,'delete_authuseruserpermissions'),(84,'Can view auth user user permissions',21,'view_authuseruserpermissions'),(85,'Can add django admin log',22,'add_djangoadminlog'),(86,'Can change django admin log',22,'change_djangoadminlog'),(87,'Can delete django admin log',22,'delete_djangoadminlog'),(88,'Can view django admin log',22,'view_djangoadminlog'),(89,'Can add django content type',23,'add_djangocontenttype'),(90,'Can change django content type',23,'change_djangocontenttype'),(91,'Can delete django content type',23,'delete_djangocontenttype'),(92,'Can view django content type',23,'view_djangocontenttype'),(93,'Can add django migrations',24,'add_djangomigrations'),(94,'Can change django migrations',24,'change_djangomigrations'),(95,'Can delete django migrations',24,'delete_djangomigrations'),(96,'Can view django migrations',24,'view_djangomigrations'),(97,'Can add django session',25,'add_djangosession'),(98,'Can change django session',25,'change_djangosession'),(99,'Can delete django session',25,'delete_djangosession'),(100,'Can view django session',25,'view_djangosession');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$260000$wJpcrXlJH77bU9155Yq3PI$vLIYNlaDf9oE+cu56ql8O79IWNGm1weyOApmEGRn4Qc=','2021-11-16 15:26:36.389637',1,'rifat','','','',1,1,'2021-11-16 11:18:16.318888'),(2,'pbkdf2_sha256$260000$I4uS1ZWbjEvgmhuKMnM4nk$zhsPmf11t0zQ06rnVg5v5mvwD1sQ3EcNSpgooeINnhY=','2021-11-28 17:55:49.006322',1,'admin','','','',1,1,'2021-11-28 17:55:19.575809');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-11-28 18:23:55.428582','4','Weight',1,'[{\"added\": {}}]',9,2),(2,'2021-11-28 18:24:04.786124','4','Weight',2,'[{\"changed\": {\"fields\": [\"Description\"]}}]',9,2),(3,'2021-11-28 18:28:35.952032','5','Brand',1,'[{\"added\": {}}]',9,2),(4,'2021-11-28 18:29:39.533857','6','Quality',1,'[{\"added\": {}}]',9,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(16,'authentication','authgroup'),(17,'authentication','authgrouppermissions'),(18,'authentication','authpermission'),(19,'authentication','authuser'),(20,'authentication','authusergroups'),(21,'authentication','authuseruserpermissions'),(22,'authentication','djangoadminlog'),(23,'authentication','djangocontenttype'),(24,'authentication','djangomigrations'),(25,'authentication','djangosession'),(5,'contenttypes','contenttype'),(8,'product','product'),(11,'product','productimage'),(12,'product','productproduct'),(13,'product','productproductimage'),(14,'product','productproductvariant'),(15,'product','productproductvariantprice'),(9,'product','productvariant'),(10,'product','productvariantprice'),(7,'product','variant'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-11-16 11:16:32.188806'),(2,'auth','0001_initial','2021-11-16 11:16:32.528699'),(3,'admin','0001_initial','2021-11-16 11:16:32.629375'),(4,'admin','0002_logentry_remove_auto_add','2021-11-16 11:16:32.637100'),(5,'admin','0003_logentry_add_action_flag_choices','2021-11-16 11:16:32.646402'),(6,'contenttypes','0002_remove_content_type_name','2021-11-16 11:16:32.703827'),(7,'auth','0002_alter_permission_name_max_length','2021-11-16 11:16:32.736716'),(8,'auth','0003_alter_user_email_max_length','2021-11-16 11:16:32.770379'),(9,'auth','0004_alter_user_username_opts','2021-11-16 11:16:32.778047'),(10,'auth','0005_alter_user_last_login_null','2021-11-16 11:16:32.805815'),(11,'auth','0006_require_contenttypes_0002','2021-11-16 11:16:32.808636'),(12,'auth','0007_alter_validators_add_error_messages','2021-11-16 11:16:32.817262'),(13,'auth','0008_alter_user_username_max_length','2021-11-16 11:16:32.855928'),(14,'auth','0009_alter_user_last_name_max_length','2021-11-16 11:16:32.902515'),(15,'auth','0010_alter_group_name_max_length','2021-11-16 11:16:32.947091'),(16,'auth','0011_update_proxy_permissions','2021-11-16 11:16:32.955276'),(17,'auth','0012_alter_user_first_name_max_length','2021-11-16 11:16:32.988718'),(18,'product','0001_initial','2021-11-16 11:16:33.002210'),(19,'product','0002_product_productvariant_productvariantprice','2021-11-16 11:16:33.479797'),(20,'product','0003_auto_20211101_0823','2021-11-16 11:16:33.803288'),(21,'sessions','0001_initial','2021-11-16 11:16:33.827528'),(22,'product','0004_auto_20211116_1512','2021-11-16 15:12:36.402784'),(23,'authentication','0001_initial','2021-11-28 17:55:26.994145');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('007pyg84vpa73y6i97dwfjjktjbvxue2','.eJxVjEEOwiAQRe_C2pCBju3UpXvPQIAZpGogKe3KeHfbpAvd_vfefyvn1yW7tcnsJlYXZdTpdws-PqXsgB--3KuOtSzzFPSu6IM2fassr-vh_h1k3_JWR8YIQwIvYsLZGmIkQ8ISAEjACsSeOgyQfBfMOOJgETapT4RIIOrzBe-TN5Y:1mn0Be:p7pQp4O4afNf3WDLcf9XXmSH1BzTketG2LCAXa-r4oM','2021-11-30 15:15:54.543203'),('b7gxsp85il3wui7hd52gfaxydifcp73f','.eJxVjEEOwiAQRe_C2pCBju3UpXvPQIAZpGogKe3KeHfbpAvd_vfefyvn1yW7tcnsJlYXZdTpdws-PqXsgB--3KuOtSzzFPSu6IM2fassr-vh_h1k3_JWR8YIQwIvYsLZGmIkQ8ISAEjACsSeOgyQfBfMOOJgETapT4RIIOrzBe-TN5Y:1mmwTw:izlOSY4cbooLVCPxmKoME2A2IsfA4KZ3QGq5F7CrE-8','2021-11-30 11:18:32.331986'),('nay27x7ls8vow8dbmuzcqo8cp1mlghcf','.eJxVjEEOwiAQRe_C2pCBju3UpXvPQIAZpGogKe3KeHfbpAvd_vfefyvn1yW7tcnsJlYXZdTpdws-PqXsgB--3KuOtSzzFPSu6IM2fassr-vh_h1k3_JWR8YIQwIvYsLZGmIkQ8ISAEjACsSeOgyQfBfMOOJgETapT4RIIOrzBe-TN5Y:1mn0M0:foiZT-5qcClgdRDPZtR1QeKgqMffKmnZDdSbDJjD5uw','2021-11-30 15:26:36.391823'),('t6o4h6t5c5ja9i2c5r7tculx6nex47le','.eJxVjMsOgjAQRf-la9NU2mmnLt3zDWQeRVADCYWV8d-VhIVu7znnvkxH2zp0Wy1LN6q5mMacfjcmeZRpB3qn6TZbmad1Gdnuij1ote2s5Xk93L-DgerwrVEp6hkyBoAQgVMRHym5gOzQS1TC4DkRZJcKShEWjw2HvhfIOal5fwDUajfx:1mrOOz:7kFcnTjQF-k7Fw313m2F8DsTqEcW73L6sDnya14kV7M','2021-12-12 17:55:49.010800'),('zao25uixtauyl0dgwl3aa232daeuxqri','.eJxVjEEOwiAQRe_C2pCBju3UpXvPQIAZpGogKe3KeHfbpAvd_vfefyvn1yW7tcnsJlYXZdTpdws-PqXsgB--3KuOtSzzFPSu6IM2fassr-vh_h1k3_JWR8YIQwIvYsLZGmIkQ8ISAEjACsSeOgyQfBfMOOJgETapT4RIIOrzBe-TN5Y:1mn0GK:W_WHTY3GtO7iCfpRszU0KW_AaHj9TPi2KorI5WiVgdk','2021-11-30 15:20:44.827544');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_product`
--

DROP TABLE IF EXISTS `product_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_product_sku_9b46bb72` (`sku`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_product`
--

LOCK TABLES `product_product` WRITE;
/*!40000 ALTER TABLE `product_product` DISABLE KEYS */;
INSERT INTO `product_product` VALUES (1,'White Short Sleeve Pure Cotton Round Neck T-Shirt for Men','i100572279-s1014529290','Product details of White Short Sleeve Pure Cotton Round Neck T-Shirt for Men'),(2,'Premium Quality Modern Cotton Sports Bra with Long Leggings Yoga Set for Women','190917638_BD-1151935346','A sports bra is a bra that provides support to a woman\'sbreasts during physical exercise. Sturdier than typical bras, they minimizebreast movement and alleviate discomfort. Many women wear sports bras to reducepain and physical discomfort caused by breast movement during exercise. Somesports bras are designed to be worn as outerwear during exercise such asjogging. There are also sports bras with extra padding for exercises thatinvolve some kind of trauma to the breasts. Sports bras can either encapsulateor compress breasts. Bras that encapsulate breasts have molded cups designed tofit around the majority of each breast. Bras that compress are designed torestrict movement by holding the breasts firmly against the body.Encapsulation-type bras are generally more effective at reducing discomfort,while compression bras may be more effective for high-intensity activities.Themost common sports bra is basically designed like a tank top with the bottomhalf cut off. Other designs use gel and water pads, silver fibres, and airbags. A stitch less bra was made by Wacoal, was molded, compressed, and shaped.A compressed bra is designed to push the breasts against the chest to reducemovement and bounce. Other bras are knitted in circular patterns, giving varyingstretch and support. A common design uses a stretchable, absorbent fabric suchas Lycra designed to reduce irritation by drawing perspiration away from theskin.Sports bras are also worn by women after certain surgical procedures. Inthose situations, a front-closing sports bra with a compression, seamless cupis recommended for healing and comfort. Certain fabrics such as Lycra have beenfound to help reduce swelling and help \"even-out\" a bust line thathas been altered by a surgical procedure.'),(3,'3 Pcs T-shirt for Men White Color','3-i100779700-s1119971897','This short sleeve crew neck T-shirt comes with excellent quality, very comfortable and cozy. This genuine organic cotton fabric makes you delighted and obviously happy.'),(4,'Premium Quality','190917638_BD-11519353461212','typical bras, they minimizebreast movement and alleviate discomfort. Many women wear sports bras to reducepain and physical discomfort caused by breast movement during exercise. Somesports bras are designed to be worn as outerwear during exercise such asjogging. There are also sports bras with extra padding for exercises thatinvolve some kind of trauma to the breasts. Sports bras can either encapsulateor compress breasts. Bras that encapsulate breasts have molded cups designed tofit around the majority of each breast. Bras that compress are designed torestrict movement by holding the breasts firmly against the body.Encapsulation-type bras are generally more effective at reducing discomfort,while compression bras may be more effective for high-intensity activities.Themost common sports bra is basically designed like a tank top with the bottomhalf cut off. Other designs use gel and water pads, silver fibres, and airbags. A stitch less bra was made by Wacoal, was molded, compressed, and shaped.A compressed bra is designed to push the breasts against the chest to reducemovement and bounce. Other bras are knitted in circular patterns, giving varyingstretch and support. A common design uses a stretchable, absorbent fabric suchas Lycra designed to reduce irritation by drawing perspiration away from theskin.Sports bras are also worn by women after certain surgical procedures. Inthose situations, a front-closing sports bra with a compression, seamless cupis recommended for healing and comfort. Certain fabrics such as Lycra have beenfound to help reduce swelling and help \"even-out\" a bust line thathas been altered by a surgical procedure.'),(5,'Bengal Design Bucket 20 Lt With Lid Smb71206','3-i100779700-i485328','This short sleeve crew neck T-shirt comes with excellent quality, very comfortable and cozy. This genuine organic cotton fabric makes you delighted and obviously happy.'),(6,'Rattan Basket Small-Dark','3-i100779700-i485328','This short sleeve crew neck T-shirt comes with excellent quality, very comfortable and cozy. This genuine organic cotton fabric makes you delighted and obviously happy.'),(7,'3. Modern Cotton Sports Bra with Long Leggings Yoga Set for Women','190917638_BD-11519353461212433','Somesports bras are designed to be worn as outerwear during exercise such asjogging. There are also sports bras with extra padding for exercises thatinvolve some kind of trauma to the breasts. Sports bras can either encapsulateor compress breasts. Bras that encapsulate breasts have molded cups designed tofit around the majority of each breast. Bras that compress are designed torestrict movement by holding the breasts firmly against the body.Encapsulation-type bras are generally more effective at reducing discomfort,while compression bras may be more effective for high-intensity activities.Themost common sports bra is basically designed like a tank top with the bottomhalf cut off. Other designs use gel and water pads, silver fibres, and airbags. A stitch less bra was made by Wacoal, was molded, compressed, and shaped.A compressed bra is designed to push the breasts against the chest to reducemovement and bounce. Other bras are knitted in circular patterns, giving varyingstretch and support. A common design uses a stretchable, absorbent fabric suchas Lycra designed to reduce irritation by drawing perspiration away from theskin.Sports bras are also worn by women after certain surgical procedures. Inthose situations, a front-closing sports bra with a compression, seamless cupis recommended for healing and comfort. Certain fabrics such as Lycra have beenfound to help reduce swelling and help \"even-out\" a bust line thathas been altered by a surgical procedure.'),(8,'4. Modern Cotton Sports Bra with Long Leggings Yoga Set for Women','190917638_BD-115193534612124334343','There are also sports bras with extra padding for exercises thatinvolve some kind of trauma to the breasts. Sports bras can either encapsulateor compress breasts. Bras that encapsulate breasts have molded cups designed tofit around the majority of each breast. Bras that compress are designed torestrict movement by holding the breasts firmly against the body.Encapsulation-type bras are generally more effective at reducing discomfort,while compression bras may be more effective for high-intensity activities.Themost common sports bra is basically designed like a tank top with the bottomhalf cut off. Other designs use gel and water pads, silver fibres, and airbags. A stitch less bra was made by Wacoal, was molded, compressed, and shaped.A compressed bra is designed to push the breasts against the chest to reducemovement and bounce. Other bras are knitted in circular patterns, giving varyingstretch and support. A common design uses a stretchable, absorbent fabric suchas Lycra designed to reduce irritation by drawing perspiration away from theskin.Sports bras are also worn by women after certain surgical procedures. Inthose situations, a front-closing sports bra with a compression, seamless cupis recommended for healing and comfort. Certain fabrics such as Lycra have beenfound to help reduce swelling and help \"even-out\" a bust line thathas been altered by a surgical procedure.'),(9,'Bengal Rattan Paddle Bin - Dark Brown 7530','75308-i2434200-s625970','Product Type: Bin\nColor: Dark Brown'),(10,'5. Modern Cotton Sports Bra with Long Leggings Yoga Set for Women','190917638_BD-1','Sports bras can either encapsulateor compress breasts. Bras that encapsulate breasts have molded cups designed tofit around the majority of each breast. Bras that compress are designed torestrict movement by holding the breasts firmly against the body.Encapsulation-type bras are generally more effective at reducing discomfort,while compression bras may be more effective for high-intensity activities.Themost common sports bra is basically designed like a tank top with the bottomhalf cut off. Other designs use gel and water pads, silver fibres, and airbags. A stitch less bra was made by Wacoal, was molded, compressed, and shaped.A compressed bra is designed to push the breasts against the chest to reducemovement and bounce. Other bras are knitted in circular patterns, giving varyingstretch and support. A common design uses a stretchable, absorbent fabric suchas Lycra designed to reduce irritation by drawing perspiration away from theskin.Sports bras are also worn by women after certain surgical procedures. Inthose situations, a front-closing sports bra with a compression, seamless cupis recommended for healing and comfort. Certain fabrics such as Lycra have beenfound to help reduce swelling and help \"even-out\" a bust line thathas been altered by a surgical procedure.'),(11,'Bengal Rattan Laundry Basket - Off White 76203','75308-i24-off-white-76203-i8162','Product Type: Bin\nColor: Dark Brown'),(12,'Bengal Bean Laundry Basket 76205','dry-basket-76205-i101396625-s1','Contemporary design\nSturdy construction\nComfort grip handle'),(13,'Utility Basket- 76602 Combo of 2','02-i816266-s1128','Combo of 5\nStore anything\nPerfect for the home and office usage'),(14,'6. Modern Cotton Sports Bra with Long Leggings Yoga Set for Women','190917638_BD-154564','44444. Sports bras can either encapsulateor compress breasts. Bras that encapsulate breasts have molded cups designed tofit around the majority of each breast. Bras that compress are designed torestrict movement by holding the breasts firmly against the body.Encapsulation-type bras are generally more effective at reducing discomfort,while compression bras may be more effective for high-intensity activities.Themost common sports bra is basically designed like a tank top with the bottomhalf cut off. Other designs use gel and water pads, silver fibres, and airbags. A stitch less bra was made by Wacoal, was molded, compressed, and shaped.A compressed bra is designed to push the breasts against the chest to reducemovement and bounce. Other bras are knitted in circular patterns, giving varyingstretch and support. A common design uses a stretchable, absorbent fabric suchas Lycra designed to reduce irritation by drawing perspiration away from theskin.Sports bras are also worn by women after certain surgical procedures. Inthose situations, a front-closing sports bra with a compression, seamless cupis recommended for healing and comfort. Certain fabrics such as Lycra have beenfound to help reduce swelling and help \"even-out\" a bust line thathas been altered by a surgical procedure.'),(15,'Bengal Flapper Food Box 940 ml - 78402','02-i816266-s3435278','Combo of 5'),(16,'Bengal 3pcs 8\" Planter with Tray - 71501','02-i816266-i2434208','Product Type: Planter\nColor: Terracotta'),(17,'Bengal Tulip Coffee Mug 74210- Dark Brown','l816382-i816382','Combo of 2\nFood-grade\nTop quality'),(18,'Bengal Picnic Jug With Tea Cup 4 pcs Set 73109-11','l81631-i10593','1. Colorful design\n2. Superior quality'),(19,'10. Sports Bra with Long Leggings Yoga Set for Women','190917638_BD-154564344254654ff','88888 Sports bras can either encapsulateor compress breasts. Bras that encapsulate breasts have molded cups designed tofit around the majority of each breast. Bras that compress are designed torestrict movement by holding the breasts firmly against the body.Encapsulation-type bras are generally more effective at reducing discomfort,while compression bras may be more effective for high-intensity activities.Themost common sports bra is basically designed like a tank top with the bottomhalf cut off. Other designs use gel and water pads, silver fibres, and airbags. A stitch less bra was made by Wacoal, was molded, compressed, and shaped.A compressed bra is designed to push the breasts against the chest to reducemovement and bounce. Other bras are knitted in circular patterns, giving varyingstretch and support. A common design uses a stretchable, absorbent fabric suchas Lycra designed to reduce irritation by drawing perspiration away from theskin.Sports bras are also worn by women after certain surgical procedures. Inthose situations, a front-closing sports bra with a compression, seamless cupis recommended for healing and comfort. Certain fabrics such as Lycra have beenfound to help reduce swelling and help \"even-out\" a bust line thathas been altered by a surgical procedure.');
/*!40000 ALTER TABLE `product_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productimage`
--

DROP TABLE IF EXISTS `product_productimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_productimage` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `file_path` varchar(200) NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_productimage_product_id_544084bb_fk_product_product_id` (`product_id`),
  CONSTRAINT `product_productimage_product_id_544084bb_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productimage`
--

LOCK TABLES `product_productimage` WRITE;
/*!40000 ALTER TABLE `product_productimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_productimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productvariant`
--

DROP TABLE IF EXISTS `product_productvariant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_productvariant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `variant_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `variant_title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_productvariant_product_id_43c5a310_fk_product_product_id` (`product_id`),
  KEY `product_productvariant_variant_id_517fe584` (`variant_id`),
  CONSTRAINT `product_productvariant_product_id_43c5a310_fk_product_product_id` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `product_productvariant_variant_id_517fe584_fk_product_variant_id` FOREIGN KEY (`variant_id`) REFERENCES `product_variant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productvariant`
--

LOCK TABLES `product_productvariant` WRITE;
/*!40000 ALTER TABLE `product_productvariant` DISABLE KEYS */;
INSERT INTO `product_productvariant` VALUES (1,1,1,'Red'),(2,1,1,'Yollow'),(3,1,1,'Blue'),(4,2,1,'S'),(5,2,1,'L'),(6,2,1,'XL'),(7,3,1,'O-nick'),(8,1,2,'red'),(9,1,2,'yellow'),(10,2,2,'M'),(11,2,2,'L'),(12,1,3,'Red'),(13,1,3,'Yollow'),(14,1,3,'Blue'),(15,1,3,'Black'),(16,2,3,'S'),(17,2,3,'L'),(18,2,3,'XL'),(19,1,4,'red'),(20,1,4,'yellow'),(21,1,4,'black'),(22,2,4,'M'),(23,2,4,'L'),(24,2,4,'XL'),(25,1,5,'Red'),(26,1,5,'Yollow'),(27,1,5,'Blue'),(28,1,5,'Black'),(29,2,5,'S'),(30,2,5,'L'),(31,2,5,'XL'),(32,3,5,'MyStyle'),(33,3,5,'YourStyle'),(34,1,6,'Red'),(35,1,6,'Yollow'),(36,1,6,'Blue'),(37,1,6,'Black'),(38,2,6,'S'),(39,2,6,'L'),(40,2,6,'XL'),(41,3,6,'MyStyle'),(42,3,6,'YourStyle'),(43,1,7,'black'),(44,1,7,'white'),(45,2,7,'M'),(46,2,7,'L'),(47,1,8,'white'),(48,1,8,'red'),(49,2,8,'M'),(50,2,8,'L'),(51,3,8,'fullo-sleeve'),(52,1,9,'Red'),(53,1,9,'Black'),(54,2,9,'XL'),(55,2,9,'L'),(56,2,9,'M'),(57,3,9,'NewStyle'),(58,3,9,'OldStyle'),(59,1,10,'red'),(60,1,10,'yellow'),(61,1,10,'black'),(62,2,10,'M'),(63,3,10,'fullo-sleeve'),(64,1,11,'Red'),(65,1,11,'Black'),(66,2,11,'XL'),(67,2,11,'L'),(68,2,11,'M'),(69,3,11,'NewStyle'),(70,3,11,'OldStyle'),(71,1,12,'Red'),(72,1,12,'Black'),(73,2,12,'XL'),(74,2,12,'L'),(75,2,12,'M'),(76,3,12,'NewStyle'),(77,3,12,'OldStyle'),(78,1,13,'Red'),(79,1,13,'Black'),(80,2,13,'XL'),(81,2,13,'L'),(82,2,13,'M'),(83,3,13,'NewStyle'),(84,3,13,'OldStyle'),(85,1,14,'red'),(86,1,14,'black'),(87,2,14,'M'),(88,2,14,'XLL'),(89,3,14,'half-sleeve'),(90,1,15,'Red'),(91,1,15,'Black'),(92,2,15,'XL'),(93,2,15,'L'),(94,2,15,'M'),(95,3,15,'NewStyle'),(96,3,15,'OldStyle'),(97,1,16,'Red'),(98,1,16,'Black'),(99,2,16,'XL'),(100,2,16,'L'),(101,2,16,'M'),(102,3,16,'NewStyle'),(103,3,16,'OldStyle'),(104,1,17,'Red'),(105,1,17,'Black'),(106,2,17,'XL'),(107,2,17,'L'),(108,2,17,'M'),(109,3,17,'NewStyle'),(110,3,17,'OldStyle'),(111,1,18,'Red'),(112,1,18,'Black'),(113,2,18,'XL'),(114,2,18,'L'),(115,2,18,'M'),(116,3,18,'NewStyle'),(117,3,18,'OldStyle'),(118,1,19,'red'),(119,1,19,'yellow'),(120,2,19,'M'),(121,2,19,'XL'),(122,2,19,'XLL'),(123,3,19,'half-sleeve'),(124,3,19,'golgola');
/*!40000 ALTER TABLE `product_productvariant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_productvariantprice`
--

DROP TABLE IF EXISTS `product_productvariantprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_productvariantprice` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `stock` double NOT NULL,
  `product_id` bigint NOT NULL,
  `product_variant_one_id` bigint DEFAULT NULL,
  `product_variant_three_id` bigint DEFAULT NULL,
  `product_variant_two_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_productvaria_product_id_6ff3138e_fk_product_p` (`product_id`),
  KEY `product_productvaria_product_variant_one__d1353e37_fk_product_p` (`product_variant_one_id`),
  KEY `product_productvaria_product_variant_thre_2f4f0542_fk_product_p` (`product_variant_three_id`),
  KEY `product_productvaria_product_variant_two__7949a6f9_fk_product_p` (`product_variant_two_id`),
  CONSTRAINT `product_productvaria_product_id_6ff3138e_fk_product_p` FOREIGN KEY (`product_id`) REFERENCES `product_product` (`id`),
  CONSTRAINT `product_productvaria_product_variant_one__d1353e37_fk_product_p` FOREIGN KEY (`product_variant_one_id`) REFERENCES `product_productvariant` (`id`),
  CONSTRAINT `product_productvaria_product_variant_thre_2f4f0542_fk_product_p` FOREIGN KEY (`product_variant_three_id`) REFERENCES `product_productvariant` (`id`),
  CONSTRAINT `product_productvaria_product_variant_two__7949a6f9_fk_product_p` FOREIGN KEY (`product_variant_two_id`) REFERENCES `product_productvariant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_productvariantprice`
--

LOCK TABLES `product_productvariantprice` WRITE;
/*!40000 ALTER TABLE `product_productvariantprice` DISABLE KEYS */;
INSERT INTO `product_productvariantprice` VALUES (1,120,11,1,1,7,4),(2,125,11,1,1,7,5),(3,130,22,1,1,7,6),(4,130,23,1,2,7,4),(5,140,56,1,2,7,5),(6,125,57,1,2,7,6),(7,130,60,1,3,7,4),(8,135,65,1,3,7,5),(9,140,83,1,3,7,6),(10,500,6,2,1,NULL,10),(11,500,6,2,1,NULL,5),(12,550,2,2,9,NULL,10),(13,600,1,2,9,NULL,5),(14,199,34,3,1,NULL,4),(15,210,10,3,1,NULL,5),(16,212,22,3,1,NULL,6),(17,240,120,3,2,NULL,4),(18,195,110,3,2,NULL,5),(19,200,88,3,2,NULL,6),(20,197,12,3,3,NULL,4),(21,198,11,3,3,NULL,5),(22,178,22,3,3,NULL,6),(23,180,23,3,15,NULL,4),(24,190,11,3,15,NULL,5),(25,197,12,3,15,NULL,6),(26,100,2,4,1,NULL,10),(27,200,3,4,1,NULL,5),(28,700,5,4,1,NULL,6),(29,900,3,4,9,NULL,10),(30,700,3,4,9,NULL,5),(31,700,5,4,9,NULL,6),(32,500,2,4,15,NULL,10),(33,900,9,4,15,NULL,5),(34,200,2,4,15,NULL,6),(35,55665,6555,5,1,32,4),(36,5655,6,5,1,33,4),(37,5,6565,5,1,32,5),(38,65,65,5,1,33,5),(39,65,6,5,1,32,6),(40,56,56,5,1,33,6),(41,56,56,5,2,32,4),(42,56,56,5,2,33,4),(43,56,5,5,2,32,5),(44,65,65,5,2,33,5),(45,65,65,5,2,32,6),(46,65,65,5,2,33,6),(47,65,65,5,3,32,4),(48,65,65,5,3,33,4),(49,65,6,5,3,32,5),(50,65,65,5,3,33,5),(51,6,65,5,3,32,6),(52,65,65,5,3,33,6),(53,65,65,5,15,32,4),(54,65,65,5,15,33,4),(55,6,565,5,15,32,5),(56,65,6,5,15,33,5),(57,56,56,5,15,32,6),(58,56,5,5,15,33,6),(59,66666,6555,6,1,32,4),(60,66666,6,6,1,33,4),(61,666,66,6,1,32,5),(62,6,6,6,1,33,5),(63,65,6,6,1,32,6),(64,56,56,6,1,33,6),(65,56,56,6,2,32,4),(66,56,56,6,2,33,4),(67,56,5,6,2,32,5),(68,65,65,6,2,33,5),(69,65,65,6,2,32,6),(70,65,65,6,2,33,6),(71,65,65,6,3,32,4),(72,65,65,6,3,33,4),(73,65,6,6,3,32,5),(74,65,65,6,3,33,5),(75,6,65,6,3,32,6),(76,65,65,6,3,33,6),(77,65,65,6,15,32,4),(78,65,65,6,15,33,4),(79,6,565,6,15,32,5),(80,65,6,6,15,33,5),(81,56,56,6,15,32,6),(82,56,5,6,15,33,6),(83,200,2,7,15,NULL,10),(84,300,5,7,15,NULL,5),(85,500,6,7,44,NULL,10),(86,900,6,7,44,NULL,5),(87,500,1,8,44,51,10),(88,6222,100,8,44,51,5),(89,3200,70,8,1,51,10),(90,520,30,8,1,51,5),(91,555,66,9,1,57,6),(92,3,33,9,1,58,6),(93,55,666,9,1,57,5),(94,33,22,9,1,58,5),(95,44,22,9,1,57,10),(96,11,10,9,1,58,10),(97,255,545,9,15,57,6),(98,2254,225,9,15,58,6),(99,554,3322,9,15,57,5),(100,55,65,9,15,58,5),(101,224,335,9,15,57,10),(102,111,33,9,15,58,10),(103,500,2,10,1,51,10),(104,600,6,10,9,51,10),(105,300,10,10,15,51,10),(106,5551125,66,11,1,57,6),(107,3141,33,11,1,58,6),(108,55574,666,11,1,57,5),(109,33141,222,11,1,58,5),(110,44,22,11,1,57,10),(111,11,10,11,1,58,10),(112,255,545,11,15,57,6),(113,2254,225,11,15,58,6),(114,554,3322,11,15,57,5),(115,55,65,11,15,58,5),(116,224544,335,11,15,57,10),(117,111,33,11,15,58,10),(118,5551125,66,12,1,57,6),(119,3141,33,12,1,58,6),(120,55574,666,12,1,57,5),(121,33141,222,12,1,58,5),(122,4411,221,12,1,57,10),(123,1122,102,12,1,58,10),(124,255,5451,12,15,57,6),(125,2254,2251,12,15,58,6),(126,554,3322,12,15,57,5),(127,5533,65,12,15,58,5),(128,224544,335,12,15,57,10),(129,1112,331,12,15,58,10),(130,5551125,6622,13,1,57,6),(131,3141,3311,13,1,58,6),(132,55574,66611,13,1,57,5),(133,33141,22222,13,1,58,5),(134,4411,221,13,1,57,10),(135,1122,102,13,1,58,10),(136,2551,5451,13,15,57,6),(137,2254,2251,13,15,58,6),(138,5541,3322,13,15,57,5),(139,5533,6522,13,15,58,5),(140,224544,335,13,15,57,10),(141,1112,331,13,15,58,10),(142,600,20,14,1,89,10),(143,900,60,14,1,89,88),(144,700,6,14,15,89,10),(145,900,120,14,15,89,88),(146,522,6622,15,1,57,6),(147,3234,3311,15,1,58,6),(148,55574,66611,15,1,57,5),(149,33141,22222,15,1,58,5),(150,4411,2212,15,1,57,10),(151,1122,1021,15,1,58,10),(152,2551,5451,15,15,57,6),(153,2254,2251,15,15,58,6),(154,5541,3322,15,15,57,5),(155,5533,6522,15,15,58,5),(156,224544,3351,15,15,57,10),(157,11122,331,15,15,58,10),(158,5222,6622,16,1,57,6),(159,3234,33,16,1,58,6),(160,55574,66,16,1,57,5),(161,33,22,16,1,58,5),(162,44,2212,16,1,57,10),(163,1122,1021,16,1,58,10),(164,2551,99,16,15,57,6),(165,2254,21,16,15,58,6),(166,5541,33,16,15,57,5),(167,5533,6522,16,15,58,5),(168,224544,3351,16,15,57,10),(169,11122,331,16,15,58,10),(170,52221,6622,17,1,57,6),(171,3234,33,17,1,58,6),(172,55574,66,17,1,57,5),(173,332,22,17,1,58,5),(174,442,2212,17,1,57,10),(175,1122,1021,17,1,58,10),(176,2551,99,17,15,57,6),(177,2254,21,17,15,58,6),(178,5541,33,17,15,57,5),(179,5533,6522,17,15,58,5),(180,22,335,17,15,57,10),(181,122,331,17,15,58,10),(182,52,66,18,1,57,6),(183,3234,33,18,1,58,6),(184,55574,66,18,1,57,5),(185,332,22,18,1,58,5),(186,442,22,18,1,57,10),(187,1122,10,18,1,58,10),(188,2551,99,18,15,57,6),(189,2254,21,18,15,58,6),(190,5541,33,18,15,57,5),(191,55,65,18,15,58,5),(192,22,335,18,15,57,10),(193,12,331,18,15,58,10),(194,200,5,19,1,89,10),(195,300,10,19,1,124,10),(196,500,20,19,1,89,6),(197,600,9,19,1,124,6),(198,500,3,19,1,89,88),(199,600,20,19,1,124,88),(200,500,10,19,9,89,10),(201,700,5,19,9,124,10),(202,800,6,19,9,89,6),(203,900,8,19,9,124,6),(204,1000,6,19,9,89,88),(205,500,6,19,9,124,88);
/*!40000 ALTER TABLE `product_productvariantprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_variant`
--

DROP TABLE IF EXISTS `product_variant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_variant` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `description` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_variant`
--

LOCK TABLES `product_variant` WRITE;
/*!40000 ALTER TABLE `product_variant` DISABLE KEYS */;
INSERT INTO `product_variant` VALUES (1,'Color','-',1),(2,'Size','-',1),(3,'Style','-',1),(4,'Weight','-',1),(5,'Brand','-',1),(6,'Quality','-',1);
/*!40000 ALTER TABLE `product_variant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'medius'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-30 17:39:29
