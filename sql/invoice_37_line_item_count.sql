--Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT count() as '# of line items'
FROM InvoiceLine il
WHERE il.InvoiceId = 37;