
CREATE DATABASE IF NOT EXISTS db_senai;

USE db_senai;

CREATE TABLE IF NOT EXISTS cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100) NOT NULL,
    preco DECIMAL(19, 2) NOT NULL,
    qtd INT NOT NULL
);

CREATE TABLE IF NOT EXISTS venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    data_entrada DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);