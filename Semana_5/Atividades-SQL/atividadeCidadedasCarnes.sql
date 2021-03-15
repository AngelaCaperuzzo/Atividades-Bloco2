CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;
CREATE TABLE tb_categoria(
id BIGINT(5) AUTO_INCREMENT,
tipo VARCHAR(45) NOT NULL,
porte VARCHAR(45) NOT NULL,
ativo BOOLEAN,
PRIMARY KEY (id)
);

INSERT INTO tb_categoria(tipo,porte,ativo)
VALUES
('Carne de boi','Gande',true),
('Carne de frango','Médio',true),
('Carne de porco','Grande',true),
('Carne de Vaca','Médio',true),
('Carne seca','Pequeno',true);

USE db_cidade_das_carnes;
CREATE TABLE tb_produto(
id BIGINT (5) AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
preço DECIMAL(20.2) NOT NULL,
qualidade VARCHAR(45) NOT NULL,
quantidade VARCHAR(45) NOT NULL,
ativo BOOLEAN,
tb_categoria_id BIGINT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (tb_categoria_id) REFERENCES tb_categoria(id)
);

INSERT INTO tb_produto(nome,preço,qualidade,quantidade,tb_categoria_id)
VALUES
('Peito de frango','20.00','Primeira','1kg',2),
('Baicon','15.00','Primeira','1kg',3),
('Alcantra','35.00','Primeira','1kg',4),
('Carne de Sol','15.00','Primeira','500 gramas',5),
('Bife','45.00','Segunda','1kg',1),
('Toicinho','10.00','Segunda','1kg',3),
('Carne Moida','35.00','Primeira','1kg',4);

SELECT  *  FROM tb_produto WHERE preço >  50 ;
SELECT  *  FROM tb_produto WHERE preço >  30 and preço < 60 ;
SELECT  *  FROM tb_produto WHERE nome LIKE  " C% " ;

Select * FROM tb_produto
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria.id;

