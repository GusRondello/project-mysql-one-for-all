SELECT 
    u.username AS usuario,
    COUNT(track_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(t.duration) / 60, 2) AS total_minutos
FROM SpotifyClone.history AS h 
INNER JOIN users AS u ON u.id = h.user_id
INNER JOIN tracks AS t ON t.id = h.track_id
GROUP BY user_id
ORDER BY u.username;