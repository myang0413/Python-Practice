# Write your MySQL query statement below
SELECT p.product_id, ROUND(sum(price*units)/sum(units),2) as average_price 
FROM Prices p
INNER JOIN UnitsSold u
ON p.product_id=u.product_id
WHERE purchase_date BETWEEN start_date AND end_date
Group By product_id