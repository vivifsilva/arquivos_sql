
USE db_senai;

INSERT INTO cliente (nome_cliente, email, telefone)
VALUES ('Michel Jackson', 'm.Jackson@gmail.com', '(11) 99999-1111');

INSERT INTO cliente (nome_cliente, email, telefone)
VALUES ('Julião', 'Htinho@gmail.com', '(11) 99999-2222');

INSERT INTO cliente (nome_cliente, email, telefone)
VALUES ('Joardson', 'Joardsonsouza@gmail.com', '(11) 99999-3333');

SELECT * FROM cliente;

INSERT INTO produto (produto, preco, qtd)
VALUES ('noteBook Dell', 500.45, 5);

INSERT INTO produto (produto, preco, qtd)
VALUES ('Sabão em pedra', 5.39, 100);

INSERT INTO produto (produto, preco, qtd)
VALUES ('Bicicleta Gamer', 6.80, 500);

SELECT * FROM produto;

INSERT INTO venda (id_cliente, id_produto, data_entrada)
VALUES (1, 1, '2026-09-25');

INSERT INTO venda (id_cliente, id_produto, data_entrada)
VALUES (3, 2, '2022-07-24');

INSERT INTO venda (id_cliente, id_produto, data_entrada)
VALUES (2, 3, '2002-11-23');

SELECT * FROM venda;

UPDATE produto
SET produto = 'Bicicleta gamer'
WHERE id_produto = 3;

SELECT * FROM produto;

DELETE FROM venda
WHERE id_venda = 4;

DELETE FROM produto
WHERE id_produto = 4;

ALTER TABLE produto
ADD CONSTRAINT uk_produto_unico UNIQUE (produto);
