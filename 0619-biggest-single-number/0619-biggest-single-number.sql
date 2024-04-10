# Write your MySQL query statement below
select max(num) num from 
(select * from MyNumbers
group by num
having count(num) = 1)x