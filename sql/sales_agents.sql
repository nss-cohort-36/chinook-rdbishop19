--Provide a query showing only the Employees who are Sales Agents.

SELECT *
FROM Employee e
--This is used to get anyone in sales
WHERE e.Title LIKE '%Sales%';