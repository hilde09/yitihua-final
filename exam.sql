
CREATE DATABASE `exam`

USE `exam`;

DROP TABLE IF EXISTS `db_student`;

CREATE TABLE `db_student` (
  `sysid` int(11) NOT NULL AUTO_INCREMENT,
  `studentID` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `result` int(11) DEFAULT NULL,
  `sclass` varchar(255) NOT NULL,
  PRIMARY KEY (`sysid`),
  UNIQUE KEY `studentID` (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

insert  into `db_student`(`sysid`,`studentID`,`password`,`studentName`,`result`,`sclass`)
values
(1,'11111','22222','hhhhh',20,'一班'),
(3,'3333','3333','lala',NULL,'一班'),
(4,'4444','4444','hilde',NULL,'一班'),
(5,'5555','5555','wow',NULL,'二班');

DROP TABLE IF EXISTS `db_subject`;

CREATE TABLE `db_subject` (
  `stID` int(11) NOT NULL AUTO_INCREMENT,
  `stTitle` varchar(255) NOT NULL,
  `stOptionA` varchar(255) NOT NULL,
  `stOptionB` varchar(255) NOT NULL,
  `stOptionC` varchar(255) NOT NULL,
  `stOptionD` varchar(255) NOT NULL,
  `stAnswer` varchar(255) NOT NULL,
  `stParse` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

insert  into `db_subject`(`stID`,`stTitle`,`stOptionA`,`stOptionB`,`stOptionC`,`stOptionD`,`stAnswer`,`stParse`)
 values
  (1,'1111','aaaaa;','bbbbbb;','ccccc;','ddddddd;','B','bbbbbb'),
  (2,'22222','a2','b2','c2','d2','D','d2'),
  (3,'333','a3','b3','c3','d3','A','a3');



DROP TABLE IF EXISTS `db_teacher`;

CREATE TABLE `db_teacher` (
  `sysid` int(11) NOT NULL AUTO_INCREMENT,
  `teacherID` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`sysid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;



insert  into `db_teacher`(`sysid`,`teacherID`,`password`) values (1,'admin','admin');
