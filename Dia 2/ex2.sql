CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_ecommerce(
id int(5) auto_increment,
nome varchar(250) not null,
marca varchar(250) not null,
tamanho enum('p', 'm', 'g','gg','egg'),
cor varchar(250) not null,
preco decimal(8,2) not null,

primary key (id));

insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Moleton","Gucci" ,'p' ,"preto" ,1000 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Tênis","Nike" ,'g' ,"verde" ,500 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Camiseta","Adidas" ,'g' ,"branco" ,10 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Camiseta","Onbongo" ,'gg' ,"rosa" ,150 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Regata","Dk" ,'m' ,"gg" ,30 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Camiseta","nicoboco" ,'m' ,"preto" ,140 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Shorts","Nike" ,'egg' ,"roxo" ,300 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Boné","Gucci" ,'p' ,"amarela" ,500 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Cueca","NBA" ,'gg' ,"verde" ,190 );
insert into tb_ecommerce(nome, marca, tamanho, cor, preco) values ("Shorts","fatal surf" ,'egg' ,"azul" ,250 );

select * from tb_ecommerce;
select * from tb_ecommerce where preco >500;
select * from tb_ecommerce where preco <500;
update tb_ecommerce set cor = "branco" where id = 2;
