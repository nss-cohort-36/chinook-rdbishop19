--Which sales agent made the most in sales in 2009?
--Hint: Use the MAX function on a subquery.

SELECT 
	t.FirstName || " " || t.LastName "Sales Agent"
	,max(t.Total) "Total 2009 Sales"
FROM (
	SELECT e.FirstName, e.LastName, sum(i.Total) as "Total"
	FROM Invoice i
	JOIN Customer c
	ON c.CustomerId = i.CustomerId
	JOIN Employee e
	ON e.EmployeeId = c.SupportRepId
	WHERE i.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01'
	GROUP BY e.FirstName
) as t;