--Provide a query that shows the total number of tracks in each playlist. 
--The Playlist name should be include on the resultant table.

SELECT p.Name "Playlist", count(pt.TrackId) as "# of tracks"
FROM Playlist p
JOIN PlaylistTrack pt
ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name;
