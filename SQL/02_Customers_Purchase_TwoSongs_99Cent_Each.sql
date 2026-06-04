/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: Customers who purchased two songs at $0.99 each
*/

SELECT 
	c.CustomerId,
	c.FirstName,
	c.LastName,
	c.Email,
	i.InvoiceDate,
	i.BillingAddress,
	i.BillingCity,
	i.total
FROM
	Invoice AS i
LEFT JOIN Customer AS c
	ON i.CustomerId = c.CustomerId
WHERE 
	i.total = 1.98
ORDER BY
	c.CustomerId ASC;