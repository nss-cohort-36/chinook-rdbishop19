--What are the respective total sales for each of those years (2009 and 2011)?
SELECT ROUND(sum(i2009.Total), 2) as "2009 Invoice Total", ROUND(sum(i2011.Total), 2) as "2011 Invoice Total"
FROM (
	Select i2.Total from Invoice i2
	WHERE i2.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01'
) as i2009
JOIN (
	SELECT i3.Total from Invoice i3
	WHERE i3.InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01'
) as i2011;

SELECT SUBSTR(i2009.InvoiceDate, 0, 5) as "Year", ROUND(sum(i2009.Total), 2) as "InvoiceTotal"
FROM (
	Select i2.Total, i2.InvoiceDate from Invoice i2
	WHERE i2.InvoiceDate BETWEEN '2009-01-01' AND '2010-01-01'
) as i2009
UNION
SELECT SUBSTR(i2011.InvoiceDate, 0, 5), ROUND(sum(i2011.Total), 2)
FROM (
	SELECT i3.Total, i3.InvoiceDate from Invoice i3
	WHERE i3.InvoiceDate BETWEEN '2011-01-01' AND '2012-01-01'
) as i2011;


