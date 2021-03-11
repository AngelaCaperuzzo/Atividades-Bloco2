use db_ecommerce;
create table tb_produto(
id bigint(8) auto_increment,
nome varchar(20) not null,
preco decimal(10,2),
genero varchar(20),
ativo boolean,
primary key(id)
);
insert into tb_produto (nome,preco,genero,ativo) Values ("Overwatch","74.00","jogo de tiro",true);
insert into tb_produto (nome,preco,genero,ativo) Values ("Resident","15.00","jogo de terror",false);
insert into tb_produto (nome,preco,genero,ativo) Values ("Detroit","520.00","jogo de rpg",true);
insert into tb_produto (nome,preco,genero,ativo) Values ("Crash","45.00","jogo de aventura",true);
insert into tb_produto (nome,preco,genero,ativo) Values ("Caique's adventure","501.99","jogo de rpg",true);
select * from tb_produto where preco > 500;
select * from tb_produto where preco < 500;
