SELECT COUNT(h.track_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS h
INNER JOIN users AS u ON u.id = h.user_id
WHERE u.username = 'Bill';