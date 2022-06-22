SELECT ar.artist_name AS artista,
    al.title AS album,
    COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artists AS ar
INNER JOIN SpotifyClone.albums AS al ON ar.id = al.artist_id
INNER JOIN SpotifyClone.follows AS f ON f.artist_id = al.artist_id

GROUP BY ar.artist_name, al.title
ORDER BY seguidores DESC, artista ASC, album ASC;