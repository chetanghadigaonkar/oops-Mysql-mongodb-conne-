USE INTRO_SQL;

drop table emp_info;
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

insert into emp_info(first_name,last_name,id,age,city,state)
values('chetan','ghadigaonkar',99980,42,'borivali','mumbai');


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
insert into emp_info values('mayur','Cleaver','32388','22','Glode','arizona');
drop table emp_exercise;
create table emp_exercise
(
emp_name varchar(50),
designation varchar(100),
age int,
salary float
);

insert into emp_exercise values('jonie weber','secretary',28,19500.00);
insert into emp_exercise values('potsy weber','programmer',32,45300.00);
insert into emp_exercise values('dirk smith','programmer',45,75020.00);
select * from emp_exercise;

insert into emp_exercise values('satyajit pattnaik','it suuport',31,29500.00);
insert into emp_exercise values('namrata nayak','programer',27,65300.00);
insert into emp_exercise values('ravi kisan','data scientist',21,15020.00);
insert into emp_exercise values('soniya mukherjee','data analyst',29,29500.00);
insert into emp_exercise values('shalini gupta','analyst it',32,45300.00);

select * from emp_exercise;
show tables;
select *from emp_exercise where salary > 30000;
select emp_name from emp_exercise where age < 30;
select emp_name,salary,designation from emp_exercise where designation like '%programmer%';
select * from emp_exercise where emp_name like '%be%';
select * from emp_exercise;
update table table_name set column_name = ' ' where filter
SET SQL_SAFE_UPDATES=0;
update emp_exercise set designation='sr.programmer' where emp_name="potsy weber";
select * from emp_exercise;
update emp_exercise set designation='sr data analyst', age=30 where emp_name='soniya mukherjee'
select * from  emp_exercise  where emp_name='Dirk Smith';
update emp_exercise set age=age+1 where emp_name='dirk smith';
update emp_exercise set designation='administrative assistant' where designation='secretary';
select * from emp_exercise;
delete from emp_exercise where designation='it suuport';