--Provide a query only showing the Customers from Brazil.
SELECT *
FROM customer c
--Was curious if there were both spellings (Brazil/Brasil)
WHERE c.Country LIKE 'Bra%il'