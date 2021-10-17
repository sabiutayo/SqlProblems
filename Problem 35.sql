SELECT employeeid, orderid, orderdate
FROM orders
WHERE orderdate=date(orderdate,'start of month', '+1 month','-1 day')
ORDER BY employeeid, orderdate, orderid
;