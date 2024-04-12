# Write your MySQL query statement below
select p.product_id, p.product_name
from Product p
natural join Sales s 
group by product_id
having min(sale_date)>= "2019-01-01" and max(sale_date) <= "2019-03-31";