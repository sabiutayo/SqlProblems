WITH LateOrders AS 
(SELECT orders.employeeid, count(*) AS TotalOrders
	FROM orders
	WHERE requireddate <= shippeddate
	GROUP BY orders.employeeid
	)
, AllOrders AS
(SELECT orders.employeeid,count(*) AS TotalOrders
	FROM orders
	GROUP BY orders.employeeid
	)
SELECT employees.employeeid, employees.lastname
	,AllOrders.TotalOrders
	,LateOrders.TotalOrders
	FROM employees
	JOIN AllOrders ON employees.employeeid = AllOrders.employeeid
	JOIN LateOrders ON AllOrders.employeeid = LateOrders.employeeid
;