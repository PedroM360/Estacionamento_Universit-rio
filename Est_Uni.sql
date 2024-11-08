create database Est_Uni;

use Est_Uni;

create table veiculos(
veiculo_id INT PRIMARY KEY NOT NULL,
matricula VARCHAR(100),
user VARCHAR(100),
tipo VARCHAR(100)
);

CREATE TABLE movimentacoes (
    mov_id INT PRIMARY KEY NOT NULL,           
    veiculo_id INT NOT NULL,                  
    entrada TIMESTAMP NULL,                    
    saida TIMESTAMP NULL,                      
    FOREIGN KEY (veiculo_id) REFERENCES veiculos(veiculo_id) ON DELETE CASCADE
);

CREATE TABLE clientes (
Id INT PRIMARY KEY NOT NULL,
nome VARCHAR(100),
email VARCHAR(100)
);