CREATE TABLE Alunos (
  id INT PRIMARY KEY,
  nome VARCHAR(50),
  idade INT,
  serie VARCHAR(10)
);

INSERT INTO Alunos (id, nome, idade, serie)
VALUES (1, 'João', 15, '9ª série'),
       (2, 'Maria', 14, '8ª série'),
       (3, 'Pedro', 16, '10ª série'),
       (4, 'Ana', 15, '9ª série'),
       (5, 'Carlos', 17, '11ª série'),
       (6, 'Mariana', 15, '9ª série'),
       (7, 'Lucas', 14, '8ª série'),
       (8, 'Isabela', 16, '10ª série'),
       (9, 'Felipe', 15, '9ª série'),
       (10, 'Laura', 17, '11ª série');

CREATE TABLE Notas (
  id INT PRIMARY KEY,
  id_aluno INT,
  disciplina VARCHAR(50),
  nota DECIMAL(4,2),
  FOREIGN KEY (id_aluno) REFERENCES Alunos(id)
);

INSERT INTO Notas (id, id_aluno, disciplina, nota)
VALUES (1, 1, 'Matemática', 8.5),
       (2, 1, 'História', 7.8),
       (3, 2, 'Matemática', 9.2),
       (4, 2, 'História', 6.5),
       (5, 3, 'Matemática', 7.0),
       (6, 3, 'História', 8.3),
       (7, 4, 'Matemática', 6.7),
       (8, 4, 'História', 9.1),
       (9, 5, 'Matemática', 9.8),
       (10, 5, 'História', 8.6);