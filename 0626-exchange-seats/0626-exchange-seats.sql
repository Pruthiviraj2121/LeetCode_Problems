# Write your MySQL query statement below
select id,
coalesce(case when id%2 <> 0 then lead(student) over(order by id)
    when id%2 = 0 then lag(student) over(order by id) end,student) student
from Seat;