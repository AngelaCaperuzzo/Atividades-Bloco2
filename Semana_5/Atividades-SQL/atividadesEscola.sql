use db_escola;
create table tb_aluno(
id bigint(8) auto_increment,
nome varchar(20),
nota decimal(10,1),
situacao varchar(20),
ativo boolean,
primary key(id)
);
insert into tb_aluno(nome,nota,situacao,ativo) value("Angela","10,0","Aprovada",true);
insert into tb_aluno(nome,nota,situacao,ativo) value("Bruno","7.0","Aprovado",true);
insert into tb_aluno(nome,nota,situacao,ativo) value("Larissa","10.0","Aprovada",true);
insert into tb_aluno(nome,nota,situacao,ativo) value("Miguel","9.5","Aprovado",true);
insert into tb_aluno(nome,nota,situacao,ativo) value("Carlos","5.0","Aprovado",true);
insert into tb_aluno(nome,nota,situacao,ativo) value("Beatriz","4.0","Reprovada",true);
insert into tb_aluno(nome,nota,situacao,ativo) value("Victor","10.0","Aprovado",true);
insert into tb_aluno(nome,nota,situacao,ativo) value("Adilson","10.0","Aprovado",true);

select * from tb_aluno where nota >7
select * from tb_aluno where nota <7

