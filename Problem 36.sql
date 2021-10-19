SELECT orders.orderid, COUNT(*) AS TotalOrderDetails
FROM orders
JOIN order_details ON orders.orderid = order_details.orderid
GROUP BY orders.orderid
ORDER BY TotalOrderDetails DESC
LIMIT 10;