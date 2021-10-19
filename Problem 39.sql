WITH potentialDuplicates AS
(SELECT orderid
FROM order_details
WHERE quantity >= 60 
GROUP BY orderid, quantity
HAVING COUNT(*) > 1)
SELECT orderid, productid, unitprice, quantity, discount
FROM order_details
WHERE orderid in 
( SELECT orderid FROM potentialDuplicates)
ORDER BY orderid, quantity