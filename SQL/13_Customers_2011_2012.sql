/*
CREATED BY: Emily Chee
CREATED: 06/01/2026
DESCRIPTION: 
A list of customers, sales reps, and total transaction amounts for each customer between 2011 and 2012.
12 transactions are above the average transation amount during the same time period.
48 transactions are below the average transaction amount during the same time period.
*/

SELECT 
	c.FirstName ||' '|| c.LastName AS 'Customer Name',
	e.FirstName ||' '|| e.LastName AS 'Sales Rep Name',
	strftime('%Y-%m-%d',i.InvoiceDate) AS 'Invoice Date',
	i.total,
	CASE
	WHEN i.total > AVG(i.total) THEN 'Above Average'
	ELSE 'Below Average'
	END AS 'Above or Below Average'
FROM Customer c
INNER JOIN Invoice i
	ON c.CustomerId = i.CustomerId
INNER JOIN Employee e
	ON c.SupportRepId = e.EmployeeId
WHERE i.InvoiceDate 
	BETWEEN '2011-01-01' AND '2012-12-31'
GROUP BY
	c.CustomerId
ORDER BY
	"Invoice Date" ASC,
	"Customer Name" ASC;