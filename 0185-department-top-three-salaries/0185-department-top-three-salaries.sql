# Write your MySQL query statement below
with cte as (
    select d.name Department, e.name Employee, e.salary Salary, 
dense_rank() over(partition by d.name order by e.salary desc) rnk
from Employee e
left join Department d on e.departmentId = d.id)

select Department, Employee, Salary from cte 
where rnk <= 3
order by Employee;