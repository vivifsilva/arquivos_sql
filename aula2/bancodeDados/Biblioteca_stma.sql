
CREATE DATABASE IF NOT EXISTS biblioteca_senai;

USE biblioteca_senai;

CREATE TABLE IF NOT EXISTS aluno (
    id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    curso VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS livro (
    id_livro INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    autor VARCHAR(100) NOT NULL,
    ano_publicacao INT NOT NULL
);

CREATE TABLE IF NOT EXISTS emprestimo (
    id_emprestimo INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT NOT NULL,
    id_livro INT NOT NULL,
    data_emprestimo DATE NOT NULL,
    data_devolucao DATE,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);

INSERT INTO aluno (nome, email, curso)
VALUES ('Ana Maria Braga', 'anamaria@gmail.com', 'Desenvolvimento de Sistemas');

INSERT INTO aluno (nome, email, curso)
VALUES ('MCMirela', 'mcmirela@gmail.com', 'Administração');

INSERT INTO aluno (nome, email, curso)
VALUES ('Roberto Carlos', 'robertocarlos@gmail.com', 'Informática');

SELECT * FROM aluno;

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ('Dom Casmurro', 'Machado de Assis', 1899);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ('O Cortiço', 'Aluísio Azevedo', 1890);

INSERT INTO livro (titulo, autor, ano_publicacao)
VALUES ('Iracema', 'José de Alencar', 1865);

SELECT * FROM livro;

INSERT INTO emprestimo
(id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES
(1, 1, '2026-10-01', '2026-10-15');

INSERT INTO emprestimo
(id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES
(1, 2, '2026-10-02', '2026-10-16');

INSERT INTO emprestimo
(id_aluno, id_livro, data_emprestimo, data_devolucao)
VALUES
(2, 3, '2026-10-03', '2026-10-17');

SELECT * FROM emprestimo;

UPDATE aluno
SET curso = 'Desenvolvimento de Sistemas'
WHERE id_aluno = 2;

SELECT * FROM aluno;

DELETE FROM emprestimo
WHERE id_emprestimo = 3;

SELECT * FROM emprestimo;