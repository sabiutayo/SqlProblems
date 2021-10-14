SELECT contacttitle AS ContactTitle,
COUNT(*) AS TotalContactTitle
FROM customers
GROUP BY contacttitle
ORDER BY TotalContactTitle DESC;