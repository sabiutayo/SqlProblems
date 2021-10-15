--My version
SELECT shipcountry, AVG(freight) AS AverageFreight
FROM orders
WHERE orderdate > datetime('1997-01-01')
GROUP BY shipcountry
ORDER BY AverageFreight DESC
LIMIT 3 OFFSET 0;