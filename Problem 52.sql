SELECT country
FROM customers
UNION
SELECT country
FROM employees
ORDER BY country;