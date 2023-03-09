use intro_sql;
show tables;

select gender,count(*) from telco_churna
group by gender;

select contract, count(*) from telco_churna
group by contract;
select contract ,gender ,count(*) from telco_churna
group by contract,gender order by contract asc;
select count(*) from telco_churna;
select count(customerid) from telco_churna;

select count(customerid) from telco_churna where gender='male';
select round(sum(totalcharges),2) from telco_churna;
select min(taotalcharges) from telco_churna;
select max(taotalcharges) from telco_churna;
select avg(taotalcharges) from telco_churna;





