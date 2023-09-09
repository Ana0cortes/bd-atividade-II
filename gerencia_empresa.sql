CREATE DATABASE empresa;

-- Use o banco de dados
USE empresa;

-- Crie a tabela 'departamento'
CREATE TABLE departamento (
    departamentoid INT AUTO_INCREMENT PRIMARY KEY,
    nomedepartamento VARCHAR(255) NOT NULL
);

-- Crie a tabela 'funcionario'
CREATE TABLE funcionario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR (255) NOT NULL,
    salario INT NOT NULL,
    departamentoid INT,
    FOREIGN KEY (departamentoid) REFERENCES departamento(departamentoid)
);

INSERT INTO departamento (nomedepartamento) VALUES
    ('Recursos Humanos'),
    ('Vendas'),
    ('Tecnologia da Informação'),
    ('Marketing'),
    ('Contabilidade');
    
    select * from departamento;
    
    -- Inserir dados na tabela 'funcionario'
INSERT INTO funcionario ( nome, cargo, salario, departamentoid) VALUES
    ('Ana Cortes', 'SUPERVISOR' ,7.522, 3),
    ('Matheus Fontes', 'Jovem aprendiz', 800, 2),
    ('Luana Forbies', 'Auxiliar', 4.123, 4),
    ('Gustavo Correia', 'Supervisor', 7.520, 1),
    ('Rebeca Ribeiro', 'Gerente', 10.854, 5);
   
   select *from funcionario;