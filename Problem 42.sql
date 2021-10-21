SELECT  employees.employeeid ,employees.lastname
,count(*) AS TotalLateOrders
FROM orders
JOIN employees on orders.employeeid = employees.employeeid
WHERE requireddate <= shippeddate
GROUP BY employees.employeeid, employees.lastname
ORDER BY TotalLateOrders DESC
;