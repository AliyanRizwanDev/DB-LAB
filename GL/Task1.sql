DROP DATABASE IF EXISTS `DBCP`;
CREATE DATABASE `DBCP`;
USE `DBCP`;
CREATE TABLE `patient` (
`patient_id` varchar(15) ,
`NAME` varchar (15),
`AGE` int,
`Gender` varchar(5),
`Address` varchar(20),
`Disease` varchar(10),
`DoctorID` varchar(15),
PRIMARY KEY (`patient_id`)
);