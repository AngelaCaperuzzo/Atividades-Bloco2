CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;
CREATE TABLE tb_pizza(
id BIGINT (5) AUTO_INCREMENT,
nome VARCHAR(20) NOT NULL,
preco DECIMAL(20,2) NOT NULL,
tamanho VARCHAR(20) NOT NULL,
adicional VARCHAR(60),
entregador VARCHAR(20) NOT NULL,
ativo boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_pizza (nome,preco,tamanho,adicional,entregador,ativo)
VALUES
('Miguel','50.00','Grande','Cotada em 10 fatias','Adelson',true),
('Caique','45.00','Médio','Colocar muita Cebola','Clayton',true),
('Alexandrina','40.00','Média','Sem Oregano','Jayme',true),
('Angela','60.00','Extra Grande','Com muita cebola e repolho','Matias',true),
('Adilon','25.00','Pequena',' ','Lucas',true),
('Larissa','50.00','Grande','Sem azeitona','Adelson',true),
('Melissa','45.00','Médio','Sem cebola','Clayton',true),
('Renata','40.00','Média','Cortada em 4 fatias','Jayme',true);

USE db_pizzaria_legal;
CREATE TABLE tb_categoria(
id BIGINT(5) AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
adicional2 VARCHAR(45) NOT NULL,
brinde VARCHAR(45) NOT NULL,
ativo BOOLEAN,
tb_pizza_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (tb_pizza_id) REFERENCES tb_pizza(id)
);

INSERT INTO tb_categoria(nome,adicional2,brinde,ativo,tb_pizza_id)
VALUES
('Calabresa','Borda recheada','Coca-cola',true,1),
('Peperone','Pimenta malagueta','Suco de uva',true,2),
('Calabresa','Borda recheada','Coca-cola',true,3),
('Queijo','Borda recheada','Tubaina',true,4),
('Quatro queijos','Queijo ralado','Coca-cola',true,5);

INSERT INTO  tb_categoria(nome,adicional2,brinde,ativo,tb_pizza_id)
VALUES
('Queijo','Borda recheada','Tubaina',true,6),
('Calabresa','Borda recheada','Coca-cola',true,7),
('Calabresa','Borda recheada','Coca-cola',true,8);

SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco = 25.00;
SELECT * FROM tb_pizza WHERE preco = 60.00;
select * from tb_categoria where nome like "C%";

select tb_categoria.id,tb_pizza.nome from tb_pizza
inner join tb_categoria on tb_categoria.tb_pizza_id = tb_pizza_id;

