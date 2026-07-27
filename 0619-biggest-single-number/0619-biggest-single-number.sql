SELECT (
    SELECT N.num 
    FROM MyNumbers AS N
    GROUP BY num
    HAVING COUNT(num) =1
    ORDER BY num DESC
    LIMIT 1
) AS num;