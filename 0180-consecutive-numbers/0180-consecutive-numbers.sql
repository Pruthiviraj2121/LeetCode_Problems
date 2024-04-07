# Write your MySQL query statement below
with cte as (
    select id,num,
lead(num) over() num_1,
lead(num,2) over() num_2
from Logs)

select distinct num ConsecutiveNums from cte
where num = num_1 and num = num_2