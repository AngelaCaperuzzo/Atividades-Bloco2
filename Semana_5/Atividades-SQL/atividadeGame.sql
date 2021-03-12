CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;
CREATE TABLE tb_personagem(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
idade INT(10) NOT NULL,
poder_ataque INT(20),
poder_defesa int(20),
habilidade_passiva VARCHAR(50),
sexo VARCHAR (10) NOT NULL,
nivel INT (20) NOT NULL,
raca VARCHAR(50) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY (id)
 );
 
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Angela','25','60','15','Marcar Inimigos','Feminino','106','Humana',true);
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Leonardo','65','700','900','Dar escudo','Masculino','300','Orc',true);
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Lagherta','45','445','125','Dano dobrado','Feminino','115','Humana',true);
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Maria','22','30','85','Curar aliados','Feminino','65','Desconhecido',true);
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Jailson','07','13000','400','Invisibilidade','Feminino','100','Elfo',true);
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Juziscreitan','16','566','566','Brilhar','Feminina',15,'Elfo',true);
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Xebão','63','3','7000','Falar Fake News','Masculino','20','Velho',true);
INSERT INTO tb_personagem(nome,idade,poder_ataque,poder_defesa,habilidade_passiva,sexo,nivel,raca,ativo) VALUES ('Tchekov','43','90','85','Ver no escuro','Masculino','50','Khajit',true);

select * from tb_personagem;

USE db_generation_game_online;
CREATE TABLE tb_classe(
id BIGINT (5) AUTO_INCREMENT not null,
nome VARCHAR (20) not null,
arma VARCHAR (20)not null,
item VARCHAR(20) not null,
armadura VARCHAR(20) not null,
elemento VARCHAR (20) not null,
ativo boolean,
tb_personagem_id bigint not null,
primary key (id),
Foreign key (tb_personagem_id) references tb_personagem(id)
);


insert into tb_classe(nome,arma,item,armadura,elemento,ativo,tb_personagem_id) values ('Mago','Cajado','Amuleto','Turbante','Fogo',true,1);
insert into tb_classe(nome,arma,item,armadura,elemento,ativo,tb_personagem_id) values ('Arqueiro','Arco','Flecha de raio','Gorro Mágico','Raio',true,6);
insert into tb_classe(nome,arma,item,armadura,elemento,ativo,tb_personagem_id) values ('Curandeiro','Clava de Sol','Poção','Vestido','Água',true,8);
insert into tb_classe(nome,arma,item,armadura,elemento,ativo,tb_personagem_id) values ('Gurreiro','Espada','Poção de Fúria','Elmo','Terra',true,4);
insert into tb_classe(nome,arma,item,armadura,elemento,ativo,tb_personagem_id) values ('Escudeiro','Escudo','Poção de Defesa','Armadura de Ferro','Terra',true,2);

select * from tb_personagem where nome like "a%";

select tb_classe.id,tb_personagem.nome from tb_personagem
inner join tb_classe on tb_classe.tb_personagem_id = tb_personagem_id;
