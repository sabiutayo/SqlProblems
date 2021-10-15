SELECT productid, productname, unitsinstock, reorderlevel
FROM products
WHERE unitsinstock < reorderlevel
GROUP BY productname
ORDER BY productid
;