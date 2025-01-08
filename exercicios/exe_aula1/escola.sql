CREATE DATABASE escola;

USE escola;

CREATE TABLE estudantes (
    id_estudante INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,                 
    data_nascimento DATE NOT NULL,              
    turma VARCHAR(50) NOT NULL,                 
    notas DECIMAL(10,2)        
);

INSERT INTO estudantes (nome, data_nascimento, turma, notas) 
VALUES 
('João Henrique', '2000-05-15', '3º Ano A', 8.5),
('Maria Clara', '2001-08-20', '2º Ano B', 9.0),
('Pedro Silva', '2002-03-12', '1º Ano A', 7.8),
('Ana Beatriz', '1999-11-05', '3º Ano B', 8.2),
('Lucas Almeida', '2003-01-25', '1º Ano C', 6.9),
('Carla Souza', '2001-06-17', '2º Ano A', 9.5),
('Felipe Santos', '2000-12-10', '3º Ano A', 7.0),
('Bianca Oliveira', '2002-09-30', '1º Ano B', 8.7);

SELECT * FROM estudantes;

SELECT * FROM estudantes WHERE notas > 7.0;

SELECT * FROM estudantes WHERE notas < 7.0;

UPDATE estudantes SET notas = 8.00 WHERE id_estudante = 1;




