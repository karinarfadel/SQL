CREATE TABLE contato (
    id INT PRIMARY KEY,
    nome VARCHAR(30) not NULL,
    sobrenome VARCHAR(30) NOT NULL DEFAULT 'Silva',
    nascimento DATE,
    peso DECIMAL(10,2)
);
