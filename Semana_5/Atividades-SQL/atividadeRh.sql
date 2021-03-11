use db_rh;
create table tb_funcionario(
id bigint(5) auto_increment,
nome varchar(20) not null,
funcao varchar(20),
nascimento datetime,
salario decimal(20,2),
ativo boolean,
primary key(id)
);
insert into tb_funcionario (nome,nascimento,funcao,salario,ativo) Values("Marcos","1992-11-11","Gerente","2200.00",true);
insert into tb_funcionario (nome,nascimento,funcao,salario,ativo) Values("Angela","1996-08-10","Desenvolvedora","6000.00",true);
insert into tb_funcionario (nome,nascimento,funcao,salario,ativo) values("Pedro","1998-08-28","Professor","3600.00",true);
insert into tb_funcionario (nome,nascimento,funcao,salario,ativo) values("Alexandrina","1974-11-07","Diarista","2600.00",true);
insert into tb_funcionario (nome,nascimento,funcao,salario,ativo) values("Patricia","1974-01-07","Diarista","2600.00",true);
select * from tb_funcionario where >2000
select * from tb_funcionario where <2000



