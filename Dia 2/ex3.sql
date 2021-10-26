CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
id bigint(5) auto_increment,
nome varchar(250)not null,
sala enum('1A', '1B', '1C' )not null,
matricula bigint(10) not null,
genero varchar(250) not null,
nota decimal (8,2) not null,

primary key (id)
);

insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Bruna",'1A',12345,"feminino", 10);
insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Renan",'1B',42346,"masculino", 9.3);
insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Luna",'1C',13347,"feminino", 10);
insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Sandra",'1A',12354,"feminino", 7.5);
insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Sergio",'1C',02345,"masculino", 8.7);
insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Anayá",'1B',52399,"feminino", 9.9);
insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Gustavo",'1C',54321,"masculino", 8.8);
insert into tb_estudantes(nome, sala, matricula, genero, nota) values ("Mariana",'1B',45231,"feminino",9.1);


select * from tb_estudantes;

select * from tb_estudantes where nota > 7.0;

select * from tb_estudantes where nota < 7.0;

update tb_estudantes set sala = '1B' where id = 1;



