SELECT orderid AS OrderID, productid AS ProductID,
 unitprice AS UnitPrice, quantity AS Quantity, (unitprice *  quantity) AS TotalPrice
 FROM order_details
 ORDER BY orderid, productid;