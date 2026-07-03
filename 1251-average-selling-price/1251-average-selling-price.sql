# Write your MySQL query statement below
SELECT 
table1.product_id, ROUND(
    IFNULL(
        SUM(table2.units*table1.price)/SUM(table2.units),0)
        ,2) AS average_price
FROM Prices AS table1
LEFT JOIN UnitsSold AS table2
ON table1.product_id= table2.product_id
AND table2.purchase_date BETWEEN table1.start_date AND table1.end_date
GROUP BY table1.product_id;