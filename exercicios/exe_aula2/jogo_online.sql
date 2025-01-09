CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT,
    nome_classe VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome_personagem VARCHAR(255) NOT NULL,
    classe_id BIGINT NOT NULL,
    ataque INT NOT NULL DEFAULT 1,
    defesa INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome_classe, descricao)
VALUES
    ('Guerreiro', 'Classe com alto poder de ataque corpo a corpo.'),
    ('Mago', 'Classe focada em ataques mágicos e habilidades elementares.'),
    ('Arqueiro', 'Classe com habilidades de longo alcance e agilidade.'),
    ('Ladino', 'Classe ágil, especializada em furtividade e ataques rápidos.'),
    ('Clérigo', 'Classe que utiliza magias de cura e proteção.');
    
    SELECT * FROM tb_classes;
    
INSERT INTO tb_personagens (nome_personagem, classe_id, ataque, defesa)
VALUES
    ('Aragorn', 1, 1000, 1800), 
    ('Merlin', 2, 5000, 1200),    
    ('Legolas', 3, 8000, 15000),  
    ('Shadow', 4, 7000, 13000),    
    ('Elena', 5, 9000, 16000),     
    ('Gimli', 1, 6000, 17000),     
    ('Luna', 2, 4000, 1100),      
    ('Valkyrie', 3, 1200, 2000); 
    
    SELECT * FROM tb_personagens;
    
    SELECT * FROM tb_personagens WHERE ataque > 2000;
    
    SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 and 2000;
    
    SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.id;
    
    SELECT * FROM tb_personagens INNER JOIN tb_classes
    ON tb_personagens.classe_id = tb_classes.id WHERE classe_id = 2;
    
    
    
    
    

    
   
    
    