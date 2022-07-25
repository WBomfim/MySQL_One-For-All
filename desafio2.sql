SELECT COUNT(DISTINCT(Mu.musica_id)) AS cancoes,
COUNT(DISTINCT(Ar.artista_id)) AS artistas,
COUNT(DISTINCT(Al.album_id)) AS albuns
FROM SpotifyClone.Musicas AS Mu
JOIN SpotifyClone.Artistas AS Ar
JOIN SpotifyClone.Albuns AS Al;
