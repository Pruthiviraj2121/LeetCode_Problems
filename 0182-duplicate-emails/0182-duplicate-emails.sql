# Write your MySQL query statement below
with cte as (
    select *, count(email) cnt from Person
where email is not null
group by email)

select email Email from cte 
where cnt > 1