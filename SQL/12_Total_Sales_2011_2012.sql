/* 
CREATED BY: Emily Chee
CREATED: 06/01/26
DESCRIPTION: WSDA Music made $1,947.97 between the years 2011 and 2012.
*/

SELECT
	SUM(total)
FROM
	Invoice
WHERE InvoiceDate
BETWEEN '2011-01-01' AND '2012-12-31';