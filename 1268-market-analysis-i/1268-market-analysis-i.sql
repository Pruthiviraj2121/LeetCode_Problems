# Write your MySQL query statement below
select user_id buyer_id, join_date, count(order_date) orders_in_2019 
from Users u 
left join Orders o on o.buyer_id = u.user_id and year(order_date) = "2019"
group by user_id;