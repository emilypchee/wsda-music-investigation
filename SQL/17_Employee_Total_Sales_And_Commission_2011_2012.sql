/*
CREATED BY: Emily Chee
CREATED: 2026-06-01
DESCRIPTION: Employee total sales and commission payout between 2011 and 2012.
*/

SELECT 
	e.FirstName,
	e.LastName,
	sum(i.total) AS 'Total Sales',
	ROUND(0.15 * sum(i.total), 2) AS 'Commission Payout'
FROM 
	Invoice i 
INNER JOIN 
         Customer c 
ON i.CustomerId = c.CustomerId 
INNER JOIN 
         Employee e 
ON e.EmployeeId = c.SupportRepId 
WHERE
	i.InvoiceDate BETWEEN '2011-01-01' AND '2012-12-31'
GROUP BY
	e.FirstName,
	e.LastName
ORDER BY
	e.LastName;