CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categoria(
id BIGINT auto_increment,
massa ENUM('fina', 'media', 'grossa') not null,
borda boolean not null,
tamanho ENUM ('broto', 'media', 'grande')not null,
PRIMARY KEY categoria_id(id)
);

INSERT INTO tb_categoria(massa, borda, tamanho) VALUES ('fina',true ,  'broto');
INSERT INTO tb_categoria(massa, borda, tamanho) VALUES ('media',true , 'media');
INSERT INTO tb_categoria(massa, borda, tamanho) VALUES ('fina',false, 'broto');
INSERT INTO tb_categoria(massa, borda, tamanho) VALUES ('grossa', true, 'grande');
INSERT INTO tb_categoria(massa, borda, tamanho) VALUES ('grossa', false,'grande' );

SELECT * FROM tb_categoria;

CREATE TABLE tb_pizza(
id BIGINT auto_increment,
doce boolean not null,
salgada boolean not null,
sabor VARCHAR(255),
preco DECIMAL(10,2) not null,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(true, false, "Banana", 30, 1 );
INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(true, false, "Chocolate", 35, 2 );
INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(false, true, "Bacon", 40, 3 );
INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(false, true, "Portuguesa", 50, 3 );
INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(true, false, "Morango", 30, 2 );
INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(false, true, "Baiana", 29, 1 );
INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(false, true, "Frango", 50, 2 );
INSERT INTO tb_pizza(doce, salgada, sabor, recheioExtra,cetegoria_id) VALUES(false, true, "Chefe", 45, 3 );

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45.0;

SELECT * FROM tb_pizza WHERE preco BETWEEN 29.0 AND 60.0;

SELECT * FROM tb_pizza WHERE sabor LIKE "%C%";

SELECT * FROM tb_pizza INNER JOIN tb_categoria
ON tb_categoria.id = tb_pizza.classe_id;
 
















 
 
