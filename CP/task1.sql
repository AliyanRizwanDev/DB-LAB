DROP DATABASE IF EXISTS `TASK1`;
CREATE DATABASE `TASK1`; 
USE `TASK1`;
CREATE TABLE EMPLOYEE( 
Fname VARCHAR(15) NOT NULL,
Minit CHAR,
Lname VARCHAR(15) NOT NULL,
Ssn CHAR(9) NOT NULL,
Bdate DATE,
Address VARCHAR(30),
Sex CHAR,
Salary DECIMAL(10,2),
Super_ssn CHAR(9) NOT NULL,
Dno INT,
PRIMARY KEY (Ssn)
);
INSERT INTO `EMPLOYEE` VALUES ('john','B','Smith','123456789','1965-01-09','731 Fondren,Houstan,TX','M',30000,'333445555',5);
INSERT INTO `EMPLOYEE` VALUES ('Franklin','T','wong','333445555','1955-12-08','638 voss,Houstan,TX','M',40000,'888665555',5);
INSERT INTO `EMPLOYEE` VALUES ('Jennifer','J','zelya','999887777','1968-01-19','3321 castle,spring,TX','F',25000,'987654321',4);
INSERT INTO `EMPLOYEE` VALUES ('Alicia','S','wallace','987654321','1941-06-20','291 berry, bellaire,TX','F',43000,'888665555',4);
INSERT INTO `EMPLOYEE` VALUES ('Ramesh','K','narayan','456789123','1962-09-19','975 fire oak,humble,TX','M',38000,'333445555',5);
CREATE TABLE DEPARTMENT(
Dname varchar(15) NOT NULL,
Dnumber int not null,
Mgr_ssn char(9) not null,
Mgr_start_date date,
PRIMARY KEY (Dnumber),
UNIQUE (Dname),
FOREIGN KEY (Mgr_ssn) REFERENCES EMPLOYEE(Ssn) 
);
INSERT INTO `DEPARTMENT` VALUES ('Research',5,'333445555','1988-05-22');
INSERT INTO `DEPARTMENT` VALUES ('Aministration',4,'987654321','1995-01-01');
INSERT INTO `DEPARTMENT` VALUES ('Headquarters',1,'888665555','1981-06-19'); -- give error
CREATE TABLE DEPT_LOCATIONS( 
Dnumber int not null,
Dlocation varchar(15) not null,
PRIMARY KEY (Dnumber, Dlocation),
FOREIGN KEY (Dnumber) REFERENCES DEPARTMENT(Dnumber) 
);
INSERT INTO `DEPT_LOCATIONS` VALUES (1,'Houstan'); -- give error
INSERT INTO `DEPT_LOCATIONS` VALUES (4,'stafford'); -- give error
INSERT INTO `DEPT_LOCATIONS` VALUES (5,'bellaire'); -- give error
CREATE TABLE PROJECT( 
Pname varchar(15) not null,
Pnumber int not null,
Plocation varchar(15),
Dnum int not null,
PRIMARY KEY (Pnumber),
UNIQUE (Pname),
FOREIGN KEY (Dnum) REFERENCES DEPARTMENT(Dnumber) 
);
INSERT INTO `PROJECT` VALUES ('productX',1,'bellaire',5);
INSERT INTO `PROJECT` VALUES ('productY',2,'Sugarland',5);
INSERT INTO `PROJECT` VALUES ('productZ',3,'houstan',5);
CREATE TABLE WORKS_ON( 
Essn char(9) not null,
Pno int not null,
Hours DECIMAL(3,1) not null, 
PRIMARY KEY (Essn, Pno),
FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn),
FOREIGN KEY (Pno) REFERENCES PROJECT(Pnumber) 
);
INSERT INTO `WORKS_ON` VALUES ('123456789',1,32.5);
INSERT INTO `WORKS_ON` VALUES ('123456789',2,7.5);
INSERT INTO `WORKS_ON` VALUES ('666885555',3,40.0);
CREATE TABLE DEPENDENT( 
Essn char(9) not null,
Dependent_name varchar(15) not null,
Sex char,
Bdate date,
Relationship varchar(8),
PRIMARY KEY (Essn, Dependent_name),
FOREIGN KEY (Essn) REFERENCES EMPLOYEE(Ssn) 
);
INSERT INTO `Dependent` VALUES ('333445555','ALice','F','1986-04-05','Daughter');
INSERT INTO `Dependent` VALUES ('333445555','Theodore','M','1983-10-25','Son');
INSERT INTO `Dependent` VALUES ('333445555','joy','F','1958-05-03','spouse');