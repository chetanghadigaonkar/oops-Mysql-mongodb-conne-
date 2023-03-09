JOINS

create database join_sql
use join_sql

show tables

customers: CustomerID,CustomerName,ContactName,Address,City,PostalCode,Country
Orders:OrderID,CustomerID,EmployeeID,OrderDate,ShipperID

create table customers
(
CustomerID int not null,
CustomerName varchar(100),
ContactName varchar(100),
Address varchar(100),
City varchar(100),
PostalCode varchar(10),
Country varchar(20),
primary key(CustomerID)
)
drop table orders
create table orders
(
OrderID int not null,
CustomerID int,
EmployeeID int,
OrderDate datetime,
ShipperID int,
primary key(OrderID)
)

insert into customers values(1,'satyajit','satyajit','Hong kong','Hong kong','000000','Hong kong SAR');
insert into customers values(2,'shalini','shalini','Bangalore','Bangalore','000000','India');
insert into customers  values(3,'rupa','rupa','Bangalore','Bangalore','000000','India');
insert into customers values(4,'Shuvrajit','Shuvrajit','Bangalore','Bangalore','000000','India');
insert into customers values(5,'priya','priya','Bangalore','Bangalore','000000','India');
insert into customers values(6,'Ramesh','Ramesh','Bangalore','Bangalore','000000','India');
insert into customers values(7,'suresh','suresh','Delhi','Delhi','000000','India');
insert into customers values(8,'sid','sid','Mumbai','Mumbai','000000','India');
insert into customers values(9,'Navya','Navya','Mumbai','Mumbai','000000','India');
insert into customers values(10,'Naina','Naina','poona','poona','000000','India');


insert into orders values(901,1,1,sysdate(),92801);
insert into orders values(902,1,1,sysdate()-10,92801);
insert into orders values(903,4,4,sysdate()-20,92801);
insert into orders values(904,5,5,sysdate()-30,92801);
insert into orders values(905,6,6,sysdate()-40,92801);
insert into orders values(906,11,11,sysdate()-20,92801);


select * from customers;

select * from orders;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c LEFT JOIN orders o
ON c.customerid=o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c RIGHT JOIN orders o
ON c.customerid=o.customerid;

select *from customers c LEFT JOIN orders o
ON c.customerid=o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c INNER JOIN orders o
ON c.customerid=o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c ,orders o where c.customerid=o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c LEFT OUTER JOIN orders o
ON c.customerid=o.customerid
UNION
select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c RIGHT OUTER JOIN orders o
ON c.customerid=o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c CROSS JOIN orders o
ON c.customerid=o.customerid;

select c.customerid,c.customername,c.country,o.orderid,o.orderdate
from customers c INNER JOIN orders o
ON c.customerid=o.customerid;