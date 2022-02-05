-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.33-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema vis
--

CREATE DATABASE IF NOT EXISTS vis;
USE vis;

--
-- Definition of table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `adminid` varchar(45) NOT NULL,
  `adminname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`adminid`,`adminname`,`password`) VALUES 
 ('100','James Kumar','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;


--
-- Definition of table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `stateid` int(10) unsigned NOT NULL,
  `cityid` varchar(45) NOT NULL,
  `cityname` varchar(45) NOT NULL,
  PRIMARY KEY  (`cityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `city`
--

/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` (`stateid`,`cityid`,`cityname`) VALUES 
 (100,'1','Gwalior'),
 (400,'10','Karnal'),
 (400,'11','Sarhind'),
 (400,'12','Sonipat'),
 (100,'2','Bhopal'),
 (100,'3','Indore'),
 (200,'4','Lucknow'),
 (200,'5','Kanpur'),
 (200,'6','Agra'),
 (300,'7','Vadodra'),
 (300,'8','Surat'),
 (300,'9','Rajkot');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;


--
-- Definition of table `employees`
--

DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `employeeid` int(10) unsigned NOT NULL auto_increment,
  `employeename` varchar(45) NOT NULL,
  `fathername` varchar(45) NOT NULL,
  `birthdate` date NOT NULL,
  `gender` varchar(45) NOT NULL,
  `address` varchar(150) NOT NULL,
  `states` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `designation` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `picture` varchar(45) NOT NULL,
  PRIMARY KEY  (`employeeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`employeeid`,`employeename`,`fathername`,`birthdate`,`gender`,`address`,`states`,`city`,`designation`,`emailid`,`mobileno`,`password`,`picture`) VALUES 
 (2,'Harry Singh','Peter Singh','2019-03-12','Male','Railway Colony','UP','Kanpur','Supervisor','ppppppppp@kk.com','11111','123','tv.jpg'),
 (4,'Chetan Chauhan','Amit Chauhan','2019-03-19','Male','Railway Colony','Gujrat','Surat','Supervisor','ss@gmail.com','34343434','123','cam.jpg'),
 (5,'krati saxena','krati','1999-02-18','Female','h 2/190, durga mandir ground\r\n1100 quarters','Madhya Pradesh','bhopal','Supervisor','kratihhhsaxena@gmail.com','8602336680','jkahsxuia','rose.jpg'),
 (6,'Nitin Gupta','KK Gupta','2019-03-30','Male','KK','100','2','Supervisor','ss@gg.com','454545','12234','spk.jpg'),
 (7,'Nitin Gupta','KK Gupta','2019-03-30','Male','KK','200','5','Supervisor','ss@gg.com','454545','null','cam.jpg');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;


--
-- Definition of table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE `event` (
  `eventid` int(10) unsigned NOT NULL auto_increment,
  `eventname` varchar(45) NOT NULL,
  `eventdate` date NOT NULL,
  `timestart` time NOT NULL,
  `timeend` time NOT NULL,
  `days` varchar(45) NOT NULL,
  `icon` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `states` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `organizedby` varchar(45) NOT NULL,
  PRIMARY KEY  (`eventid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` (`eventid`,`eventname`,`eventdate`,`timestart`,`timeend`,`days`,`icon`,`address`,`states`,`city`,`organizedby`) VALUES 
 (1,'IOT','2019-04-01','23:59:00','12:59:00','45','1.jpg','Gwalior','100','1','Xyz');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;


--
-- Definition of table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE `states` (
  `stateid` int(10) unsigned NOT NULL auto_increment,
  `statename` varchar(45) NOT NULL,
  PRIMARY KEY  (`stateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` (`stateid`,`statename`) VALUES 
 (100,'Madhya Pradesh'),
 (200,'Uttar Pradesh'),
 (300,'Gujrat'),
 (400,'Haryana');
/*!40000 ALTER TABLE `states` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `emailid` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`emailid`,`name`,`gender`,`dob`,`mobileno`,`password`) VALUES 
 ('ffff@gmail.com','dd kumar','male','2019-04-16','8989898989','123'),
 ('gt@gmail.com','Harry Singh','male','2019-04-18','933033033','123'),
 ('jj@gmail.com','James Kumar','male','2019-04-18','933033033','123'),
 ('mm@gmail.com','Harry Sharma','male','2019-04-30','933033033','123'),
 ('pp@gmail.com','Harry Singh','male','2019-04-17','933033033','123'),
 ('rr@gmail.com','Harry Singh','male','2019-04-10','1111111111','123'),
 ('ss@gmail.com','Harry Singh','male','2019-04-17','933033033','123'),
 ('tttt@gmail.com','dd kumar','male','2019-04-15','8989898989','123'),
 ('vv@gmail.com','Amit Kumar','male','2019-04-16','933033033','123'),
 ('yoyo@gmail.con','kk JJ','male','2019-04-24','303030303','123'),
 ('zz@gmail.com','Ram Sharma','male','2019-04-19','933033033','123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


--
-- Definition of table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
CREATE TABLE `visitor` (
  `visitorid` int(10) unsigned NOT NULL auto_increment,
  `visitorname` varchar(45) NOT NULL,
  `fathername` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `states` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `occupation` varchar(45) NOT NULL,
  `contactperson` varchar(45) NOT NULL,
  `contactno` varchar(45) NOT NULL,
  `currentdate` date NOT NULL,
  `currenttime` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `image` varchar(45) NOT NULL,
  PRIMARY KEY  (`visitorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitor`
--

/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` (`visitorid`,`visitorname`,`fathername`,`gender`,`emailid`,`mobileno`,`address`,`states`,`city`,`occupation`,`contactperson`,`contactno`,`currentdate`,`currenttime`,`description`,`image`) VALUES 
 (1,'Nitin Gupta','Ram Gupta','male','ss@gmail.com','243234','dsdf','100','1','Supervisor','erwer','234','2019-03-26','12:59:00','terter','cam.jpg'),
 (2,'James Kumar','Mr Peter Kumar','male','jj@gmail.com','933033033','Bhopal','100','2','Supervisor','dddd','234324','2019-04-06','0:31:39 PM','eqweqweqwe','1.jpg'),
 (3,'Harry Singh','Mr Peter Kumar','male','rr@gmail.com','1111111111','Bhopal','100','2','Supervisor','dddd','234324','2019-04-08','6:41:12 PM','eqweqweqwe','1.jpg'),
 (4,'Harry Singh','gdfg','male','pp@gmail.com','933033033','Bhopal','100','2','Supervisor','dddd','234324','2019-04-10','6:52:3 PM','eqweqweqwe','crs.png'),
 (5,'Ram Sharma','Mr Peter Kumar','male','zz@gmail.com','933033033','Bhopal','100','2','Supervisor','dddd','234324','2019-04-12','6:52:27 PM','eqweqweqwe','1.jpg'),
 (6,'Harry Singh','Mr Peter Kumar','male','gt@gmail.com','933033033','Bhopal','100','2','Supervisor','dddd','234324','2019-04-12','6:55:12 PM','eqweqweqwe','1.jpg'),
 (7,'Amit Kumar','Mr Peter Kumar','male','vv@gmail.com','933033033','Bhopal','100','2','Supervisor','dddd','234324','2019-04-12','6:60:3 PM','eqweqweqwe','1.jpg'),
 (8,'Harry Sharma','Mr Peter Kumar','male','mm@gmail.com','933033033','Bhopal','100','2','Supervisor','dddd','234324','2019-04-12','7:3:18 PM','eqweqweqwe','1.jpg'),
 (9,'dd kumar','weqwe','male','tttt@gmail.com','8989898989','qwe','200','4','Supervisor','qwe','2323','2019-04-12','7:5:49 PM','qwe','1.jpg'),
 (10,'dd kumar','weqwe','male','ffff@gmail.com','8989898989','qwe','200','4','Supervisor','qwe','2323','2019-04-12','7:58:15 PM','qwe','1.jpg'),
 (11,'kk JJ','eee','male','yoyo@gmail.con','303030303','Gwalior','100','1','Supervisor','fsd','sdf','2019-04-15','6:5:55 PM','sasa','1.jpg');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;


--
-- Definition of table `visitorevent`
--

DROP TABLE IF EXISTS `visitorevent`;
CREATE TABLE `visitorevent` (
  `transactionid` int(10) unsigned NOT NULL auto_increment,
  `currentdate` varchar(45) NOT NULL,
  `eventid` int(10) unsigned NOT NULL,
  `eventname` varchar(45) NOT NULL,
  `eventdate` varchar(45) NOT NULL,
  `eventtime` varchar(45) NOT NULL,
  `venue` varchar(45) NOT NULL,
  `vpicture` varchar(45) NOT NULL,
  `epicture` varchar(45) NOT NULL,
  `emailid` varchar(45) NOT NULL,
  `mobileno` varchar(45) NOT NULL,
  `visitorname` varchar(45) NOT NULL,
  PRIMARY KEY  (`transactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitorevent`
--

/*!40000 ALTER TABLE `visitorevent` DISABLE KEYS */;
INSERT INTO `visitorevent` (`transactionid`,`currentdate`,`eventid`,`eventname`,`eventdate`,`eventtime`,`venue`,`vpicture`,`epicture`,`emailid`,`mobileno`,`visitorname`) VALUES 
 (1,'2019-4-10',3,'Smart Card Printing','2019-04-26','10:00:00','Indore,3,Indore,100,Madhya Pradesh','crs.png','spk.jpg','pp@gmail.com','933033033','Harry  Singh'),
 (2,'2019-4-12',2,'IOT Expo','2019-04-09','10:00:00','Noida<br>Agra,Uttar Pradesh','1.jpg','cam.jpg','ffff@gmail.com','8989898989','dd kumar'),
 (3,'2019-4-15',3,'Smart Card Printing','2019-04-26','10:00:00','Indore<br>Indore,Madhya Pradesh','1.jpg','spk.jpg','yoyo@gmail.con','303030303','kk JJ');
/*!40000 ALTER TABLE `visitorevent` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
