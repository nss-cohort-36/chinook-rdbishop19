--Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.

SELECT 
	i.Total "InvoiceTotal"
	,c.FirstName || " " || c.LastName as "CustomerName"
	,c.Country, e.FirstName || " " || e.LastName as "SalesAgent"
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.CustomerId
JOIN Employee e
ON e.EmployeeId = c.SupportRepId;