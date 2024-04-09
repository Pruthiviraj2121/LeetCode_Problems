# Write your MySQL query statement below
with cte as (select customer_number, count(order_number) cnt from orders
group by customer_number
order by cnt desc)

select customer_number from cte
limit 1;