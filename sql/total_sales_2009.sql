--What are the respective total sales for 2009?
SELECT ROUND(sum(i.Total), 2) as "2009 Invoice Total"
FROM Invoice i
WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01';


