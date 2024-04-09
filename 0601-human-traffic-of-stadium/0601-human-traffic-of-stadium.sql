# Write your MySQL query statement below
with cte as (select *,
id - row_number() over(order by id) rnk
from Stadium
where people >= 100)

select id, visit_date, people from cte
where rnk in (select rnk from cte group by rnk having count(*) >= 3)