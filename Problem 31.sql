SELECT c.customerid, o.customerid
FROM customers c
LEFT JOIN orders o ON c.customerid = o.customerid
AND o.employeeid=4
WHERE o.customerid IS NULL;

-- with NOT IN

SELECT customerid
FROM customers 
WHERE customerid NOT IN 
		(SELECT customerid 
		FROM orders 
		WHERE employeeid = 4)
;

--with NOT EXISTS

SELECT customerid
FROM customers
WHERE NOT EXISTS 
		(SELECT customerid
		FROM orders
		WHERE orders.customerid = customers.customerid 
			AND employeeid = 4);