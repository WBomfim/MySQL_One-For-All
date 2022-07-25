SELECT MIN(Pl.valor) AS faturamento_minimo,
MAX(Pl.valor) AS faturamento_maximo,
ROUND(AVG(Pl.valor), 2) AS faturamento_medio,
ROUND(SUM(Pl.valor), 2) AS faturamento_total
FROM SpotifyClone.Planos AS Pl
JOIN SpotifyClone.Usuarios AS Us
ON Pl.plano_id = Us.plano_id;
