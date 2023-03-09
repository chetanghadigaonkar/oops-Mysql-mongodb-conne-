use intro_sql;
select * from telco_churna;

1 find the list of customers whose total charge > average total charges of all the customers

select * from telco_churna where totalcharge >avg(totalcharges);
select avg(totalcharges) from telco_churna;

select * from telco_churna where totalcharge > (select avg(totalcharges) from telco_churna);

find the total aount of customers whose totalcharges > totalcharges of '3655-SNQYZ'

select totalcharges from telco_churna where customerid='3655-SNQYZ';

select count(*) from telco_churna where
totalcharges > (select totalcharges from telco_churna where customerid='3655-SNQYZ');

select * from telco_churna where customerid ='7590-VHVEG';

select customerid from telco_churna
where totalcharges =(select max(totalcharges) from telco_churna);

select customerid, totalcharges from telco_churna where totalcharges=(
select max(totalcharges) as total from telco_churna
where total_churna <> (select max (totalcharges)from telco_churna)); 
