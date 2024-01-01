drop database if exists ExamControl;
Create database ExamControl;
use ExamControl; 
CREATE TABLE StaffMember (
  `StaffFirstName` varchar(25)not null,
  `StaffLastName` varchar(25)not null,
  `StaffUserNumber` int(11)not null,
  primary key (StaffUserNumber)
) ;
Insert into `StaffMember`(`StaffFirstName`, `StaffLastName`,`StaffUserNumber`)values
('Aliyan','Rizwan','0029'),
('Daniyal','Rana','0036'),
('jawad','Rauf','0019'),
('Roshaan','Bashir','0004'),
('Talha','Zulfiqar','0009');

CREATE TABLE Project(
`proj_no` int(10) not null,
`proj_Name` varchar(25) not null,
`level` int(5)not null,
`keywords` varchar(10) not null,
`Description` varchar(25),
primary key(proj_no)
);

Insert into `Project`(`proj_no`, `proj_Name`,`level`,`keywords`,`Description`)values
('10','Project1','2','radar','Project no 1'),
('2','Project2','3','rocket','Project no 2'),
('3','Project3','2','Automation','Project no 3'),
('4','Project4','4','Android','Project no 4'),
('5','Project5','5','missile','Project no 5');

CREATE TABLE Student (
  `StFname` varchar(25) not null,
  `StLname` varchar(25)not null,
  `StUserNumber` int(11) not null,
  `project_no` int(5) not null,
  `super_no` int(11) not null,
  `assessor1` varchar(25) not null,
  `assessor2` varchar(25) not null,
  primary key(StUserNumber),
  foreign key(project_no) references Project(proj_no),
  foreign key(super_no) references StaffMember(StaffUserNumber)
  
);
Insert into `Student`(`StFname`, `StLname`,`StUserNumber`,`project_no`,`super_no`,`assessor1`,`assessor2`)values
('Rana','Usama','0025','10','0013','khalid','Usman'),
('Roshan','Ali','0026','2','0036','khalid','Usman'),
('Ayela','Sohail','0027','3','0019','khalid','Usman'),
('Fatima','Munzoor','0028','4','0004','khalid','Usman'),
('junaid','Khalid','0029','5','0009','khalid','Usman');


create table Exam(
`stud_user_no` int(11)not null,
`exam_No` varchar(8)not null,
`time` varchar(6)not null,
`day` varchar(10) not null,
`room_no` varchar(4)not null,
primary key (exam_no),
foreign key (stud_user_no) references Student(StUserNumber)
);

Insert into `Exam`(`stud_user_no`, `exam_No`,`time`,`day`,`room_no`)values
('0025','Type 1','2:30PM','Friday','A004'),
('0026','Type 2','3:30PM','Friday','A003'),
('0027','Type 3','2:30PM','Friday','A004'),
('0028','Type 4','3:30PM','Friday','A003'),
('0029','Type 5','2:30PM','Friday','A004');

select * from Student;
delete from Student where project_no = 10;




