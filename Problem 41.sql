SELECT orderid, orderdate, requireddate, shippeddate
FROM orders
WHERE requireddate <= shippeddate
GROUP BY requireddate, shippeddate
ORDER BY orderid
;