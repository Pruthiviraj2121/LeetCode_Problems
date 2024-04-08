# Write your MySQL query statement below
with cte as (
select *,
lag(temperature) over(order by recordDate) lg_temp,
lag(recordDate) over(order by recordDate) lg_date
from Weather
order by  recordDate)

select id Id from cte
where temperature > lg_temp and datediff(recordDate, lg_date) = 1;