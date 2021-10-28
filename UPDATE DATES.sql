/*
UPDATE orders
SET orderdate = datetime(orderdate, '+18 years')
WHERE orders.orderid = orders.orderid;
*/

/*
UPDATE orders
SET requireddate = datetime(requireddate, '+18 years')
WHERE orders.orderid = orders.orderid;
*/

/*
UPDATE orders
SET shippeddate = datetime(shippeddate, '+18 years')
WHERE orders.orderid = orders.orderid;
*/

/*
UPDATE employees
SET hiredate = datetime(hiredate, '+18 years')
WHERE employees.employeeid = employees.employeeid;
-/