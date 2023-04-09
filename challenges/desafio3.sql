SELECT pessoa_usuaria.nome_pessoa_usuaria as pessoa_usuaria, COUNT(musicas_ouvidas.id_cancao) as musicas_ouvidas, ROUND(SUM(total_minutos.duracao_segundos)/60, 2) as total_minutos
FROM tabela_usuario AS pessoa_usuaria
INNER JOIN tabela_reprod AS musicas_ouvidas
ON pessoa_usuaria.pessoa_usuaria_id = musicas_ouvidas.usuario_id
INNER JOIN tabela_musica AS total_minutos
ON musicas_ouvidas.id_cancao = total_minutos.id_cancao
GROUP BY nome_pessoa_usuaria ORDER BY nome_pessoa_usuaria;