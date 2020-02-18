--What are the respective total sales for 2011?
SELECT ROUND(sum(i.Total), 2) as "2011 Invoice Total"
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01';


