# Write your MySQL query statement below
DELETE t1
FROM Person t1
JOIN Person t2 
ON t1.id > t2.id 
AND t1.email = t2.email