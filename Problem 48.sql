SELECT 	customers.customerid,
		companyname,
		sum(order_details.quantity*order_details.unitprice) AS TotalOrderAmount,
		CASE 
				WHEN sum(order_details.quantity*order_details.unitprice) >= 0 
					AND sum(order_details.quantity*order_details.unitprice) < 1000 
				THEN 'Low'
				WHEN sum(order_details.quantity*order_details.unitprice) >= 1000 
					AND sum(order_details.quantity*order_details.unitprice) < 5000 
				THEN 'Medium'
				WHEN sum(order_details.quantity*order_details.unitprice) >= 5000 
					AND sum(order_details.quantity*order_details.unitprice) < 10000 
				THEN 'High'
				ELSE 'Very High'
				END CustomerGroup
FROM customers
JOIN orders ON orders.customerid = customers.customerid
JOIN order_details ON orders.orderid = order_details.orderid
WHERE orderdate >= datetime('2016-01-01') AND orderdate < datetime('2017-01-01')
GROUP BY customers.customerid, companyname;



WITH sumOrders AS 
(SELECT customers.customerid,companyname,
		sum(order_details.quantity*order_details.unitprice) AS TotalOrderAmount
	FROM customers
	JOIN orders ON orders.customerid = customers.customerid
	JOIN order_details ON orders.orderid = order_details.orderid
	WHERE orderdate >= datetime('2016-01-01') AND orderdate < datetime('2017-01-01')
	GROUP BY customers.customerid, companyname)
SELECT customerid ,companyname, TotalOrderAmount,
	CASE 
		WHEN TotalOrderAmount >= 0 AND TotalOrderAmount < 1000 THEN 'Low'
		WHEN TotalOrderAmount >= 1000 AND TotalOrderAmount < 5000 THEN 'Medium'
		WHEN TotalOrderAmount >= 5000 AND TotalOrderAmount < 10000 THEN 'High'
		ELSE 'Very High'
	END CustomerGroup
FROM sumOrders;