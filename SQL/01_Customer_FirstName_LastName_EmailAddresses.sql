/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: This query displays all customers first name, last name, and email addresses.
*/

SELECT 
	FirstName AS [Customer First Name],
	LastName AS 'Customer Last Name', 
	Email AS EMAIL 
FROM 
	Customer
ORDER BY 
	FirstName ASC,
	LastName DESC
LIMIT 10;
