SELECT orderid, productid, quantity
FROM order_details
WHERE quantity >= 60 
GROUP BY orderid, quantity
HAVING COUNT(*) > 1;
