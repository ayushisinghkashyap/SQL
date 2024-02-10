create database  record_std;
use record_std;
create table student
(rollno int primary key ,
name varchar(50),
marks int not null,
grade varchar(20),
city varchar(50)
);
insert into student (
rollno,name,marks,grade,city)
values 
(101,"anil",78,"C","Pune"),
(102,"anmol",82,"A","Mumbai"),
(103,"anish",89,"B","Mumbai"),
(104,"anamika",98,"A","Delhi"),
(105,"anika",93,"B","Delhi"),
(106,"anooj",83,"C","Delhi");

select distinct city from student;

select * from student 
order by city asc;

select * from student 
order by marks desc
limit 3;


