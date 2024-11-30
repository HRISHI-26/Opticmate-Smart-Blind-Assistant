/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - smartblindassistance_new
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`smartblindassistance_new` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `smartblindassistance_new`;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

insert  into `auth_permission`(`id`,`name`,`content_type_id`,`codename`) values (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add blind details',7,'add_blinddetails'),(20,'Can change blind details',7,'change_blinddetails'),(21,'Can delete blind details',7,'delete_blinddetails'),(22,'Can add caretaker details',8,'add_caretakerdetails'),(23,'Can change caretaker details',8,'change_caretakerdetails'),(24,'Can delete caretaker details',8,'delete_caretakerdetails'),(25,'Can add complaint details',9,'add_complaintdetails'),(26,'Can change complaint details',9,'change_complaintdetails'),(27,'Can delete complaint details',9,'delete_complaintdetails'),(28,'Can add emergency',10,'add_emergency'),(29,'Can change emergency',10,'change_emergency'),(30,'Can delete emergency',10,'delete_emergency'),(31,'Can add familiar person',11,'add_familiarperson'),(32,'Can change familiar person',11,'change_familiarperson'),(33,'Can delete familiar person',11,'delete_familiarperson'),(34,'Can add feedback details',12,'add_feedbackdetails'),(35,'Can change feedback details',12,'change_feedbackdetails'),(36,'Can delete feedback details',12,'delete_feedbackdetails'),(37,'Can add login details',13,'add_logindetails'),(38,'Can change login details',13,'change_logindetails'),(39,'Can delete login details',13,'delete_logindetails');

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'myapp','blinddetails'),(8,'myapp','caretakerdetails'),(9,'myapp','complaintdetails'),(10,'myapp','emergency'),(11,'myapp','familiarperson'),(12,'myapp','feedbackdetails'),(13,'myapp','logindetails'),(6,'sessions','session');

/*Table structure for table `django_migrations` */

DROP TABLE IF EXISTS `django_migrations`;

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `django_migrations` */

insert  into `django_migrations`(`id`,`app`,`name`,`applied`) values (1,'contenttypes','0001_initial','2024-02-21 06:38:49.665984'),(2,'auth','0001_initial','2024-02-21 06:38:50.588792'),(3,'admin','0001_initial','2024-02-21 06:38:50.763513'),(4,'admin','0002_logentry_remove_auto_add','2024-02-21 06:38:50.794760'),(5,'contenttypes','0002_remove_content_type_name','2024-02-21 06:38:50.925112'),(6,'auth','0002_alter_permission_name_max_length','2024-02-21 06:38:50.994112'),(7,'auth','0003_alter_user_email_max_length','2024-02-21 06:38:51.060664'),(8,'auth','0004_alter_user_username_opts','2024-02-21 06:38:51.078652'),(9,'auth','0005_alter_user_last_login_null','2024-02-21 06:38:51.147210'),(10,'auth','0006_require_contenttypes_0002','2024-02-21 06:38:51.156413'),(11,'auth','0007_alter_validators_add_error_messages','2024-02-21 06:38:51.178901'),(12,'auth','0008_alter_user_username_max_length','2024-02-21 06:38:51.251510'),(13,'auth','0009_alter_user_last_name_max_length','2024-02-21 06:38:51.325686'),(14,'myapp','0001_initial','2024-02-21 06:38:52.066348'),(15,'sessions','0001_initial','2024-02-21 06:38:52.141624');

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

insert  into `django_session`(`session_key`,`session_data`,`expire_date`) values ('c3n4lbq040beqkzzjyxs8eiom3c8j27f','MzYyN2YwMmVmNzdlMWFmMmFjMmQ4NGExNzcyN2JhMDFmZmQ5YWQ4Yzp7ImxpZCI6NywibGciOiJsaW4iLCJmbWlkIjoiMSIsImZpZCI6IjEifQ==','2024-03-07 08:31:52.222553');

/*Table structure for table `myapp_blinddetails` */

DROP TABLE IF EXISTS `myapp_blinddetails`;

CREATE TABLE `myapp_blinddetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blindname` varchar(200) NOT NULL,
  `blindphoto` varchar(200) NOT NULL,
  `blindphone` int(11) NOT NULL,
  `blindemail` varchar(100) NOT NULL,
  `CARETAKER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_blinddetails_CARETAKER_id_78137f64_fk_myapp_car` (`CARETAKER_id`),
  CONSTRAINT `myapp_blinddetails_CARETAKER_id_78137f64_fk_myapp_car` FOREIGN KEY (`CARETAKER_id`) REFERENCES `myapp_caretakerdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_blinddetails` */

insert  into `myapp_blinddetails`(`id`,`blindname`,`blindphoto`,`blindphone`,`blindemail`,`CARETAKER_id`) values (3,'Anigeth','/static/images/2024/02/22-135801.jpg',2147483647,'anigethkallankandy@gmail.com',4),(4,'Hrishi','/static/images/2024/02/22-140328.jpg',1234567890,'anigethkallankandy@gmail.com',4);

/*Table structure for table `myapp_caretakerdetails` */

DROP TABLE IF EXISTS `myapp_caretakerdetails`;

CREATE TABLE `myapp_caretakerdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `place` varchar(200) NOT NULL,
  `post` varchar(200) NOT NULL,
  `pin` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `LOGIN_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_caretakerdetai_LOGIN_id_c778e418_fk_myapp_log` (`LOGIN_id`),
  CONSTRAINT `myapp_caretakerdetai_LOGIN_id_c778e418_fk_myapp_log` FOREIGN KEY (`LOGIN_id`) REFERENCES `myapp_logindetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_caretakerdetails` */

insert  into `myapp_caretakerdetails`(`id`,`name`,`photo`,`place`,`post`,`pin`,`contact`,`email`,`LOGIN_id`) values (4,'Anigeth K K','/static/images/2024/02/22-121349.jpg','Kannur','kannur',670643,2147483647,'',7);

/*Table structure for table `myapp_complaintdetails` */

DROP TABLE IF EXISTS `myapp_complaintdetails`;

CREATE TABLE `myapp_complaintdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cdate` varchar(200) NOT NULL,
  `complaint` varchar(200) NOT NULL,
  `reply` varchar(200) NOT NULL,
  `replydate` varchar(200) NOT NULL,
  `CARETAKER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_complaintdetai_CARETAKER_id_09c20434_fk_myapp_car` (`CARETAKER_id`),
  CONSTRAINT `myapp_complaintdetai_CARETAKER_id_09c20434_fk_myapp_car` FOREIGN KEY (`CARETAKER_id`) REFERENCES `myapp_caretakerdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_complaintdetails` */

insert  into `myapp_complaintdetails`(`id`,`cdate`,`complaint`,`reply`,`replydate`,`CARETAKER_id`) values (1,'2024/02/22-121842','I have a complaint','This is a reply from admin to caretaker for his complaint.','2024-22-02',4);

/*Table structure for table `myapp_emergency` */

DROP TABLE IF EXISTS `myapp_emergency`;

CREATE TABLE `myapp_emergency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `date` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  `BLIND_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_emergency_BLIND_id_b36e79ef_fk_myapp_blinddetails_id` (`BLIND_id`),
  CONSTRAINT `myapp_emergency_BLIND_id_b36e79ef_fk_myapp_blinddetails_id` FOREIGN KEY (`BLIND_id`) REFERENCES `myapp_blinddetails` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `myapp_emergency` */

/*Table structure for table `myapp_familiarperson` */

DROP TABLE IF EXISTS `myapp_familiarperson`;

CREATE TABLE `myapp_familiarperson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `BLIND_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_familiarperson_BLIND_id_752b5714_fk_myapp_blinddetails_id` (`BLIND_id`),
  CONSTRAINT `myapp_familiarperson_BLIND_id_752b5714_fk_myapp_blinddetails_id` FOREIGN KEY (`BLIND_id`) REFERENCES `myapp_blinddetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_familiarperson` */

/*Table structure for table `myapp_feedbackdetails` */

DROP TABLE IF EXISTS `myapp_feedbackdetails`;

CREATE TABLE `myapp_feedbackdetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(200) NOT NULL,
  `feedback` varchar(300) NOT NULL,
  `CARETAKER_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myapp_feedbackdetail_CARETAKER_id_fe287b3d_fk_myapp_car` (`CARETAKER_id`),
  CONSTRAINT `myapp_feedbackdetail_CARETAKER_id_fe287b3d_fk_myapp_car` FOREIGN KEY (`CARETAKER_id`) REFERENCES `myapp_caretakerdetails` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_feedbackdetails` */

insert  into `myapp_feedbackdetails`(`id`,`date`,`feedback`,`CARETAKER_id`) values (1,'2024/02/22-121917','This is a feedback from caretaker ',4);

/*Table structure for table `myapp_logindetails` */

DROP TABLE IF EXISTS `myapp_logindetails`;

CREATE TABLE `myapp_logindetails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `usertype` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `myapp_logindetails` */

insert  into `myapp_logindetails`(`id`,`username`,`password`,`usertype`) values (1,'Admin','12345','admin'),(2,'Caretaker','caretaker','caretaker'),(3,'Blind','blind','blind'),(7,'Anigeth K K','123','caretaker');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
