use classicmodels;

show tables;
select * from customers;
select concat(contactfirstname, contactlastname) from customers;
select concat('hello','world');
select concat(contactfirstname,' ', contactlastname),contactfirstname,contactlastname from customers;

select trim(contactfirstname) from customers;
select concat(trim(contactfirstname),' ', trim(contactlastname)),contactfirstname,contactlastname from customers;
select substr("SQL TUTORIAL",5,3) AS Extractstring;
select substr(contactfirstname, 3,3) as sub_firstname,contactfirstname from customers;
select contactfirstname, upper(contactfirstname) as up,lower(contactfirstname)as down
from customers;
select character_length(contactfirstname),contactfirstname from customers;
select character_length("hello world") as ch;
select MID('hello world',2,3);
select MID(trim(contactfirstname),2,3),substr(trim(contactfirst),2,3) from customers;
select trim(contactfirstname),ceiling(character_length(trim(contactfirstname))/2) from customers;

