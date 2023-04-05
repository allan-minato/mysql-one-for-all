SELECT COUNT(DISTINCT cancoes.titulo) AS cancoes, COUNT(DISTINCT artistas.nome) AS artistas, COUNT(DISTINCT albuns.album) AS albuns
FROM tabela_musica AS cancoes
INNER JOIN tabela_artista AS artistas
ON cancoes.artista_id = artistas.artista_id
INNER JOIN tabela_album AS albuns
ON albuns.artista_id = artistas.artista_id;