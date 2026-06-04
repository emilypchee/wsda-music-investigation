/*
Created by: Emily Chee
Create Date: 06/01/2026
Description: What track have never been sold?
*/

SELECT
	t.TrackId AS 'Track ID',
	t.Name AS 'Track Name',
	t.Composer,
	g.Name AS 'Genre'
FROM
	Track t
INNER JOIN
	Genre g
	ON g.GenreId = t.GenreId
WHERE
	t.TrackId NOT IN (
	SELECT DISTINCT InvoiceLine.TrackId
	FROM InvoiceLine
	)
ORDER BY
	t.Name ASC;

	
	