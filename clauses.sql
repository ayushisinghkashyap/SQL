create database practice_sec;
use practice_sec;
create table rec_std(
rollno int primary key ,
name varchar(50),
marks int not null,
grade varchar(20),
city varchar(50)
);
insert into rec_std 
(rollno , name , marks ,grade , city)
values
(101,"anil",78,"C","Pune"),
(102,"anmol",82,"A","Mumbai"),
(103,"anish",89,"B","Mumbai"),
(104,"anamika",98,"A","Delhi"),
(105,"anika",93,"B","Delhi"),
(106,"anooj",83,"C","Delhi"),
(107,"anisha",95,"A","Delhi");

select city , avg(marks)
from rec_std 
group by city 
order by avg(marks) asc;

select grade , count(rollno)
from rec_std
group by grade 
order by grade;

select city , count(rollno)
from rec_std
group by city 
having max(marks) >85;

select city , count(rollno) , grade
from rec_std 
where grade ="A" or grade = "B"
group by city , grade
having max(marks)>85
order by city desc;

set sql_safe_updates = 0;
update rec_std
set grade ="O" 
where grade="A";
select * from rec_std;