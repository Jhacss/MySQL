CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome_categoria varchar(255) NOT NULL,
descricao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (id, nome_categoria, descricao) VALUES
(1, 'Medicamentos', 'Produtos farmacêuticos usados para tratar ou prevenir doenças.'),
(2, 'Higiene Pessoal', 'Itens para cuidados pessoais como sabonetes, desodorantes, escovas de dentes, entre outros.'),
(3, 'Cosméticos', 'Produtos para cuidados com a pele, cabelo e maquiagem.'),
(4, 'Suplementos Alimentares', 'Suplementos vitamínicos, minerais e alimentares para melhorar a saúde e o desempenho físico.'),
(5, 'Produtos para Bebês', 'Produtos como fraldas, mamadeiras, shampoos e outros itens voltados para o cuidado de bebês.');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
marca varchar(255) NOT NULL,
dtvalidade date NOT NULL, 
preco decimal(6, 2),
categoria_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


INSERT INTO tb_produtos (nome, marca, dtvalidade, preco, categoria_id)
VALUES
    ('Paracetamol', 'Farmaco', '2026-12-31', 15.50, 1),
    ('Ibuprofeno', 'MedLife', '2027-06-15', 18.75, 1),
    ('Sabonete Líquido', 'Lux', '2025-11-01', 8.00, 2),
    ('Desodorante Aerosol', 'Nivea', '2026-08-20', 12.50, 2),
    ('Creme Hidratante', 'Nivea', '2025-05-30', 20.00, 3),
    ('Shampoo Anti-queda', 'Pantene', '2027-02-10', 25.00, 3),
    ('Creatina', 'Growth', '2027-12-15', 85.00, 4),
    ('Fralda Descartável', 'Pampers', '2027-04-20', 45.00, 5);
    
SELECT * FROM tb_produtos;

SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS Preço FROM tb_produtos;
    
SELECT * FROM tb_produtos WHERE preco > 50;
    
SELECT * FROM tb_produtos WHERE preco BETWEEN 5 and 60; 
    
SELECT * FROM tb_produtos WHERE nome LIKE"%c%";
    
SELECT * FROM tb_produtos INNER JOIN  tb_categorias
    ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria_id = tb_categorias.id WHERE categoria_id = 2

