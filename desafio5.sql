SELECT 
    t.title AS cancao,
    COUNT(h.track_id) AS reproducoes
FROM SpotifyClone.tracks AS t 
INNER JOIN SpotifyClone.history AS h
ON h.track_id = t.id

GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC;