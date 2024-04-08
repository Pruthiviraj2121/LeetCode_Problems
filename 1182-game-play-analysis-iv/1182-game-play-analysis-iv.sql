# Write your MySQL query statement below
-- with cte as (
--     select *,
--     count(distinct player_id) cnt,
-- lag(event_date) over(partition by player_id order by event_date) lg_date
-- from Activity
-- order by player_id, event_date)

-- select round(player_id/(select count(distinct player_id) from Activity),2) fraction
-- from cte 
-- where timestampdiff(day,lg_date, event_date) = 1

select round(sum(login)/count(distinct player_id),2) fraction
from (
select player_id, 
datediff(event_date, min(event_date) over(partition by player_id)) = 1 login
from Activity) x