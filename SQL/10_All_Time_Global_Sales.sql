/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: What are all the customer's full name and associated standardized five-digit format postal code?
*/

SELECT
	c.FirstName ||' '|| c.LastName AS 'CustomerFullName',
	substr(c.PostalCode,1,5) AS 'StandardizedPostalCode'
FROM
	Customer c
WHERE 
	c.Country = 'USA'
ORDER BY
	CustomerFullName;