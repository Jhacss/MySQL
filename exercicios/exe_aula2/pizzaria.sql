CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome_categoria varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (nome_categoria, descricao) 
VALUES
("Tradicional", "Pizzas clássicas"), 
("Doce", "Pizzas co sabores doces"), 
("Vegetariana", "pizzas feita com ingredientes vegetarianos"),
("Gourmet", "Pizzas com ingredientes especiais"),
("Fitness", "Pizzas Saudaveis com massa integral");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
sabor varchar(255) NOT NULL,
ingredientes varchar(255) NOT NULL, 
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, sabor, ingredientes, preco, categoria_id)
VALUES
    ('Calabresa', 'Tradicional', 'Calabresa, Queijo, Cebola, Azeitonas', 35.00, 1),
    ('Marguerita', 'Tradicional', 'Tomate, Queijo, Manjericão', 30.00, 1),
   ('Chocolate', 'Doce', 'Chocolate ao Leite, Granulado, Leite Condensado', 25.00, 2),
    ('Banana com Canela', 'Doce', 'Banana, Canela, Açúcar, Leite Condensado', 28.00, 2),
    ('Vegetariana Especial', 'Vegetariana', 'Tomate, Pimentão, Champignon, Azeitonas, Queijo', 40.00, 3),
    ('Brie com Damasco', 'Gourmet', 'Queijo Brie, Damasco, Mel', 50.00, 4),
    ('Camarão Especial', 'Gourmet', 'Camarão, Catupiry, Ervas Finas', 60.00, 4),
     ('Frango com Ricota', 'Fitness', 'Frango Desfiado, Ricota, Rúcula, Massa Integral', 38.00, 5);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%m%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id; 

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id WHERE categoria_id = 2; 


