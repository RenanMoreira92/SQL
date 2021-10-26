CREATE DATABASE db_generation_game_online;

USE  db_generation_game_online;

CREATE TABLE tb_classe (
id BIGINT auto_increment,
nome VARCHAR(255) not null,
pais VARCHAR(255) not null,
genero VARCHAR(255) not null,

PRIMARY KEY (id)
);

INSERT INTO tb_classe(nome, pais, genero) VALUES ("Guerreiro", "Terra", "Masculino");
INSERT INTO tb_classe(nome, pais, genero) VALUES ("MAGO", "Fogo", "Feminino");
INSERT INTO tb_classe(nome, pais, genero) VALUES ("Monge", "Água", "Não Binário");

SELECT * FROM tb_classe;

USE db_generation_game_online;

CREATE TABLE tb_personagem(
id BIGINT auto_increment,
nick VARCHAR(255),
atkPower DECIMAL(10,2),
defPower DECIMAL(10,2),
stamina DECIMAL(10,2),
mana DECIMAL(10,2),
classe_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe(id)

);

INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id) VALUES ("Personagem A",2000 ,1555 ,3021 ,500,2 );
INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id ) VALUES ("Personagem B",1549 ,6351,666 ,2541,1);
INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id) VALUES ("Personagem C",1879 ,2489 ,3698 ,1005,3 );
INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id) VALUES ("Personagem D",2598 ,1247 ,9874 ,6895, 2);
INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id) VALUES ("Personagem E",4512 ,6984 ,204 ,1782,1 );
INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id) VALUES ("Personagem F",1052 ,2541,2000 ,1563,3);
INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id) VALUES ("Personagem G",4563 ,5482 ,2485 ,1000,2 );
INSERT INTO tb_personagem(nick, atkPower, defPower, stamina, mana, classe_id) VALUES ("Personagem I",1203 ,2451 ,10236 ,2689,1 );


SELECT * FROM tb_personagem WHERE atkPower > 2000;

SELECT * FROM tb_personagem WHERE defPower BETWEEN 1000 AND 2000;

SELECT * FROM  tb_personagem WHERE nick Like "%C%";

SELECT * FROM tb_personagem INNER JOIN tb_classe
ON tb_classe.id = tb_personagem.classe_id;















