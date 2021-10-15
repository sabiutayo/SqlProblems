--My version
SELECT customerid, companyname, region
FROM customers c 
ORDER BY region NOT NULL DESC, region;

--Their version
SELECT customerid, companyname, region
FROM customers c 
ORDER BY 
CASE 
	WHEN region IS NULL THEN 1
	ELSE 0
END
,region, customerid
	;