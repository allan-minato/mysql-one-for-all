SELECT COUNT(reps.id_cancao) as musicas_no_historico
FROM tabela_reprod AS reps
INNER JOIN tabela_usuario AS pessoa
ON reps.usuario_id = pessoa.pessoa_usuaria_id
WHERE pessoa.nome_pessoa_usuaria = 'Barbara Liskov';