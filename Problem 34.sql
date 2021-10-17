SELECT customers.customerid, companyname,
 sum(unitprice * quantity ) AS TotalWithoutDiscount,
 sum(unitprice * quantity * (1 - discount)) AS TotalWithDiscount
FROM customers
INNER JOIN orders ON customers.customerid = orders.customerid
INNER JOIN order_details ON  orders.orderid = order_details.orderid
WHERE orderdate >= '1998-01-01' AND orderdate < '1999-01-01'
GROUP BY customers.customerid, customers.companyname
HAVING TotalWithDiscount > 10000
ORDER BY TotalWithDiscount DESC;