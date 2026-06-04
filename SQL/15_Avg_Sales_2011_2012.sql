/*
CREATED BY: Emily Chee
CREATED: 06/01/2026
DESCRIPTION: Average total sales between 2011 and 2012.
*/

SELECT 
	Round(avg(total),2) AS 'Average Total Sales'
FROM 
	Invoice
WHERE
	InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'