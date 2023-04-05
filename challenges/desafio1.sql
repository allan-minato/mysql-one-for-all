DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE SpotifyClone;
USE SpotifyClone;

CREATE TABLE tabela_plano
(
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plano_tipo VARCHAR(20),
    valor DECIMAL(5,2)
) engine = InnoDB;

INSERT INTO tabela_plano (plano_id, plano_tipo, valor) VALUES (1, 'gratuito', 0);
INSERT INTO tabela_plano (plano_id, plano_tipo, valor) VALUES (2, 'familiar', 7.99);
INSERT INTO tabela_plano (plano_id, plano_tipo, valor) VALUES (3, 'universitario', 5.99);
INSERT INTO tabela_plano (plano_id, plano_tipo, valor) VALUES (4, 'pessoal', 6.99);

CREATE TABLE tabela_usuario 
(
    pessoa_usuaria_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_pessoa_usuaria	VARCHAR(512) NOT NULL,
    idade INT NOT NULL,
    plano INT NOT NULL,
    data_assinatura	DATE NOT NULL,
    FOREIGN KEY (plano) REFERENCES tabela_plano (plano_id)
) engine = InnoDB;

INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (1, 'Barbara Liskov', 82, 1, '2019-10-20');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (2, 'Robert Cecil Martin', 58, 1, '2017-01-06');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (3, 'Ada Lovelace', 37, 2, '2017-12-30');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (4, 'Martin Fowler', 46, 2, '2017-01-17');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (5, 'Sandi Metz', 58, 2, '2018-04-29');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (6, 'Paulo Freire', 19, 3, '2018-02-14');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (7, 'Bell Hooks', 26, 3, '2018-01-05');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (8, 'Christopher Alexander', 85, 4, '2019-06-05');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (9, 'Judith Butler', 45, 4, '2020-05-13');
INSERT INTO tabela_usuario (pessoa_usuaria_id, nome_pessoa_usuaria, idade, plano, data_assinatura) VALUES (10, 'Jorge Amado', 58, 4, '2017-02-17');

CREATE TABLE tabela_artista 
(
    artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(512)
) engine = InnoDB;

INSERT INTO tabela_artista (artista_id, nome) VALUES (1, 'Beyoncé');
INSERT INTO tabela_artista (artista_id, nome) VALUES (2, 'Queen');
INSERT INTO tabela_artista (artista_id, nome) VALUES (3, 'Elis Regina');
INSERT INTO tabela_artista (artista_id, nome) VALUES (4, 'Baco Exu do Blues');
INSERT INTO tabela_artista (artista_id, nome) VALUES (5, 'Blind Guardian');
INSERT INTO tabela_artista (artista_id, nome) VALUES (6, 'Nina Simone');

CREATE TABLE tabela_album 
(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(512),
    artista_id INT,
    ano_lancamento YEAR NOT NULL,
    FOREIGN KEY (artista_id) REFERENCES tabela_artista (artista_id)
) engine = InnoDB;

INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (1, 'Renaissance', 1, '2022');
INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (2, 'Jazz', 2, '1978');
INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (3, 'Hot Space', 2, '1982');
INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (4, 'Falso Brilhante', 3, '1998');
INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (5, 'Vento de Maio', 3, '2001');
INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (6, 'QVVJFA?', 4, '2003');
INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (7, 'Somewhere Far Beyond', 5, '2007');
INSERT INTO tabela_album (album_id, album, artista_id, ano_lancamento) VALUES (8, 'I Put A Spell On You', 6, '2012');

CREATE TABLE tabela_musica 
(
    id_cancao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(512),
    artista_id INT NOT NULL,
    album_id INT NOT NULL,
    duracao_segundos INT,
    FOREIGN KEY (artista_id) REFERENCES tabela_artista (artista_id),
    FOREIGN KEY (album_id) REFERENCES tabela_album (album_id)
) engine = InnoDB;

INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (1, 'BREAK MY SOUL', 1, 1, 279);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (2, "VIRGO'S GROOVE", 1, 1, 369);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (3, 'ALIEN SUPERSTAR', 1, 1, 116);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (4, "Don't Stop Me Now", 2, 2, 203);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (5, 'Under Pressure', 2, 3, 152);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (6, 'Como Nossos Pais', 3, 4, 105);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (7, 'O Medo de Amar é o Medo de Ser Livre', 3, 5, 207);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (8, 'Samba em Paris', 4, 6, 267);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (9, "The Bard's Song", 5, 7, 244);
INSERT INTO tabela_musica (id_cancao, titulo, artista_id, album_id, duracao_segundos) VALUES (10, 'Feeling Good', 6, 8, 100);

CREATE TABLE tabela_reprod 
(
    data DATE NOT NULL,
    usuario_id INT,
    id_cancao	INT,
    CONSTRAINT PRIMARY KEY(usuario_id, id_cancao),
    FOREIGN KEY (usuario_id) REFERENCES tabela_usuario (pessoa_usuaria_id),
    FOREIGN KEY (id_cancao) REFERENCES tabela_musica (id_cancao)
) engine = InnoDB;

INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2011-12-15 22:30:49', 7, 4);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2012-03-17 14:56:41', 8, 4);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2015-12-13 08:30:22', 10, 3);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2017-01-24 00:31:17', 6, 7);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2017-10-12 12:35:20', 6, 1);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2020-01-02 07:40:33', 2, 7);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2020-03-06 11:22:33', 1, 10);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2020-05-02 05:30:35', 1, 2);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2020-08-06 15:23:43', 5, 5);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2020-11-13 16:55:13', 3, 10);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2020-12-05 18:38:30', 3, 2);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2021-08-15 17:10:10', 4, 8);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2022-01-09 01:44:33', 5, 8);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2022-02-24 21:14:22', 9, 9);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2022-02-28 10:45:55', 1, 8);
INSERT INTO tabela_reprod (data, usuario_id, id_cancao) VALUES ('2022-08-05 08:05:17', 2, 10);

CREATE TABLE tabela_seguindo 
(
    id_user	INT,
    artista_id INT,
    CONSTRAINT PRIMARY KEY(id_user, artista_id),
    FOREIGN KEY (id_user) REFERENCES tabela_usuario (pessoa_usuaria_id),
    FOREIGN KEY (artista_id) REFERENCES tabela_artista (artista_id)    
) engine = InnoDB;

INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (1, 1);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (1, 2);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (1, 3);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (2, 1);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (2, 3);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (3, 2);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (4, 4);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (5, 5);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (5, 6);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (6, 6);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (6, 1);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (7, 6);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (9, 3);
INSERT INTO tabela_seguindo (id_user, artista_id) VALUES (10, 2);