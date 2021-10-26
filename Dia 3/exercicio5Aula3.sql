CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT auto_increment,
nome VARCHAR(255) not null, 
Ativo BOOLEAN not null,
PRIMARY KEY (id)
);
  
insert into tb_categoria (Nome, Ativo) VALUES ("Hidráulica", true);
insert into tb_categoria (Nome, Ativo) VALUES("Elétrica", true);
insert into tb_categoria (Nome, Ativo) VALUES ("Decoração", true);
insert into tb_categoria (Nome, Ativo) VALUES ("Pisos", true);

  CREATE TABLE tb_produtos (
id INT NOT NULL AUTO_INCREMENT,
produtos VARCHAR(45)NOT NULL,
preco DECIMAL(7,2) NOT NULL,
peso VARCHAR(255),
quantidade INT not null,
categoria_id BIGINT,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (produtos, preco, peso, quantidade, categoria_id) VALUES ("Piso Cinza",50.00,25.00,3,4);
INSERT INTO tb_produtos (produtos, preco, peso, quantidade, categoria_id) VALUES ("Vaso",30.00,35.00,15,3);
INSERT INTO tb_produtos (produtos, preco, peso, quantidade, categoria_id) VALUES ("Porcelanato",90.00,0.30,2,4);
INSERT INTO tb_produtos (produtos, preco, peso, quantidade, categoria_id) VALUES ("Cano Esgoto",10.00,3.00,15,1);
INSERT INTO tb_produtos (produtos, preco, peso, quantidade, categoria_id) VALUES ("Cotovelo PVC",7.00,3.50,25,1);
INSERT INTO tb_produtos (produtos, preco, peso, quantidade, categoria_id) VALUES ("Fio de Cobre",12.00,0.70,200,2);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE  preco between 3 and 60;

SELECT * FROM tb_produtos WHERE  Produtos like "C%";

SELECT * FROM tb_produtos INNER JOIN tb_categoria
ON tb_categoria.id = tb_produtos.categoria_id;

SELECT tb_produtos.produtos, tb_produtos.preco, tb_categoria.nome FROM tb_produtos 
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id AND tb_categoria.nome = "Pisos";


