# Write your MySQL query statement below
SELECT 
w.name, w.population, w.area 
FROM World AS w
WHERE population > (25000000-1) OR area >(3000000-1) 