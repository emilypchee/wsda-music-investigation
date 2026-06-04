/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: How many invoices exist between $1.98 and $5.00?
*/

SELECT *
FROM
	Invoice
WHERE 
	total BETWEEN 1.98 AND 5.00
ORDER BY 
	total ASC;
