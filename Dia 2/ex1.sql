CREATE DATABASE db_rh;

use db_rh;

create table tb_funcionaries(
id bigint(5) auto_increment,
nome varchar(30) not null,
idade int(3) not null,
genero varchar(20) not null,
cargo varchar (30) not null,
salario decimal(8,2),
primary key (id)
);

insert into tb_funcionaries(nome, idade, genero, cargo, salario) values ("Renan", 29, "Masculino", "Comunista", 10000.00);
insert into tb_funcionaries(nome, idade, genero, cargo, salario) values ("Maria", 84, "Jogadora Cara", "Afrobege", 500.00);
insert into tb_funcionaries(nome, idade, genero, cargo, salario) values ("Carlos", 26, "Masculino", "Agricultor", 5000.00);
insert into tb_funcionaries(nome, idade, genero, cargo, salario) values ("Mayuri", 16, "Água", "Sabesp", 12000.00);
insert into tb_funcionaries(nome, idade, genero, cargo, salario) values ("Valter", 26, "Hacker", "Anonymous", 00000.00);

SELECT * FROM tb_funcionaries;

SELECT * FROM tb_funcionaries WHERE salario <= 2000;

SELECT * FROM tb_funcionaries WHERE salario > 2000;

UPDATE tb_funcionaries SET salario = 20000 WHERE id = 1;


