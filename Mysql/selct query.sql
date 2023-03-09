create database INTRO_SQL;
USE INTRO_SQL;
drop table emp_info
create table emp_info
(
first_name varchar(20),
last_name varchar(20),
id int not null,
age int,
city varchar(20),
state varchar(20),
primary key(id)
)

select * from emp_info;

insert into emp_info values('john','jones',99981,45,'payson','arizona');
insert into emp_info values('Mary','jones',99990,25,'payson','arizona');
insert into emp_info values('Eric','Edwards',88232,32,'San Diego','California');
insert into emp_info values('Mary ann','Edwards',88231,32,'Phoenix','arizona');
insert into emp_info values('Ginger','Howell',98002,42,'Cottonwood','arizona');
insert into emp_info values('Sebastian','Smiith',92001,23,'Gila Bend','arizona');
insert into emp_info values('Gus','Gray',22332,35,'Bagdad','arizona');
insert into emp_info values('Mary ann','May',32326,52,'Tucson','arizona');
insert into emp_info values('Erica','Williams',32327,60,'Showlow','arizona');
insert into emp_info values('Leroy','Brown',32380,22,'pine Top','arizona');
insert into emp_info values('Elroy','Cleaver',32382,22,'Glode','arizona');

select * from emp_info;
select first_name,last_name from emp_info;
select first_name as firstname,last_name as lastname from emp_info;
select count(id) from emp_info;
select count(*) from emp_info;
import pandas as pd
select count(*) as Record_count from emp_info;
select first_name,last_name,city from emp_info;
select * from emp_info where age >30;
select * from emp_info where age >30 and age < 50;
select * from emp_info where first_name like 'e%';
select * from emp_info where last_name like '%s';
select * from emp_info where age=22 or age=32;
select * from emp_info where age in (22,32);
select * from emp_info where age in (22,32,42,52,62,72,82);
select * from emp_info where city like '%t%';
select * from emp_info where first_name like 'er%';
select * from emp_info where first_name = 'erica';
select * from emp_info where first_name = 'erica' and last_name='williams' and id=32327;