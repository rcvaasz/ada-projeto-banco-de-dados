-- COMANDOS DDL


-- 6) Com o objetivo de demonstrar o seu conhecimento através de um exemplo contextualizado com o 
--       dia-a-diada escola, utilize os comandos do subgrupo de funções DDL para construir o banco
--       de dados simplesabaixo,que representa um relacionamento do tipo 1,n entre as entidades 
--       "aluno" e "turma":

CREATE TABLE turma (
    id_turma INT PRIMARY KEY,
    codigo_turma VARCHAR(255),
    nome_turma VARCHAR(255)
);

CREATE TABLE aluno (
    id_aluno INT PRIMARY KEY,
    nome_aluno VARCHAR(255),
    aluno_alocado BOOLEAN,
    id_turma INT,
    FOREIGN KEY (id_turma) REFERENCES turma(id_turma)
);