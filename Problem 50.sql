WITH sumOrders AS 
(SELECT customers.customerid,
		sum(order_details.quantity*order_details.unitprice) AS TotalOrderAmount
	FROM customers
	JOIN orders ON orders.customerid = customers.customerid
	JOIN order_details ON orders.orderid = order_details.orderid
	WHERE orderdate >= datetime('2016-01-01') AND orderdate < datetime('2017-01-01')
	GROUP BY customers.customerid)
SELECT 
	CASE 
		WHEN TotalOrderAmount >= 0 AND TotalOrderAmount < 1000 THEN 'Low'
		WHEN TotalOrderAmount >= 1000 AND TotalOrderAmount < 5000 THEN 'Medium'
		WHEN TotalOrderAmount >= 5000 AND TotalOrderAmount < 10000 THEN 'High'
		ELSE 'Very High'
	END CustomerGroup,
	count(*) AS TotalInGroup,
	count(*)*1.00/(SELECT count(*) FROM sumOrders ) AS PercentageInGroup
	FROM sumOrders
GROUP BY CustomerGroup;
