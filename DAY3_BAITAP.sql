--- baitap1
select NAME from city 
WHERE POPULATION >120000
AND COUNTRYCODE = 'USA'
---baitap2
select * from CITY
WHERE COUNTRYCODE ='JPN'
--BAITAP3
select CITY, STATE from STATION
--BAITAP4
select distinct city from station where city like "a%" or city like "e%" or city like "i%" or city like "o%" or city like "u%" ;
--BATTAP5
select distinct city from station where city like "%a" or city like "%e" or city like "%i" or city like "%o" or city like "%u" ;
--baitap6
SELECT DISTINCT CITY FROM STATION WHERE CITY NOT LIKE 'A%' AND CITY NOT LIKE 'E%' AND CITY NOT LIKE 'I%' AND CITY NOT LIKE 'O%' AND CITY NOT LIKE 'U%'
--batap7
SELECT NAME FROM EMPLOYEE ORDER BY NAME ASC;
--baitap8
select name from employee where salary >2000 and months <10
--baitap9
select product_id from products
where low_fats = 'y' and recyclable = 'y'
--baitap10
SELECT name FROM customer WHERE referee_id != 2 OR referee_id IS NULL;
--baitap11
select name, population, area from world 
where area >= 3000000 or population >= 25000000
--baitap12
select distinct author_id as id from views
where viewer_id = author_id 
order by id asc
--baitap13
SELECT PART, assembly_step FROM PARTS_ASSEMBLY 
WHERE FINISH_DATE IS NULL
--baitap14
select * from lyft_drivers WHERE yearly_salary NOT BETWEEN 30001 AND 69999
--baitap15
select advertising_channel  from uber_advertising
where money_spent > 100000 and year = 2019
--having challeng (bai4) 
select customer_id, date(payment_date),
avg(amount),
count(payment_id)
from payment 
where date(payment_date) in ('2020-04-28', '2020-04-29','2020-04-30')
group by customer_id, date(payment_date)
having count(payment_id)>1
order by avg(amount) desc
--Mathematics operations & functions Challenge(bai4)
select 
film_id,
replacement_cost,
rental_rate,
round((rental_rate/replacement_cost)*100,2) as percentage 
from film 
where round((rental_rate/replacement_cost)*100,2)<4
