--Which country's customers spent the most?

SELECT t.BillingCountry, max(t."Total Sales") "Max Sales"
FROM
(
	SELECT i.BillingCountry, sum(i.Total) "Total Sales"
	FROM Invoice i
	GROUP BY i.BillingCountry
) t;