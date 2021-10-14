SELECT orderid, customerid, shipcountry
FROM orders
WHERE shipcountry 
IN ('Brasil', 'Mexico', 'Argentina', 'Venezuela');