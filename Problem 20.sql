SELECT categoryname, count(*)
FROM products p
JOIN categories c ON p.categoryid=c.categoryid
GROUP BY categoryname
ORDER BY count(*) DESC
;