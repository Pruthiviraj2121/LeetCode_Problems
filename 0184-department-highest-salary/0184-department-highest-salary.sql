# Write your MySQL query statement below
with cte as (
    select e.id employee_id, e.name Employee,e.salary Salary ,d.name Department,
dense_rank() over(partition by d.name order by e.salary desc) rnk
from Employee e 
left join Department d on e.departmentId = d.id)

select Department, Employee, Salary
from cte
where rnk = 1
order by Employee;