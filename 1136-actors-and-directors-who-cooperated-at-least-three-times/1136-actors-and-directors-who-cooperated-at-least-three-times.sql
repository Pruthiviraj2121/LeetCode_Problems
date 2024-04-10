# Write your MySQL query statement below
with cte as (select *,
row_number() over(partition by actor_id,director_id order by timestamp) rn
from ActorDirector)

select actor_id, director_id from cte 
where rn = 3;