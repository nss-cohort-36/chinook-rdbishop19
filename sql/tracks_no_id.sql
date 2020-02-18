--Provide a query that shows all the Tracks, but displays no IDs.
--The result should include the Album name, Media type and Genre.

SELECT t.Name "Track", al.Title "Album", mt.Name "Media Type", g.Name "Genre"
FROM Track t
JOIN MediaType mt
ON mt.MediaTypeId = t.MediaTypeId
JOIN Album al
ON al.AlbumId = t.AlbumId
JOIN Genre g
ON g.GenreId = t.GenreId
ORDER BY t.Name;