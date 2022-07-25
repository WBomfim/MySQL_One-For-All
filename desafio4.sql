SELECT Us.nome AS usuario,
IF (YEAR(MAX(Hi.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.Usuarios AS Us
JOIN SpotifyClone.Historico_Reproducoes AS Hi
ON Us.usuario_id = Hi.usuario_id
GROUP BY Us.nome
ORDER BY Us.nome;
