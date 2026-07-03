# Write your MySQL query statement below
SELECT 
C.Id, C.Movie, C.Description, C.Rating
FROM Cinema AS C
WHERE (MOD(C.ID,2)<>0) AND (C.description <> "Boring")
ORDER BY C.Rating DESC; 