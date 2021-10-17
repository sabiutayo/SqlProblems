SELECT customers.customerid, customers.companyname,
	orders.orderid,
	sum(order_details.unitprice * order_details.quantity)AS TotalOrderAmount
FROM customers
	INNER JOIN orders 
		ON orders.customerid = customers.customerid
	INNER JOIN order_details 
		ON orders.orderid = order_details.orderid
WHERE orderdate >= '1998-01-01'
	AND orderdate < '1999-01-01'
GROUP BY customers.customerid,
	customers.companyname,
	orders.orderid
HAVING TotalOrderAmount > 10000
ORDER BY TotalOrderAmount DESC;