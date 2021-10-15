SELECT productid, productname, unitsinstock, 
unitsonorder, reorderlevel, discontinued
FROM products
WHERE unitsinstock + unitsonorder < reorderlevel
ORDER BY productid;