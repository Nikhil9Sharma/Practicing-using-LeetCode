# Write your MySQL query statement below
SELECT  
E1.employee_id,
IFNULL(E2.department_id, E1.department_id) AS department_id
FROM Employee E1 
LEFT JOIN Employee E2
ON E1.employee_id = E2.employee_id
 AND E2.primary_flag = 'Y'
GROUP BY E1.employee_id;