with Orders2016 as (
Select customers.customerid
,companyname
,SUM(Quantity * UnitPrice) AS TotalOrderAmount
From customers
Join orders
on orders.customerid = customers.customerid
Join order_details
on orders.orderid = order_details.orderid
WHERE orderdate >= datetime('2016-01-01') AND orderdate < datetime('2017-01-01')
Group by customers.customerid, customers.companyname
)
Select
customerid
,companyname
,TotalOrderAmount
,CustomerGroupName
from Orders2016
Join CustomerGroupThresholds
on Orders2016.TotalOrderAmount between
CustomerGroupThresholds.RangeBottom and CustomerGroupThresholds.RangeTop
Order by customerid ;