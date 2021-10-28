WITH Late AS(
	SELECT employeeid, count(*) AS TotalLateOrders
	FROM orders
	WHERE orders.requireddate <= shippeddate
	GROUP BY employeeid),
	TotalOrd AS(
	SELECT employeeid, count(*) AS TotalOrders
	FROM orders
	GROUP BY employeeid)  
SELECT employees.employeeid, lastname,
	TotalOrd.TotalOrders,
	IFNULL(Late.TotalLateOrders,0) AS TotalLateOrders,
	round((IFNULL(Late.TotalLateOrders,0)*1.00)/TotalOrd.TotalOrders, 2) AS PercentageLateOrders
FROM employees
LEFT JOIN Late ON Late.employeeid = employees.employeeid
LEFT JOIN TotalOrd ON TotalOrd.employeeid = employees.employeeid
ORDER BY employees.employeeid;