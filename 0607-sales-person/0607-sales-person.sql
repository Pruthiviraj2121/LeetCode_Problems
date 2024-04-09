# Write your MySQL query statement below
select name from salesperson 
where name not in (
select s.name from SalesPerson s, Company c, Orders o
where s.sales_id = o.sales_id and c.com_id = o.com_id and c.name = "RED")