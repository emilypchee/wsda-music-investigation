/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: A mailing list of all US Customers
*/

SELECT
	FirstName ||' '|| LastName AS 'Name',
	FirstName ||' '|| LastName ||' '|| Address ||','|| City ||' '|| State ||' '|| substr(postalcode,1,5) AS 'Mailing Address'
FROM 
	Customer
WHERE
	Country = 'USA';