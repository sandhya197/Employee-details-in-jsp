create database firstproject;
use firstproject;
create table project(id int primary key auto_increment,name varchar(30),email varchar(30),contactnumber varchar(30) unique,address varchar(30),bloodgroup varchar(30),dob date,doj date,role varchar(30),project varchar(30),status varchar(30));
insert into project(name,email,contactnumber,address,bloodgroup,dob,doj,role,project,status)
values('Jack','jack@gmail.com','56789','avenue park','A+',2002/10/16,2023/01/10,'developer','jsp','Active');
select * from project;
insert into project(name,email,contactnumber,address,bloodgroup,dob,doj,role,project,status)
values('Jack','jack@gmail.com','12345','avenue park','A+',2002/10/16,2023/01/10,'developer','jsp','Active');
select *from project;
alter table project rename employee;
desc employee;
select * from employee;
use firstproject;
alter table employee
modify column dob varchar(30);
desc employee;
alter table employee
modify column doj varchar(30);
desc employee;
select * from employee;