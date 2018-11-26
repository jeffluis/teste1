use vestibulando;

DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS conteudo;

CREATE TABLE usuarios(
	id INT(5) AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
    sobrenome VARCHAR(60) NOT NULL,
    dat_nasc DATE,
	email VARCHAR(60) NOT NULL,
    senha VARCHAR(60) NOT NULL
);


CREATE TABLE disciplina(
	id_disc INT(5) AUTO_INCREMENT PRIMARY KEY,
	nome_disc VARCHAR(60) NOT NULL
);


CREATE TABLE conteudo(
	id_cont INT(5) AUTO_INCREMENT PRIMARY KEY,
    id_disc INT(5) NOT NULL, 
	nome_cont VARCHAR(60) NOT NULL
);


CREATE TABLE check_list(
	id INT,
    id_cont INT,
    id_disc INT,
    
    concluido BOOL NOT NULL,
    PRIMARY KEY(id, id_cont, id_disc)
);


-- TESTE CHECK --
INSERT INTO check_list(situacao) 

-- inserir um usuario -- 
INSERT INTO usuarios(nome, sobrenome, dat_nasc, email, senha) VALUES('Jefferson','dos reis','2000-11-20','jeff@gmail.com','33305300');

-- mostrar usuarios --
SELECT * FROM usuarios;


-- inserir as disciplina --
INSERT INTO disciplina(nome_disc) VALUES('BIOLOGIA');
INSERT INTO disciplina(nome_disc) VALUES('QUIMICA');
INSERT INTO disciplina(nome_disc) VALUES('FISICA');
INSERT INTO disciplina(nome_disc) VALUES('MATEMATICA');
INSERT INTO disciplina(nome_disc) VALUES('HISTORIA');
INSERT INTO disciplina(nome_disc) VALUES('PORTUGUES');
INSERT INTO disciplina(nome_disc) VALUES('INGLES');
INSERT INTO disciplina(nome_disc) VALUES('ESPANHOL');
INSERT INTO disciplina(nome_disc) VALUES('FILOSOFIA E SOCIOLOGIA');

-- mostrar disciplina --
SELECT * FROM disciplina;

SELECT * FROM usuarios;


SELECT * FROM conteudo;

1 - 5

SELECT id_cont, id_disc
  FROM conteudo
 WHERE id_cont IN (1,5);
							#user #cont #disc
INSERT INTO check_list VALUES (2, 1, 1, true), (2, 5, 1, true);

DELETE FROM check_list WHERE id_cont = 5;

SELECT nome, nome_cont, nome_disc, o.id_cont
  FROM check_list c INNER JOIN usuarios u ON c.id = u.id
 INNER JOIN disciplina d ON c.id_disc = d.id_disc
 INNER JOIN conteudo o ON c.id_cont = o.id_cont
 WHERE o.id_cont = 1;
 
 
 
 
 -- Ver SLA O QUE --
 WHERE o.id_cont = 3;
 

SELECT nome_cont, nome_disc
	FROM disciplina d
	INNER JOIN conteudo o ON c.id_cont = o.id_cont;
	

-- inserir conteudo -- 
	-- Biologia --
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Acidos nucleicos');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Algas');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Anelideos');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Anfibios');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Angiospermas');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Artropodos');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Aves');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Bacterias');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Biociclos');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(1, 'Biomas');
 
	-- Quimica --
INSERT INTO conteudo(id_disc, nome_cont) VALUES(2, 'Materia');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(2, 'Atomistica');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(2, 'Tabela periodica');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(2, 'Ligações Quimicas');
INSERT INTO conteudo(id_disc, nome_cont) VALUES(2, 'Geometria Molecular');


-- mostrar conteudo --
SELECT * FROM conteudo;

	-- mostra todos os conteudos --
SELECT nome_cont as conteudo, nome_disc as disciplina, d.id_disc
	FROM conteudo c
	INNER JOIN disciplina d ON c.id_disc = d.id_disc
    WHERE d.id_disc = 1; -- // Mostrará apenas disciplina 1 (biologia) --







-- testes --



-- para desativar o bloqueio de update, delete... --
SET SQL_SAFE_UPDATES = 0;

-- alterar senha pelo email --
UPDATE usuarios SET senha='444' WHERE email='jeffersonluis.reis@gmail.com';


-- alterar tudo pelo email --
UPDATE usuarios SET nome='Robson', sobrenome='', dat_nasc='2000-11-20' WHERE email='jeff@gmail.com'
