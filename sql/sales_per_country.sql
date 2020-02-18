--Provide a query that shows the total sales per country.

SELECT i.BillingCountry, sum(i.Total) "Total Sales"
FROM Invoice i
GROUP BY i.BillingCountry;

