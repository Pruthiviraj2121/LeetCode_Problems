# Write your MySQL query statement below
with cte as (select *,
case when order_date <> customer_pref_delivery_date then "scheduled" else "immediate" end status,
row_number() over(partition by customer_id order by order_date) rn
from Delivery)
select round(count(case when status = "immediate" then 1 end)/count(*)*100,2) immediate_percentage
from cte 
where rn in (select rn from cte where rn = 1)