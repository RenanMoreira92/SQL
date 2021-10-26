CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id BIGINT auto_increment not null,
medicamento VARCHAR(255) NOT NULL,
generico BOOLEAN NOT NULL,
receita BOOLEAN NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (medicamento, generico, receita) VALUES ("DOR", true , false);
INSERT INTO tb_categoria (medicamento, generico, receita) VALUES ("ANTIBIOTICO", false, true );
INSERT INTO tb_categoria (medicamento, generico, receita) VALUES ("FEBRE", true, false );
INSERT INTO tb_categoria (medicamento, generico, receita) VALUES ("ESTOMAGO", false , false);
INSERT INTO tb_categoria (medicamento, generico, receita) VALUES ("GRIPE", true, false );

SELECT * FROM tb_categoria;

CREATE TABLE tb_produtos(
id BIGINT auto_increment not null,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(10,2) NOT NULL,
dosagem VARCHAR (255) NOT NULL,
precReceita BOOLEAN NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome, preco, dosagem, precReceita, categoria_id) VALUES ("paracetamol", 10.50  , "8 em 8h", false, 1);
INSERT INTO tb_produtos (nome, preco, dosagem, precReceita, categoria_id ) VALUES ("dipirona", 5.0 , "6 em 6h", false, 3);
INSERT INTO tb_produtos (nome, preco, dosagem, precReceita,categoria_id) VALUES ("amoxilina",60.0  , "12 em 12h", true, 2);
INSERT INTO tb_produtos (nome, preco, dosagem, precReceita,categoria_id) VALUES ("estomazil", 15 , "6 em 6h", false, 4);
INSERT INTO tb_produtos (nome, preco, dosagem, precReceita, categoria_id ) VALUES ("resfrenol", 5 , "6 em 6h", false, 5 );
INSERT INTO tb_produtos (nome, preco, dosagem, precReceita,categoria_id) VALUES ("dorflex", 9 , "6 em 6h", false, 1 );
INSERT INTO tb_produtos (nome, preco, dosagem, precReceita,categoria_id) VALUES ("benegrip", 20 , "6 em 6h", false, 5 );
INSERT INTO tb_produtos (nome, preco, dosagem, precReceita, categoria_id) VALUES ("epocler", 13 , "6 em 6h", false, 4);


SELECT * FROM tb_produtos WHERE preco >50.0;

SELECT * FROM tb_produtos WHERE preco BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produtos WHERE nome LIKE "%b%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos WHERE id = 5;
