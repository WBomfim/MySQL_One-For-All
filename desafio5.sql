SELECT Mu.titulo AS cancao, COUNT(Hi.musica_id) AS reproducoes
FROM SpotifyClone.Musicas AS Mu
JOIN SpotifyClone.Historico_Reproducoes AS Hi
ON Mu.musica_id = Hi.musica_id
GROUP BY Mu.titulo
ORDER BY reproducoes DESC, cancao
LIMIT 2;
