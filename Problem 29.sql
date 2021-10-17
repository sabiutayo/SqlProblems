SELECT e.employeeid, e.lastname, o.orderid, p.productname, od.quantity
FROM  orders o
INNER JOIN employees e ON o.employeeid = e.employeeid
INNER JOIN order_details od ON o.orderid = od.orderid
INNER JOIN products p ON od.productid = p.productid
ORDER BY o.orderid, p.productid;