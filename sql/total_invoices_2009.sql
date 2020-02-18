--How many Invoices were there in 2009?

SELECT count(i.InvoiceId) as "2009 Invoices"
FROM Invoice i
WHERE (i.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01');