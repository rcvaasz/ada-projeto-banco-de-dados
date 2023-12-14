-- COMANDOS DML


-- a) Inserir pelo menos duas turmas diferentes na tabela de turma;

INSERT INTO turma (id_turma, codigo_turma, nome_turma) VALUES
(1, 'A_001', 'Turma A'),
(2, 'B_001', 'Turma B');


-- b) Inserir pelo menos 1 aluno alocado em cada uma destas turmas na tabela aluno (todos 
--        com NULL na coluna aluno_alocado);

INSERT INTO aluno (id_aluno, nome_aluno, aluno_alocado, id_turma) VALUES
(1, 'Aluno 01', NULL, 1),
(2, 'Aluno 02', NULL, 2);


-- c) Inserir pelo menos 2 alunos não alocados em nenhuma turma na tabela aluno (todos com
--        NULL na coluna aluno_alocado);

INSERT INTO aluno (id_aluno, nome_aluno, aluno_alocado) VALUES
(3, 'Aluno3', NULL),
(4, 'Aluno4', NULL);


-- d) Atualizar a coluna aluno_alocado da tabela aluno, de modo que os alunos associados a
--        uma disciplina recebam o valor True e alunos não associdos a nenhuma disciplina 
--        recebam o falor False para esta coluna.

UPDATE aluno
SET aluno_alocado = CASE WHEN id_turma IS NOT NULL THEN TRUE ELSE FALSE END;