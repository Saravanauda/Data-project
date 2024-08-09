use online_food;
show tables;
/* count total rows in table*/
select count(ID) from swiggy;
desc swiggy;
/* ADD primary key*/
alter table swiggy add primary key(ID);
/* total number of restaurent*/
select distinct (count(restaurant))from swiggy;
/* find the top 3 restaurant name with max order*/
select restaurant,count(id)as total_orders
from swiggy
group by restaurant
order by count(id)desc
limit 3;
/* find restaurant from kormangala 
area of bangalore who serve chinese food*/
select restaurant,