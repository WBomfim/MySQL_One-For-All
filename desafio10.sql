SELECT Mu.titulo AS nome, COUNT(Hi_Re.musica_id) AS reproducoes
FROM SpotifyClone.Musicas AS Mu
JOIN SpotifyClone.Historico_Reproducoes AS Hi_Re
ON Mu.musica_id = Hi_Re.musica_id
JOIN SpotifyClone.Usuarios AS Us
ON Hi_Re.usuario_id = Us.usuario_id
JOIN SpotifyClone.Planos AS Pl
ON Us.plano_id = Pl.plano_id
WHERE Pl.modelo = 'gratuito' OR Pl.modelo = 'pessoal'
GROUP BY Mu.titulo
ORDER BY nome;
