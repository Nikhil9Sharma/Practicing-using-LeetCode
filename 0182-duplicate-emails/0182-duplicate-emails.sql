# Write your MySQL query statement below
SELECT DISTINCT
p1.email AS Email
FROM Person AS p1
GROUP BY EMAIL 
HAVING COUNT(EMAIL)>1;