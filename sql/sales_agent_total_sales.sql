--Provide a query that shows total sales made by each sales agent.

SELECT e.FirstName || " " || e.LastName "Sales Agent", sum(i.Total) "Total Sales"
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e
ON c.SupportRepId = e.EmployeeId
GROUP BY "Sales Agent";