With supplier AS
(SELECT country, count (*) AS TotalSuppliers
FROM suppliers GROUP BY country),
customer AS
(SELECT country, count (*) AS TotalCustomers
FROM customers GROUP BY country)
,countries AS 
(
SELECT country,  TotalSuppliers , ifnull(TotalCustomers,0) AS TotalCustomers
FROM supplier 
LEFT JOIN customer USING(country)
UNION
SELECT  country,  ifnull(TotalSuppliers,0) AS TotalSuppliers , TotalCustomers 
FROM customer
LEFT JOIN supplier USING(country)
)
SELECT * FROM countries;