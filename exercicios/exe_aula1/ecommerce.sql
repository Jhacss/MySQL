CREATE DATABASE skate_shop;
USE skate_shop;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    material varchar(255) not null,
    data_fabricacao date,
    preco decimal(10,2),
    PRIMARY KEY(id)
);

INSERT INTO tb_produtos (nome, material, data_fabricacao, preco) VALUES
('Shape Profissional', 'Madeira Maple', '2024-01-01', 700.00),
('Truck Alumínio 139mm', 'Alumínio', '2023-11-15', 150.00),
('Rodas Street 52mm', 'Uretano', '2023-10-10', 90.00),
('Lixa Antiderrapante', 'Silício', '2024-01-05', 20.00),
('Rolamentos ABEC-7', 'Aço Carbono', '2023-09-30', 50.00),
('Parafusos de Base', 'Aço', '2023-12-01', 15.00),
('Shape Amador', 'Madeira Nacional', '2024-01-03', 160.00),
('Rodas Longboard 70mm', 'Poliuretano', '2023-10-25', 130.00);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 30.00 WHERE id = 4;


