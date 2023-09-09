CREATE DATABASE Blog;

-- Use o banco de dados
USE Blog;

-- Crie a tabela 'artigos'
CREATE TABLE artigos (
    artigoid INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    conteudo TEXT NOT NULL,
    datapublicacao DATE NOT NULL
);

-- Crie a tabela 'comentarios'
CREATE TABLE comentarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    artigoid INT,
    autor VARCHAR(255) NOT NULL,
    texto TEXT NOT NULL,
    datacomentario DATETIME,
    FOREIGN KEY (artigoid) REFERENCES artigos(artigoid)
);

INSERT INTO artigos (titulo, conteudo, datapublicacao) VALUES
    ('O Guia Completo para Designer', 'Este artigo aborda os conceitos básicos de um Desinger.', '2023-09-08'),
    ('A Importância das cores', 'Neste artigo, discutiremos a importancia das cores.', '2023-09-09'),
    ('Desenvolvimento de um tema desktop', 'Aprenda a criar aplicativos da web usando Python e o HTML.', '2023-09-10'),
    ('Introdução ', 'Explore os conceitos fundamentais de um Desinger.', '2023-09-11'),
    ('Dicas para Aumentar a Criatividade', 'Descubra estratégias eficazes para aumentar sua criatividade no trabalho.', '2023-09-12');

select * from artigos;

INSERT INTO comentarios (artigoid, autor, texto, datacomentario) VALUES
    (1, 'João', 'Ótimo artigo! Muito informativo.', '2023-09-13 10:00:00'),
    (2, 'Maria', 'Aprendi muito com este artigo.', '2023-09-14 15:30:00'),
    (3, 'Carlos', 'Saber informações de cores é crucial para um desinger.', '2023-09-15 09:45:00'),
    (5, 'Ana', ' Eu amo esses artigos, ajuda demais.', '2023-09-16 14:20:00');
    
select * from comentarios;



