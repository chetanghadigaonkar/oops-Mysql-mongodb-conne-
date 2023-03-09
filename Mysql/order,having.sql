use intro_sql;
select customerid from telco_churna order by customerid desc;
select * from telco_churna order by customerid asc;
select contract, count(*) from telco_churna
group by contract order by contract asc;
select contract, count(*)as cnt from telco_churna
group by contract order by cnt asc;
select * from telco_chrna where totalchrges > 3000;

select contract,count(*) as cnt from telco_churna
group by contract having cnt > 2500;
select contract,gender ,count(*) as cnt from telco_churna
group by contract,gender having cnt >800 order by contract asc;
select contract,gender ,count(*) as cnt from telco_churna
group by contract,gender having cnt >800 order by contract asc limit 2;

select * from telco_churna limit 5;
