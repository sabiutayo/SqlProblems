SELECT orderid
FROM orders
ORDER BY random()
LIMIT (SELECT ROUND(Count(*)*0.02) FROM ORDERS)
;