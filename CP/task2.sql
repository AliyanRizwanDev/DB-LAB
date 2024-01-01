drop database if exists `task2`;
create database`task2`;
use `task2`;
create table airport(
`airport_code` varchar(15) not null,
`name` varchar(15) not null,
`city` varchar(20) not null,
`state` varchar(20) not null,
primary key(airport_code)
);
insert into`airport` values();
create table flight(
`flight_number` varchar(25) not null,
`airline` varchar(15) not null,
`weekdays` varchar(20) not null,
primary key(flight_number)
);
insert into`flight_number` values();
create table flight_leg(
`leg_number` varchar(25) not null,
`departure_airport_code` varchar(30) not null,
`scheduled_departure_time`  int not null,
`arrival_airport_code` varchar(30) not null,
`scheduled_arrival_time` int not null,
primary key(flight_number,leg_number),
foreign key(fight_number)references flight(flight_number)
);
insert into`flight_leg` values();
create table leg_instance(
`date` date not null,
`number_of_available_seats` int not null,
`airplane_id` varchar(15) not null,
`departure_airport_code` varchar(20) not null,
`departure_time` double(2,2) not null,
`arrival_airport_code` varchar(20) not null,
`arrival_time` int not null,
primary key(flight_number,leg_number,date),
foreign key(flight_number)references flight(flight_number),
foreign key(leg_number)references flight_leg(leg_number)
);
insert into`leg_instance` values();
create table fare(
`fare_code` int(20)not null,
`amount` int not null,
`restrictions` varchar(25),
primary key(flight_number,fare_code),
foreign key(flight_number)references flight(flight_number)
);
insert into`fare` values();
create table airplane_type(
`airplane_type_name` varchar(20)not null,
`max_seats` int not null,
`company` varchar(20) not null,
primary key(airplane_type_name)
);
create table can_land(
`airport_code` varchar(15) not null,
primary key(airplane_type_name,airport_code),
foreign key(airplane_type_name)references airplane_type(airplane_type_name),
foreign key(airport_code)references airport(airport_code)
);
create table airplane(
`airplane_id` int not null,
`total_number_of_seats` int not null,
`airplane_type` varchar(20) not null,
primary key(airplane_id),
foreign key(airplane_id)references leg_instance(airplane_id)
);
create table seat_reservation(
`date` date not null,
`seat_number` int not null,
`customer_name` varchar(20),
`customer_phone` int not null,
primary key(flight_number,leg_number,date,seat_number),
foreign key(flight_number)references flight(flight_number),
foreign key(leg_number)references flight_leg(leg_number),
foreign key(date)references leg_instance(date)
);