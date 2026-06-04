/*
CREATED BY: Emily Chee
CREATED: 2026-06-01
DESCRIPTION: A list of employees who exceeded the average transaction amount from sales they generated during 2011 and 2012.
*/

SELECT 
	e.FirstName,
	e.LastName,
	sum(i.total) AS 'Total Sales'
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
AND
	i.total > 11.66
	
GROUP BY
	e.FirstName,
	e.LastName
ORDER BY
	e.LastName;