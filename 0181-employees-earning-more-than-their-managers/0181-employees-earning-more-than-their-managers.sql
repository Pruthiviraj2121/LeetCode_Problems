# Write your MySQL query statement below
select e.name Employee from Employee e
join Employee m on e.managerId = m.id and e.salary > m.salary;