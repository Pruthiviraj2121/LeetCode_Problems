# Write your MySQL query statement below
select query_name, round(avg(cast(rating as decimal)/ position),2) quality, 
round(sum(case when rating < 3 then 1 else 0 end)/count(*)*100,2) poor_query_percentage 
from Queries
where query_name is not null
group by query_name;