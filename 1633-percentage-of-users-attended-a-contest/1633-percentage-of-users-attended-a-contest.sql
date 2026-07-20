SELECT 
R.contest_id,
ROUND(
    COUNT(DISTINCT R.user_id )*100.0/
    (SELECT COUNT(User_id) FROM Users)
,2) AS percentage
FROM Register AS R
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC;