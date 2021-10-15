--My version
SELECT shipcountry, AVG(freight) AS AverageFreight
FROM orders
GROUP BY shipcountry
ORDER BY AverageFreight DESC
LIMIT 3 OFFSET 0;

--Their version
SELECT shipcountry, AVG(freight) AS AverageFreight
FROM orders
GROUP BY shipcountry
ORDER BY AverageFreight DESC
OFFSET 0 ROWS FETCH FIRST 3 ROWS ONLY;