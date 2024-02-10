create database  aggregate_func;
use aggregate_func;
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

select marks from student;

select max(marks) from student ;

select min(marks) from student ;

select avg(marks) from student;

select count(marks) from student;



