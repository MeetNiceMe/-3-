/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.5.62 : Database - address
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`address` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `address`;

/*Table structure for table `登陆账户` */

DROP TABLE IF EXISTS `登陆账户`;

CREATE TABLE `登陆账户` (
  `用户名` varchar(20) NOT NULL,
  `密码` varchar(20) NOT NULL,
  PRIMARY KEY (`用户名`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `登陆账户` */

insert  into `登陆账户`(`用户名`,`密码`) values 
('111','211'),
('aaa','111'),
('aaaaa','1111'),
('admin','admin'),
('bbb','111'),
('cccc','ccc'),
('zhaoshuai','111');

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `author` varchar(20) DEFAULT NULL,
  `publisher` varchar(30) DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`id`,`name`,`author`,`publisher`,`price`) values 
(1,'你好','我好','红色',45.00),
(2,'苹果','猴子','山东',5.00),
(3,'qaz','wsx','edc',5.00);

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `ono` varchar(16) NOT NULL,
  `oname` varchar(30) DEFAULT NULL,
  `ostyle` varchar(30) DEFAULT NULL,
  `leader` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `settime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `item` */

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `ono` varchar(16) NOT NULL,
  `oname` varchar(30) DEFAULT NULL,
  `ostyle` varchar(30) DEFAULT NULL,
  `leader` varchar(20) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `settime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `items` */

insert  into `items`(`ono`,`oname`,`ostyle`,`leader`,`phone`,`settime`) values 
('10','志愿者项目2','公益','赵帅','123456789876','2021/11/11'),
('11','项目d','公益','赵帅','1313131231','2021/01/01'),
('2','志愿者项目c','xxxx','xxxx','xxxxxxxxx','xxxxxxxxxxxx'),
('3','志愿者项目','公益','赵帅','123456789876','2021/11/24'),
('4','志愿者项目一','校内','小明','884553121234','2021/11/26'),
('5','项目一      ','公益','小王','1564531564','2020/11/01'),
('6','项目b      ','校内','帅哥','12335345646','2020/01/02'),
('7','志愿者项目a','公开','张三','3514313511','2021/05/01'),
('8','项目c      ','公益','李四','165464645','2021/12/12'),
('9','项目d      ','校内','赵帅','123456789876','2020/11/11'),
('aaa','item_a','校内','小明','222222222','2021/12/05');

/*Table structure for table `myaddress` */

DROP TABLE IF EXISTS `myaddress`;

CREATE TABLE `myaddress` (
  `ono` varchar(16) NOT NULL,
  `oname` varchar(30) DEFAULT NULL,
  `ostyle` varchar(30) DEFAULT NULL,
  `leader` varchar(10) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `settime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`ono`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `myaddress` */

insert  into `myaddress`(`ono`,`oname`,`ostyle`,`leader`,`phone`,`settime`) values 
('2','x2','x4','x5','x3','x6'),
('3','a1','a3','a4','a2','a5'),
('4','q1','q3','q4','q2','q5'),
('f1','f2','f3','f4','f5','a5');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `onDate` date DEFAULT NULL,
  `amount` int(11) NOT NULL DEFAULT '1',
  `total` double NOT NULL DEFAULT '0',
  `postAddress` varchar(50) NOT NULL DEFAULT '',
  `postcard` varchar(10) NOT NULL DEFAULT '',
  `telephone` varchar(20) NOT NULL DEFAULT '',
  `contact` varchar(10) NOT NULL DEFAULT '',
  `userid` int(11) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `order` */

insert  into `order`(`id`,`onDate`,`amount`,`total`,`postAddress`,`postcard`,`telephone`,`contact`,`userid`,`state`) values 
(1,'2018-06-18',2,50,'qq','567','90','qa',1,2),
(2,'2018-06-18',3,55,'q','a','1','q',1,2),
(3,'2018-06-18',4,140,'w','sw','d','c',1,2);

/*Table structure for table `orderbook` */

DROP TABLE IF EXISTS `orderbook`;

CREATE TABLE `orderbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(11) DEFAULT NULL,
  `bookid` int(11) DEFAULT NULL,
  `price` double NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `orderbook` */

insert  into `orderbook`(`id`,`orderid`,`bookid`,`price`,`amount`) values 
(1,1,1,45,1),
(2,1,2,5,1),
(3,2,1,45,1),
(4,2,2,5,2),
(5,3,1,45,3),
(6,3,2,5,1);

/*Table structure for table `storages` */

DROP TABLE IF EXISTS `storages`;

CREATE TABLE `storages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookId` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `inDate` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `storages` */

insert  into `storages`(`id`,`bookId`,`amount`,`inDate`) values 
(1,1,100,'2018-06-06'),
(2,2,200,'2018-06-19'),
(3,3,46,'2018-06-20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `postcode` varchar(6) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `adm` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`passwd`,`sex`,`age`,`address`,`postcode`,`phone`,`adm`) values 
(1,'tom','888','m',1,'2','3','4',0),
(2,'admin','admin',NULL,NULL,NULL,NULL,NULL,1),
(3,'qq','123456','m',123456,'qb','qc','123456',0),
(4,'aa','aa','m',1,'2','3','4',0),
(5,'zz','zz','m',11,'22','33','44',0),
(6,'tt','tt','m',11,'22','33','44',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
