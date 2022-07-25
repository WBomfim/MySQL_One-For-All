SELECT COUNT(Hi.musica_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.Historico_Reproducoes AS Hi
JOIN SpotifyClone.Usuarios AS Us
ON Hi.usuario_id = Us.usuario_id
WHERE Us.nome = 'Bill';
