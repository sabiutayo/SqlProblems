SELECT o.orderid, strftime('%Y-%m-%d', o.orderdate) AS OrderDate, s.companyname
FROM orders o
INNER JOIN shippers s ON s.shipperid= o.shipvia
WHERE o.orderid<10300
ORDER BY o.orderid;