SELECT u.username AS usuario,
    IF(MAX(YEAR(h.history_date)) = 2021,
    'Usuário ativo',
    'Usuário inativo')
AS condicao_usuario
FROM SpotifyClone.history AS h 
INNER JOIN users AS u ON u.id = h.users_id
GROUP BY users_id
ORDER BY u.username;