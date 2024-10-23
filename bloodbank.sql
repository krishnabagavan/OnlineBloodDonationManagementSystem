/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 8.0.25 : Database - blood_stock
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blood_stock` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `blood_stock`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group` */

insert  into `auth_group`(`id`,`name`) values 
(2,'DONOR'),
(1,'PATIENT');

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values 
(1,'Can add log entry',1,'add_logentry'),
(2,'Can change log entry',1,'change_logentry'),
(3,'Can delete log entry',1,'delete_logentry'),
(4,'Can view log entry',1,'view_logentry'),
(5,'Can add permission',2,'add_permission'),
(6,'Can change permission',2,'change_permission'),
(7,'Can delete permission',2,'delete_permission'),
(8,'Can view permission',2,'view_permission'),
(9,'Can add group',3,'add_group'),
(10,'Can change group',3,'change_group'),
(11,'Can delete group',3,'delete_group'),
(12,'Can view group',3,'view_group'),
(13,'Can add user',4,'add_user'),
(14,'Can change user',4,'change_user'),
(15,'Can delete user',4,'delete_user'),
(16,'Can view user',4,'view_user'),
(17,'Can add content type',5,'add_contenttype'),
(18,'Can change content type',5,'change_contenttype'),
(19,'Can delete content type',5,'delete_contenttype'),
(20,'Can view content type',5,'view_contenttype'),
(21,'Can add session',6,'add_session'),
(22,'Can change session',6,'change_session'),
(23,'Can delete session',6,'delete_session'),
(24,'Can view session',6,'view_session'),
(25,'Can add stock',7,'add_stock'),
(26,'Can change stock',7,'change_stock'),
(27,'Can delete stock',7,'delete_stock'),
(28,'Can view stock',7,'view_stock'),
(29,'Can add blood request',8,'add_bloodrequest'),
(30,'Can change blood request',8,'change_bloodrequest'),
(31,'Can delete blood request',8,'delete_bloodrequest'),
(32,'Can view blood request',8,'view_bloodrequest'),
(33,'Can add donor',9,'add_donor'),
(34,'Can change donor',9,'change_donor'),
(35,'Can delete donor',9,'delete_donor'),
(36,'Can view donor',9,'view_donor'),
(37,'Can add blood donate',10,'add_blooddonate'),
(38,'Can change blood donate',10,'change_blooddonate'),
(39,'Can delete blood donate',10,'delete_blooddonate'),
(40,'Can view blood donate',10,'view_blooddonate'),
(41,'Can add patient',11,'add_patient'),
(42,'Can change patient',11,'change_patient'),
(43,'Can delete patient',11,'delete_patient'),
(44,'Can view patient',11,'view_patient');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user` */

insert  into `auth_user`(`id`,`password`,`last_login`,`is_superuser`,`username`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values 
(1,'pbkdf2_sha256$260000$CkjrfiB2XLI2sJQeVyEIzG$ScKO8e3Zr0Jc54zioNNP4VdlU26yforyszMGZlOh7do=','2021-12-04 05:12:59.022189',0,'sailaxmi','sai','laxmi','',0,1,'2021-12-04 05:11:00.643686'),
(2,'pbkdf2_sha256$260000$iqDoMYqWMBHtkVHxYYiohM$XyXbW9rd5vFjqBemWgt4ikLZPBjjN8q6s+ttJbh2i34=','2021-12-04 05:14:27.177686',0,'saisowmya','sai','sowmya','',0,1,'2021-12-04 05:14:03.946295'),
(3,'pbkdf2_sha256$260000$7Nz25VMYHxURdPZtwXAs81$gFE8S9BKpWBjcJciuccUJQbowVKiq2AWn4pGBM3YGAI=','2021-12-04 06:09:49.099586',0,'sailucky','sai','lucky','',0,1,'2021-12-04 06:06:16.544190'),
(4,'pbkdf2_sha256$260000$Tjrv3UtF8oVGS1jxErxhax$xv+Z9J/xe7ArRs53al8siXiiJf/WnLzNcCJDyxBeaZo=','2021-12-11 06:00:08.615103',0,'saiprasanna','sai','prasanna','',0,1,'2021-12-09 04:30:22.360466'),
(5,'pbkdf2_sha256$260000$g1tVQ0KgIIec5wTobhhZe2$OHickXwKKzJwOmQqrTMM8km4efWZGPrnWgNQZMNtERk=','2021-12-11 06:09:52.305376',0,'saisalman','sai','salman','',0,1,'2021-12-11 06:09:29.010302');

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_groups` */

insert  into `auth_user_groups`(`id`,`user_id`,`group_id`) values 
(1,1,1),
(2,2,2),
(3,3,1),
(4,4,1),
(5,5,2);

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `blood_bloodrequest` */

DROP TABLE IF EXISTS `blood_bloodrequest`;

CREATE TABLE `blood_bloodrequest` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(30) NOT NULL,
  `patient_age` int unsigned NOT NULL,
  `reason` varchar(500) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `unit` int unsigned NOT NULL,
  `status` varchar(20) NOT NULL,
  `request_by_donor_id` int DEFAULT NULL,
  `request_by_patient_id` int DEFAULT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `blood_bloodrequest_request_by_donor_id_356e443f_fk_donor_don` (`request_by_donor_id`),
  KEY `blood_bloodrequest_request_by_patient_i_f651be1d_fk_patient_p` (`request_by_patient_id`),
  CONSTRAINT `blood_bloodrequest_request_by_donor_id_356e443f_fk_donor_don` FOREIGN KEY (`request_by_donor_id`) REFERENCES `donor_donor` (`id`),
  CONSTRAINT `blood_bloodrequest_request_by_patient_i_f651be1d_fk_patient_p` FOREIGN KEY (`request_by_patient_id`) REFERENCES `patient_patient` (`id`),
  CONSTRAINT `blood_bloodrequest_chk_2` CHECK ((`unit` >= 0)),
  CONSTRAINT `blood_bloodrequest_patient_age_9c39f309_check` CHECK ((`patient_age` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `blood_bloodrequest` */

insert  into `blood_bloodrequest`(`id`,`patient_name`,`patient_age`,`reason`,`bloodgroup`,`unit`,`status`,`request_by_donor_id`,`request_by_patient_id`,`date`) values 
(1,'sailaxmi',10,'s','B+',10,'Pending',1,NULL,'2021-12-04'),
(2,'sailaxmi',25,'ss','A+',10,'Pending',NULL,2,'2021-12-04'),
(3,'lucky',10,'addsasf','O+',10,'Pending',NULL,3,'2021-12-09'),
(4,'sai',12,'jhgfghjkl','O+',20,'Pending',NULL,3,'2021-12-11'),
(5,'lucky',15,'fever','B-',12,'Pending',2,NULL,'2021-12-11');

/*Table structure for table `blood_stock` */

DROP TABLE IF EXISTS `blood_stock`;

CREATE TABLE `blood_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bloodgroup` varchar(10) NOT NULL,
  `unit` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `blood_stock_chk_1` CHECK ((`unit` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `blood_stock` */

insert  into `blood_stock`(`id`,`bloodgroup`,`unit`) values 
(1,'A+',0),
(2,'A-',0),
(3,'B+',0),
(4,'B-',0),
(5,'AB+',0),
(6,'AB-',0),
(7,'O+',0),
(8,'O-',0);

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values 
(1,'admin','logentry'),
(3,'auth','group'),
(2,'auth','permission'),
(4,'auth','user'),
(8,'blood','bloodrequest'),
(7,'blood','stock'),
(5,'contenttypes','contenttype'),
(10,'donor','blooddonate'),
(9,'donor','donor'),
(11,'patient','patient'),
(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values 
(1,'contenttypes','0001_initial','2021-12-03 13:15:05.194148'),
(2,'auth','0001_initial','2021-12-03 13:15:46.049173'),
(3,'admin','0001_initial','2021-12-03 13:15:54.595604'),
(4,'admin','0002_logentry_remove_auto_add','2021-12-03 13:15:54.849918'),
(5,'admin','0003_logentry_add_action_flag_choices','2021-12-03 13:15:55.017096'),
(6,'contenttypes','0002_remove_content_type_name','2021-12-03 13:15:59.429725'),
(7,'auth','0002_alter_permission_name_max_length','2021-12-03 13:16:04.705953'),
(8,'auth','0003_alter_user_email_max_length','2021-12-03 13:16:05.773262'),
(9,'auth','0004_alter_user_username_opts','2021-12-03 13:16:05.967876'),
(10,'auth','0005_alter_user_last_login_null','2021-12-03 13:16:10.509426'),
(11,'auth','0006_require_contenttypes_0002','2021-12-03 13:16:10.721637'),
(12,'auth','0007_alter_validators_add_error_messages','2021-12-03 13:16:10.878960'),
(13,'auth','0008_alter_user_username_max_length','2021-12-03 13:16:13.589036'),
(14,'auth','0009_alter_user_last_name_max_length','2021-12-03 13:16:16.305044'),
(15,'auth','0010_alter_group_name_max_length','2021-12-03 13:16:16.851414'),
(16,'auth','0011_update_proxy_permissions','2021-12-03 13:16:16.988641'),
(17,'auth','0012_alter_user_first_name_max_length','2021-12-03 13:16:19.597168'),
(18,'patient','0001_initial','2021-12-03 13:16:28.211005'),
(19,'donor','0001_initial','2021-12-03 13:16:32.257975'),
(20,'blood','0001_initial','2021-12-03 13:16:33.112760'),
(21,'blood','0002_bloodrequest','2021-12-03 13:16:34.325160'),
(22,'blood','0003_auto_20210213_1053','2021-12-03 13:16:52.979779'),
(23,'blood','0004_bloodrequest_date','2021-12-03 13:16:54.212625'),
(24,'donor','0002_auto_20210213_1602','2021-12-03 13:17:01.362990'),
(25,'sessions','0001_initial','2021-12-03 13:17:03.956871');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values 
('1u759fmv5ildt4kmqzqcc96lapxyf0i2','.eJxVjDEOAiEQAP9CbQgsCIulvW8gwIKcGkiOu8r4d0NyhbYzk3kzH_at-n3k1S_ELkyz0y-LIT1zm4Ieod07T71t6xL5TPhhB791yq_r0f4Nahh1bs_oUBlNVqBBwiIsYrQ6kSyonDARYkaIUipQwhgygFkCCihUQnbs8wWuJDbQ:1mvB9h:_ga-DJkGzfqpL4EBVBseot19xyRAIgxNZTYwjOZdWJQ','2021-12-23 04:35:41.624127'),
('9o3thhfjtw3ok00arwm3xska19os1x6r','.eJxVjEEOgkAMRe8yazOBMpWOS_ecgXRo66AGEgZWxrsrCQvd_vfef7metzX3W9GlH8VdHLrT75Z4eOi0A7nzdJv9ME_rMia_K_6gxXez6PN6uH8HmUv-1m0NamBi3MAZMKhFFY4hGFZCCRAViSoLXGMwIIitVExNA2iMBO79AesvN4Q:1mvvZw:vhoezH3SeeWV3CtXzF0Utl9PEf_gwkGGB--yRKbCr7U','2021-12-25 06:09:52.538282'),
('lf043acaqvyyzna8p3m03k5kt88uk8dl','.eJxVjDsOwjAQBe_iGln-fyjpOYO13rVxADlSnFSIu0OkFNC-mXkvlmBbW9pGWdJE7MwUO_1uGfBR-g7oDv02c5z7ukyZ7wo_6ODXmcrzcrh_Bw1G-9aQUcpAGbyx0norQJOjGlFDBlWkQV29805aIZz1sQSlUbtqosoRTWDvD-bON3I:1mtNNT:M4vjccZz7dvkSBSnS3h9euS__S88PAyvzZ8yM4kCqi8','2021-12-18 05:14:27.391515');

/*Table structure for table `donor_blooddonate` */

DROP TABLE IF EXISTS `donor_blooddonate`;

CREATE TABLE `donor_blooddonate` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disease` varchar(100) NOT NULL,
  `age` int unsigned NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `unit` int unsigned NOT NULL,
  `status` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `donor_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `donor_blooddonate_donor_id_ac968d26_fk_donor_donor_id` (`donor_id`),
  CONSTRAINT `donor_blooddonate_donor_id_ac968d26_fk_donor_donor_id` FOREIGN KEY (`donor_id`) REFERENCES `donor_donor` (`id`),
  CONSTRAINT `donor_blooddonate_chk_1` CHECK ((`age` >= 0)),
  CONSTRAINT `donor_blooddonate_chk_2` CHECK ((`unit` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `donor_blooddonate` */

insert  into `donor_blooddonate`(`id`,`disease`,`age`,`bloodgroup`,`unit`,`status`,`date`,`donor_id`) values 
(1,'Nothing',10,'A-',10,'Pending','2021-12-04',1),
(2,'Nothing',10,'A-',12,'Pending','2021-12-11',2);

/*Table structure for table `donor_donor` */

DROP TABLE IF EXISTS `donor_donor`;

CREATE TABLE `donor_donor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `donor_donor_user_id_f97e4cc8_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `donor_donor` */

insert  into `donor_donor`(`id`,`profile_pic`,`bloodgroup`,`address`,`mobile`,`user_id`) values 
(1,'profile_pic/Donor/restaurant.jpg','B-','hyd','9346073382',2),
(2,'profile_pic/Donor/PANCARD.jpeg','B-','kmm','8184999113',5);

/*Table structure for table `patient_patient` */

DROP TABLE IF EXISTS `patient_patient`;

CREATE TABLE `patient_patient` (
  `id` int NOT NULL AUTO_INCREMENT,
  `profile_pic` varchar(100) DEFAULT NULL,
  `age` int unsigned NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `disease` varchar(100) NOT NULL,
  `doctorname` varchar(50) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `patient_patient_user_id_40c1c82a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `patient_patient_chk_1` CHECK ((`age` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `patient_patient` */

insert  into `patient_patient`(`id`,`profile_pic`,`age`,`bloodgroup`,`disease`,`doctorname`,`address`,`mobile`,`user_id`) values 
(1,'profile_pic/Patient/electronic.jfif',10,'B+','fever','sai','kmm','9346073382',1),
(2,'profile_pic/Patient/WhatsApp_Image_2021-11-26_at_8.11.40_PM.jpeg',10,'AB+','fever','s','hyd','84563217',3),
(3,'profile_pic/Patient/PANCARD.jpeg',20,'B-','fever','sowmya','kmm','9346076382',4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
