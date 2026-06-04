/*
CREATED BY: Emily Chee
CREATED: 2026-06-01
DESCRIPTION: List of customers that Jane Peacock supported.
*/

SELECT
	c.FirstName,
	c.LastName,
	e.FirstName,
	e.LastName,
	i.InvoiceDate,
	sum(i.total) AS 'Total Sales',
	round(sum(i.total) *.15,2) AS 'Commission Payout'
FROM
	Customer c
INNER JOIN
	Employee e
	ON e.EmployeeId = c.SupportRepId
INNER JOIN
	Invoice i
	ON i.CustomerId = c.CustomerId
WHERE
	e.LastName = 'Peacock'
GROUP BY
	c.FirstName,
	c.LastName,
	e.FirstName,
	e.LastName
ORDER BY
	"Total Sales" DESC;
