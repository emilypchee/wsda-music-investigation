/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: Segment tracks based on price

Sales Purchase Type: 
Budget: Tracks priced at $0.99 or less
Regular: Between $1.00 and $1.49
Premium: Between $1.50 and $1.99
Exclusive: Above $1.99
*/

SELECT 
    Name AS 'Track Name',
    Composer,
    UnitPrice AS 'Price',
    CASE
		WHEN UnitPrice < 0.99 THEN 'Budget'
		WHEN UnitPrice BETWEEN 1.00 AND 1.49 THEN 'Regular'
		WHEN UnitPrice BETWEEN 1.50 AND 1.99 THEN 'Premium'
		ELSE 'Exclusive'
    END AS 'PriceCategory'
FROM Track
ORDER BY
	UnitPrice ASC;