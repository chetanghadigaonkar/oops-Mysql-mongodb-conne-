use intro_sql;
select * from telco_churna;

create view telco_female as
select * from telco_churna where gender ='female';

use classicmodes;
select *from products;

create view prod_com as 
select a.productcode,a. productname, a.productline,a.msrp,b.textDescription
from products a, productlines b
where a.productline = b.productline;



