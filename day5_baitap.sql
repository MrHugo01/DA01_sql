--ex1
  select distinct city  from station 
where id%2 = 0 
--ex2
select count(city) - count(distinct city ) from  station 
--ex4
--bước 1: phân tích yêu cầu 
--1. output(gốc/phái sinh) mean= tổng đơn hàng/số đơn hàng 
--trong đó gốc là : phát sinh ra từ bản gốc 
-- phái sinh là: không có sẵn phải tính toán bằng công thức 
--2. input
--3. điều kiện lọc theo trường (theo gốc hoặc phái sinh)
SELECT 
round(cast(sum(item_count*order_occurrences)/sum(order_occurrences)as decimal) ,1)
FROM items_per_order;
--ex5
SELECT candidate_id FROM candidates
WHERE skill in ( 'Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
having count(skill) = 3 
--ex6:
SELECT user_id,
date(max(post_date))-date(MIN(post_date)) as days_between
FROM posts
where post_date >= '2021-01-01' and post_date <= '2022-01-01'
group by user_id 
having count(user_id)>=2 
--ex7
SELECT card_name, (max(issued_amount)-min(issued_amount)) AS difference
FROM monthly_cards_issued
group by card_name
order by difference desc;
--ex8
SELECT manufacturer,COUNT(drug),SUM(cogs-total_sales) AS total_loss 
FROM pharmacy_sales
WHERE cogs>total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC;
--ex9
select * from cinema
where id%2=1 and description<> 'boring '
order by rating  desc
--ex 10
select teacher_id, 
count(distinct subject_id) as cnt 
from Teacher
group by teacher_id
--ex11
elect user_id, count(follower_id) as followers_count
from Followers
group by user_id
order by user_id
--ex12
select class from Courses
group by class
having count(student)>=5

