CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categoria(
id BIGINT auto_increment,
descricao VARCHAR(255) not null,
ativo BOOLEAN not null,
primary key (id)
);

INSERT INTO tb_categoria (descricao, ativo) values ("Bovina",true);
INSERT INTO  tb_categoria (descricao, ativo) values ("Suina",true);
INSERT INTO  tb_categoria (descricao, ativo) values ("Aves",true);
INSERT INTO  tb_categoria (descricao, ativo) values ("pertence feijoada",true);
INSERT INTO  tb_categoria (descricao, ativo) values ("imbutidos",true);


SELECT * FROM tb_categoria;
 
CREATE TABLE tb_produtos (
id BIGINT auto_increment,
nome VARCHAR (255) not null,
preco DECIMAL(6,2) not null,
qtproduto BIGINT not null,
dtvalidade DATE,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("ASA",40.00,30, "2021-11-07", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("Picanha",20.00,30, "2021-11-08", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("coxa de frango",20.00,30, "2021-11-07", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("Bacon",30.00,30, "2021-11-09", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("hamburguer",60.00,30, "2021-09-07", 5);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("Cupim",20.00,30, "2021-11-10", 1);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("Peito de frango",25.00,30, "2021-11-09", 3);
INSERT INTO tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) VALUES ("Orelha de porco",20.00,30, "2021-11-07", 4);



SELECT * FROM tb_produtos WHERE preco > 50.0;

SELECT * FROM tb_produtos WHERE preco BETWEEN 3.0 AND 60.0;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos WHERE categoria_id = 1;


