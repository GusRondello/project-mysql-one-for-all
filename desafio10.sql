SELECT t.title AS nome, 
    COUNT(h.track_id) AS reproducoes
FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.tracks AS t ON t.id = h.track_id
INNER JOIN SpotifyClone.users AS u ON u.id = h.user_id
INNER JOIN SpotifyClone.plans AS p ON p.id = u.plan_id
WHERE p.plan_name IN ('gratuito', 'pessoal')

GROUP BY nome
ORDER BY nome;