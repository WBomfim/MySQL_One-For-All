SELECT Ar.nome AS artista, Al.nome AS album, COUNT(Ar_Se.usuario_id) AS seguidores
FROM SpotifyClone.Artistas AS Ar
JOIN SpotifyClone.Albuns AS Al
ON Ar.artista_id = Al.artista_id
JOIN SpotifyClone.Artistas_Seguidos AS Ar_Se
ON Ar.artista_id = Ar_Se.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
