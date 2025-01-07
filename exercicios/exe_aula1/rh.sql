CREATE DATABASE rh;

USE rh;

CREATE TABLE colaboradores(
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255) not null,
salario int,
data_admissao date,
PRIMARY KEY(id)
);

INSERT INTO colaboradores(nome, cargo, salario, data_admissao)
VALUES	("Diego", "Desenvolvedor Front-End pleno", 4000, "2025-01-07"),
		("Josiane", "Desenvolvedor Front-End jr", 1500, "2025-01-07"),
		("Emily", "Desenvolvedor Front-End pleno", 3000, "2025-01-07"),
		("Gabriel", "Desenvolvedor Front-End sr", 10000, "2025-01-07"),
		("Fernanda", "Desenvolvedor Front-End jr", 1500, "2025-01-07");
        
SELECT * FROM colaboradores;

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores SET salario = 20000 WHERE id = 4;



