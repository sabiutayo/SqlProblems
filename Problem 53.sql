With supplier AS
(SELECT country AS SupplierCountry
FROM suppliers GROUP BY country),
customer AS
(SELECT country AS CustomerCountry
FROM customers GROUP BY country)
,countries AS 
(
SELECT DISTINCT SupplierCountry, CustomerCountry
FROM supplier
LEFT JOIN customer ON SupplierCountry = CustomerCountry
UNION ALL
SELECT DISTINCT  SupplierCountry, CustomerCountry
FROM customer
LEFT JOIN supplier ON SupplierCountry = CustomerCountry
)
SELECT DISTINCT * FROM countries;