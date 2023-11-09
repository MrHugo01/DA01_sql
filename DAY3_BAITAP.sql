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
