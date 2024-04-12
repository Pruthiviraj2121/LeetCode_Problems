# Write your MySQL query statement below
with cte as (select s.product_id product_id, s.year first_year, s.quantity quantity, s.price price,
dense_rank() over(partition by s.product_id order by s.year) drnk
from Sales s
left join Product p on s.product_id = p.product_id)

select product_id, first_year, quantity, price from cte
where drnk = 1;