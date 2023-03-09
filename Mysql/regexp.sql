use intro_sql;

select count(*) from telco_churna where paymentmethod like 'e%';
select count(*) from telco_churna where paymentmethod REGEXP '^e';

SELECT COUNT(*) FROM TELCO_CHURNA
where customerid like '%v%'
or customerid like '%w%'
or customerid like '%x%';

select count(*) from telco_churna
where customerid REGEXP '[vwx]'

SELECT COUNT(*) FROM TELCO_CHURNA where customerid like '%v%'
or customerid like '%w%'
or customerid like '%x%'
or customerid like '%y%'
or customerid like '%z%';

select count(*) from telco_churna where customerid REGEXP '[v-z]';
select count(*) from telco_churna where customerid REGEXP '[vwxyz]';
