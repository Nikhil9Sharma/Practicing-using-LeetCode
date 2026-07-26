# Write your MySQL query statement below
SELECT 
activity_date as day,
COUNT(Distinct user_id ) AS active_users
FROM Activity
WHERE (activity_date > "2019-06-27" AND activity_date <= "2019-07-27")
Group BY activity_date
ORDER BY activity_date ASC;