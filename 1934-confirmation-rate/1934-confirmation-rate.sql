# Write your MySQL query statement below
SELECT
S.user_id, 
ROUND(
    IFNULL(
        SUM(C.action = 'confirmed')/count(c.action),0
        ),2 
        ) AS confirmation_rate
FROM Signups AS S
Left JOIN 
Confirmations AS C ON
S.user_id = C.user_id
Group By S.User_id
ORDER BY S.user_id;