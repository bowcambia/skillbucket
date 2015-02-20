/*
SQLyog Community v11.42 (64 bit)
MySQL - 5.5.37 : Database - nhl
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nhl` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nhl`;

/*Table structure for table `coach` */

DROP TABLE IF EXISTS `coach`;

CREATE TABLE `coach` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `coach` */

insert  into `coach`(`id`,`name`,`birthday`,`city`,`state`,`country`) values (1,'Peter Laviolette','12-07-1964','Franklin','MA','USA');

/*Table structure for table `player` */

DROP TABLE IF EXISTS `player`;

CREATE TABLE `player` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `team_id` varchar(255) DEFAULT NULL,
  `number` int(3) DEFAULT NULL,
  `hometown` varchar(255) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `player` */

insert  into `player`(`id`,`team_id`,`number`,`hometown`,`zip`,`country`,`birthday`,`position`,`first_name`,`last_name`) values (1,'10',64,'Ottawa, Ontario',0,'CA','02-17-1988','Defenceman','Victor','Bartley');
insert  into `player`(`id`,`team_id`,`number`,`hometown`,`zip`,`country`,`birthday`,`position`,`first_name`,`last_name`) values (2,'10',41,'St. Catharines, Ontario',0,'CA','05-13-1991','Winger','Taylor','Beck');
insert  into `player`(`id`,`team_id`,`number`,`hometown`,`zip`,`country`,`birthday`,`position`,`first_name`,`last_name`) values (3,'10',57,'Rimouski, Quebec',0,'CA','09-24-1990','Winger','Gabriel','Bourque');
insert  into `player`(`id`,`team_id`,`number`,`hometown`,`zip`,`country`,`birthday`,`position`,`first_name`,`last_name`) values (4,'10',7,'Virginia, Minnesota',0,'USA','11-02-1976','Centre','Matt','Cullen');
insert  into `player`(`id`,`team_id`,`number`,`hometown`,`zip`,`country`,`birthday`,`position`,`first_name`,`last_name`) values (5,'10',14,'Borlange, Sweden',0,'Sweden','05-24-1990','Defenceman','Mattias','Ekholm');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `division` varchar(255) DEFAULT NULL,
  `coach_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `team` */

insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (1,'Boston','Bruins','Boston','MA','USA','Atlantic',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (2,'Buffalo','Sabres','Buffalo','NY','USA','Atlantic',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (3,'Carolina','Hurricanes','Raleigh','NC','USA','Metropolitan',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (4,'Columbus','Blue Jackets','Columbus','OH','USA','Metropolitan',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (5,'Anaheim','Ducks','Anaheim','CA','USA','Pacific',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (6,'Arizona','Coyotes','Glendale','AZ','USA','Pacific',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (7,'Colorado','Avalanche','Colorado','CO','USA','Central',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (8,'Chicago','Blackhawks','Chicago','IL','USA','Central',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (9,'Dallas','Stars','Dallas','TX','USA','Central',1);
insert  into `team`(`id`,`location`,`name`,`city`,`state`,`country`,`division`,`coach_id`) values (10,'Nashville','Predators','Nashville','TN','USA','Central',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
