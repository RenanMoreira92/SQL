CREATE DATABASE db_curso;

USE  db_curso;

CREATE TABLE tb_categoria(
id BIGINT auto_increment,
nome VARCHAR(255) not null, 
descricao VARCHAR(255) not null,
gratuito BOOLEAN not null,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria (nome,descricao, gratuito) VALUES ("Java","Curso inicial",true);
INSERT INTO tb_categoria (nome,descricao, gratuito) VALUES ("JavaScript","Bootcamp", true);
INSERT INTO tb_categoria (nome,descricao, gratuito) VALUES ("Python","Curso avançado", false);
INSERT INTO tb_categoria (nome,descricao, gratuito) VALUES ("SQL","Curso inicial", true);
INSERT INTO tb_categoria (nome,descricao, gratuito) VALUES ("C++","Curso Intermediário", false);

CREATE TABLE tb_curso (
id bigint auto_increment,
curso VARCHAR (255) not null,
preco DECIMAL(8,2) not null,
qthoras INT not null,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_curso (curso, preco, qthoras, categoria_id) VALUES ("Curso de Python 3 ", 299.0, 110, 3);
INSERT INTO tb_curso (curso, preco, qthoras, categoria_id) VALUES ("Arrays", 00.0, 10, 2);
INSERT INTO tb_curso (curso, preco, qthoras, categoria_id) VALUES ("Java Básico", 00.0, 40, 1);
INSERT INTO tb_curso (curso, preco, qthoras, categoria_id) VALUES ("C++", 500.0, 80,5);
INSERT INTO tb_curso (curso, preco, qthoras, categoria_id) VALUES ("Variáveis", 0.0, 10, 2);
INSERT INTO tb_curso (curso, preco, qthoras, categoria_id) VALUES ("Primeiros passos", 0.0, 48, 4);

SELECT * FROM tb_curso WHERE preco > 50;

SELECT * FROM tb_curso WHERE preco between 3 and 60;

SELECT * FROM tb_curso WHERE curso like "%j%";

SELECT * FROM tb_curso 
INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.categoria_id;

SELECT tb_curso.curso, tb_curso.preco, tb_categoria.descricao 
FROM tb_curso INNER JOIN tb_categoria ON tb_categoria.id = tb_curso.categoria_id AND tb_categoria.descricao = "Curso inicial";

