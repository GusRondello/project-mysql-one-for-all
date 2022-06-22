SELECT ar.artist_name AS artista,
    al.title AS album
FROM SpotifyClone.albums AS al
INNER JOIN artists AS ar ON ar.id = al.artist_id
WHERE ar.artist_name = 'Walter Phoenix';