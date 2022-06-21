SELECT 
    (SELECT COUNT (tracks.id) FROM SpotifyClone.tracks) AS 'cancoes',
    (SELECT COUNT (artists.id) FROM SpotifyClone.artists) AS 'artistas',
    (SELECT COUNT (albums.id) FROM SpotifyClone.albums) AS 'albuns';