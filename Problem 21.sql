SELECT country, city, count(*) AS TotalCustomer
FROM  customers
GROUP BY country, city
ORDER BY TotalCustomer DESC
;