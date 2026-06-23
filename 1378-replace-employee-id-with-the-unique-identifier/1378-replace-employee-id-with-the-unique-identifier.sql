# Write your MySQL query statement below

SELECT
EM.unique_id, E.name
FROM Employees AS E 
LEFT JOIN EmployeeUNI AS EM
ON E.id = EM.id;