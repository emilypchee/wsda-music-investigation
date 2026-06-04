/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: What are the average invoice totals by billing country and city?
*/

SELECT 
	BillingCountry,
	BillingCity,
	ROUND(AVG(Total),2) AS 'Average Total Sales'
FROM
	Invoice
GROUP BY
	BillingCountry, BillingCity
HAVING
	Total < 10
ORDER BY
	BillingCountry;