SELECT c.customerid, o.customerid
FROM customers c
LEFT JOIN orders o ON c.customerid = o.customerid
WHERE o.customerid IS NULL;

--OR "NOT IN"
SELECT customerid FROM customers
WHERE customerid NOT IN (SELECT customerid FROM orders);

-- OR "NOT EXISTS
SELECT customerid FROM customers
WHERE NOT EXISTS 
(SELECT customerid FROM orders 
WHERE orders.customerid = customers.customerid);