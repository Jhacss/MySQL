CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome_categoria varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome_carne varchar(255) NOT NULL,
fabricante varchar(255) NOT NULL,
dtvalidade date NOT NULL, 
precokg decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(nome_categoria, descricao) VALUES
('Bovinas', 'Carnes de origem bovina, incluindo cortes nobres e tradicionais'),
('Suínas', 'Carnes de origem suína, como costela, lombo e pernil'),
('Aves', 'Carnes de aves, como frango, peru e pato'),
('Exóticas', 'Carnes de animais exóticos, como jacaré e avestruz'),
('Processadas', 'Produtos processados como linguiças, hambúrgueres e embutidos');

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos(nome_carne, fabricante, dtvalidade, precokg, categoria_id) 
VALUES
('Picanha', 'CarneBov Ltda', '2025-06-30', 79.90, 1),  -- Bovinas
('Alcatra', 'FazendaBoaCarne', '2025-04-20', 59.50, 1), -- Bovinas
('Costela Suína', 'PorcoFeliz', '2025-03-15', 29.90, 2), -- Suínas
('Lombo Suíno', 'GranjaSuína', '2025-05-10', 34.70, 2), -- Suínas
('Filé de Frango', 'GranjaBoa', '2025-01-31', 19.80, 3), -- Aves
('Pato Selvagem', 'FazendaExótica', '2025-07-15', 45.90, 3), -- Aves
('Carne de Jacaré', 'ExoticosBrasil', '2025-02-28', 129.99, 4), -- Exóticas
('Linguiça Artesanal', 'ProcessadosPrime', '2025-08-01', 25.50, 5); -- Processadas

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE precokg > 50;

SELECT * FROM tb_produtos WHERE precokg BETWEEN 50 and 150;

SELECT * FROM tb_produtos WHERE nome_carne LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id WHERE categoria_id = 2



