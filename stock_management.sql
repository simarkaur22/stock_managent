/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 11.0.2-MariaDB : Database - stock_management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stock_management` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `stock_management`;

/*Table structure for table `product_transactions` */

DROP TABLE IF EXISTS `product_transactions`;

CREATE TABLE `product_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `godown_id` int(11) DEFAULT NULL,
  `size` enum('S','M','Xl','XXl') DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `status` enum('IN','OUT') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `product_transactions` */

insert  into `product_transactions`(`id`,`product_id`,`godown_id`,`size`,`remarks`,`quantity`,`status`,`created_at`,`updated_at`) values 
(1,2,1,NULL,'asxA','4',NULL,'2025-05-17 11:40:02','2025-05-17 11:40:02'),
(2,2,1,NULL,'asxA','4','OUT','2025-05-17 11:44:30','2025-05-17 11:44:30'),
(3,2,1,NULL,'asxA','4','IN','2025-05-17 11:44:46','2025-05-17 11:44:46'),
(4,2,1,NULL,'asxA','4','IN','2025-05-17 11:45:11','2025-05-17 11:45:11'),
(5,2,1,'S',NULL,'4','IN','2025-05-17 11:46:18','2025-05-17 11:46:18'),
(6,2,1,'S','asxA','7','IN','2025-05-17 11:56:40','2025-05-17 11:56:40');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`description`,`created_at`,`updated_at`,`is_active`,`category_id`,`subcategory_id`,`quantity`) values 
(2,'dot & key','its jandxlasx','2025-05-16 19:13:48','2025-05-17 12:04:37',1,2,3,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
