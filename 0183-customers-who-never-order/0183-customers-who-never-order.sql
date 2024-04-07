# Write your MySQL query statement below
with cte as (
    select c.id,c.name,o.customerId from customers c
left join Orders o on c.id = o.customerId)

select name Customers from cte 
where customerId is null;