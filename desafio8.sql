SELECT Ar.nome AS artista, Al.nome AS album
FROM SpotifyClone.Artistas AS Ar
JOIN SpotifyClone.Albuns AS Al
ON Ar.artista_id = Al.artista_id
WHERE Ar.nome = 'Walter Phoenix'
ORDER BY album;
