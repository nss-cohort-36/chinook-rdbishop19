
--Provide a query that shows the count of customers assigned to each sales agent.
 SELECT
 	e.FirstName || " " || e.LastName "Sales Agent"
	,count() "# of customers"
FROM
	Customer c
JOIN Employee e ON
	c.SupportRepId = e.EmployeeId
GROUP BY
	"Sales Agent";