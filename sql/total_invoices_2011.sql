--How many Invoices were there in 2011?

SELECT count(i.InvoiceId) as "2011 Invoices"
FROM Invoice i
WHERE (i.InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01');