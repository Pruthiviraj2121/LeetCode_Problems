# Write your MySQL query statement below
select id, 
case when p_id is null then "Root"
    when p_id in (select id from Tree) and id in(select p_id from Tree) then "Inner"
    else "Leaf" end Type
from Tree;