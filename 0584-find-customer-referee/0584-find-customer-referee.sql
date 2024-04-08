# Write your MySQL query statement below
with cte as (select id, name , coalesce(referee_id, 0) coal_Ref from Customer)
select name from cte
where coal_Ref not in (select coal_Ref from Customer where coal_Ref = 2)