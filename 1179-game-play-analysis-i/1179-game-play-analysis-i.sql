# Write your MySQL query statement below
with cte as (
    select *,
row_number() over(partition by player_id order by event_date) rn
from Activity)

select player_id, event_date first_login from cte
where rn = 1