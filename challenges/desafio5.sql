SELECT cancao.titulo as cancao, COUNT(reproducoes.id_cancao) AS reproducoes
FROM tabela_musica AS cancao
INNER JOIN tabela_reprod AS reproducoes
ON cancao.id_cancao = reproducoes.id_cancao
GROUP BY cancao.titulo ORDER BY reproducoes DESC, cancao.titulo LIMIT 2;