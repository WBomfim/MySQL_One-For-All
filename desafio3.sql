SELECT Us.nome AS usuario,
COUNT(Hi.usuario_id) AS qtde_musicas_ouvidas,
ROUND((SUM(Mu.duracao) / 60), 2) AS total_minutos
FROM SpotifyClone.Usuarios AS Us
JOIN SpotifyClone.Historico_Reproducoes AS Hi
ON Us.usuario_id = Hi.usuario_id
JOIN SpotifyClone.Musicas AS Mu
ON Hi.musica_id = Mu.musica_id
GROUP BY Us.nome
ORDER BY Us.nome;
