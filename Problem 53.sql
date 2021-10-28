With customer AS 
(SELECT DISTINCT country
FROM customers
ORDER BY country),
supplier AS
(SELECT DISTINCT country
FROM suppliers
ORDER BY country)
SELECT supplier.country AS suppliercountry, customer.country AS customercountry
FROM customer
LEFT JOIN supplier USING (country)
UNION ALL
SELECT customer.country AS customercountry , supplier.country AS suppliercountry
FROM supplier
LEFT JOIN customer USING (country)
ORDER BY country
;