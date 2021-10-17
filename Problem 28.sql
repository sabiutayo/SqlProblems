SELECT shipcountry, avg(freight) AS AverageFreight
FROM orders
WHERE orderdate > DATE((Select max(orderdate) FROM orders), '-1 years') 
GROUP BY shipcountry
ORDER BY AverageFreight DESC
LIMIT 3 OFFSET 0;