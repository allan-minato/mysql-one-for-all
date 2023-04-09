SELECT artista.nome as artista, album.album as album, COUNT(pessoas_seguidoras.id_user) as pessoas_seguidoras
FROM tabela_artista AS artista
INNER JOIN tabela_album AS album
ON artista.artista_id = album.artista_id
INNER JOIN tabela_seguindo AS pessoas_seguidoras
ON artista.artista_id = pessoas_seguidoras.artista_id
GROUP BY artista.nome, album.album ORDER BY pessoas_seguidoras DESC, artista.nome, album.album;