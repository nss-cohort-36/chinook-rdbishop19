--Provide a query that shows the # of invoices per country. HINT: GROUP BY

SELECT 
	i.BillingCountry
	,count() as "# of invoices"
FROM Invoice i
GROUP BY i.BillingCountry;