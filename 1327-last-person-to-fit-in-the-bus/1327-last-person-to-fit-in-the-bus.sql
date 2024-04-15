# Write your MySQL query statement below
with cte as (    
    select person_name, 
    sum(weight) over(order by turn) sum
    from Queue
    order by turn)

select person_name from cte
where sum <= 1000
order by sum desc 
limit 1;