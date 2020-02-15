--Which sales agent made the most in sales over all?

SELECT
	t."Sales Agent",
	max(t.Total)
FROM
	(
	SELECT
		e.FirstName || " " || e.LastName "Sales Agent",
		sum(i.Total) "Total"
	FROM
		Invoice i
	JOIN Customer c ON
		i.CustomerId = c.CustomerId
	JOIN Employee e ON
		c.SupportRepId = e.EmployeeId
	GROUP BY
		"Sales Agent" ) t