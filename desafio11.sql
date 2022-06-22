SELECT t.title AS nome_musica,
    CASE
        WHEN title LIKE '%Streets' THEN REPLACE(title, 'Streets', 'Code Review')
        WHEN title LIKE '%Her Own' THEN REPLACE(title, 'Her Own', 'Trybe')
        WHEN title LIKE '%Inner Fire' THEN REPLACE(title, 'Inner Fire', 'Project')
        WHEN title LIKE '%Silly' THEN REPLACE(title, 'Silly', 'Nice')
        WHEN title LIKE '%Circus' THEN REPLACE(title, 'Circus', 'Pull Request')
        ELSE title
    END AS novo_nome
FROM SpotifyClone.tracks AS t
WHERE t.title  LIKE '%Streets'
	OR t.title  LIKE '%Her Own'
	OR t.title  LIKE '%Inner Fire'
	OR t.title  LIKE '%Silly'
	OR t.title  LIKE '%Circus'
ORDER BY t.title ;