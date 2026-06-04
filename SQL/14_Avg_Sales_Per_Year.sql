/*
CREATED BY: Emily Chee
CREATED: 06-01-2026
DESCRIPTION: The average transaction amount for each year that WSDA Music has been in business.

*/

SELECT 
	strftime('%Y',InvoiceDate) AS 'Invoice Year',
	ROUND(AVG(total),2) AS 'Average Sales'
FROM
	Invoice
GROUP BY
	"Invoice Year";