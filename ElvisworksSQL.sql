DROP SCHEMA IF EXISTS Elvisworks;
CREATE SCHEMA Elvisworks;
USE Elvisworks;

/* Created by Changpo Jiang 1148594, Design the personal work for react and flutter*/


CREATE TABLE `works` (
  `worksid` int NOT NULL AUTO_INCREMENT,
  `worktitle` varchar(45) NOT NULL,
  `worklink` varchar(100) NOT NULL,
  `piclink` varchar(100) NOT NULL,
  `videolink` varchar(100) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `rate` int NOT NULL,
  PRIMARY KEY (`worksid`)
);

CREATE TABLE `genre` (
  `genreid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `image_background` varchar(45) ,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`genreid`)
);

CREATE TABLE `genrebridge` (
    `worksid` int NOT NULL,
    `genreid` int NOT NULL, 
  PRIMARY KEY (`worksid`,`genreid`),
  CONSTRAINT `genreid` FOREIGN KEY (`genreid`) REFERENCES `genre` (`genreid`), 
  CONSTRAINT `worksid` FOREIGN KEY (`worksid`) REFERENCES `works` (`worksid`) 
);


INSERT INTO genre VALUES(100,'REACT','react.png ','front end library and mindset');
INSERT INTO genre VALUES(101,'IOS develop','IOS.png ','Mobile front end develop');
INSERT INTO genre VALUES(102,'Flutter','flutter.png ','front end library and mindset');
INSERT INTO genre VALUES(103,'Python flask','python.jpeg ','using flaks as a front end or backend fastAPI');
INSERT INTO genre VALUES(104,'spring boot','spring.png ','using spring boot and swagger to build a restAPI to retrive data from database');
INSERT INTO genre VALUES(105,'Jquery Ajax','Jquery.png ','using Jquery and Ajax to do a resposive web sustem');
INSERT INTO genre VALUES(106,'Mysql &Oracle','mysql.png ','database system');
INSERT INTO genre VALUES(107,'Cloud &DevOps','cloud.png ','Public and Private Cloud architecture and devops for develop team');
INSERT INTO genre VALUES(108,'infranstructure','infra.jpeg ','IT systems infrastructure and storage');

INSERT INTO works VALUES(199,'Agresearch Augement Reality system','worklink','pic','https://www.youtube.com/embed/fl19-6LBdm8','using Flutter, FastAPI and ARkit to built the whole Augement reality system. the Elvis works',90);
INSERT INTO works VALUES(200,'React system for Elvis works','www.elvisjiang.com','pic','videolink','using React as front end tools and flask as API to build this system for demostrate the Elvis works',85);
INSERT INTO works VALUES(201,'China Camping sites map','www.campingmap.site','pic','videolink','Using IOS Object C to code the original system for collect over 300 China camping site, using spring boot and swagger mysql as backend system. Officaly published in app store',90);
INSERT INTO works VALUES(202,'Lincoln University Internship system','worklink','pic','videolink','using falsk, python, Jquery, Ajax, Echart to built the whole internship managermen. the Elvis works',90);
INSERT INTO works VALUES(203,'Lincoln University GYM system','worklink','pic','videolink','using falsk, python, HTML CSS to build this system for demostrate the Elvis works',80);
INSERT INTO works VALUES(204,'soufun.com','www.soufun.com','pic','videolink','using asp oracle mysql and other tools to build this system. the Elvis works',85);
INSERT INTO works VALUES(205,'Vmware and other storage system','www.vmware.com','pic','videolink','Using vmware vsphere, NSX, vSAN, VCF to build a private cloud system ',85);

INSERT INTO genrebridge VALUES(199,102);
INSERT INTO genrebridge VALUES(199,103);
INSERT INTO genrebridge VALUES(199,106);
INSERT INTO genrebridge VALUES(199,107);

INSERT INTO genrebridge VALUES(200,100);
INSERT INTO genrebridge VALUES(200,103);
INSERT INTO genrebridge VALUES(200,106);
INSERT INTO genrebridge VALUES(200,107);

INSERT INTO genrebridge VALUES(201,101);
INSERT INTO genrebridge VALUES(201,104);
INSERT INTO genrebridge VALUES(201,106);
INSERT INTO genrebridge VALUES(201,107);

INSERT INTO genrebridge VALUES(202,103);
INSERT INTO genrebridge VALUES(202,106);
INSERT INTO genrebridge VALUES(202,105);
INSERT INTO genrebridge VALUES(202,107);
INSERT INTO genrebridge VALUES(203,103);
INSERT INTO genrebridge VALUES(203,106);
INSERT INTO genrebridge VALUES(203,107);
INSERT INTO genrebridge VALUES(204,103);
INSERT INTO genrebridge VALUES(204,106);
INSERT INTO genrebridge VALUES(204,107);
INSERT INTO genrebridge VALUES(205,104);
INSERT INTO genrebridge VALUES(205,106);
INSERT INTO genrebridge VALUES(205,107);
INSERT INTO genrebridge VALUES(205,108);
