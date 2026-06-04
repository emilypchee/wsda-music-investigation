/*
CREATED BY: Emily Chee
CREATED: 06/01/2026
DESCRIPTION: 167 transactions took place between the years 2011 and 2012.
*/

SELECT 
	COUNT(InvoiceId) 
FROM Invoice
WHERE InvoiceDate 
	BETWEEN '2011-01-01' AND '2012-12-31';