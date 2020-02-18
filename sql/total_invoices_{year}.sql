--How many Invoices were there in 2009 and 2011?

SELECT count(i.InvoiceId) as "2009/2011 Invoices"
FROM Invoice i
WHERE (i.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01')
OR (i.InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01');
--also this way
--WHERE (i.InvoiceDate BETWEEN '2009-01-01' AND '2012-01-01')
--AND InvoiceDate NOT LIKE '2010%';