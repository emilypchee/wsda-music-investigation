/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: Age of all employees
*/

SELECT
	FirstName ||' '|| LastName AS 'Name',
	strftime ('%m-%d-%Y',BirthDate) AS 'Birthday',
	strftime('%Y-%m-%d','now') - strftime ('%Y-%m-%d',BirthDate) AS 'Age'
FROM 
	Employee;
