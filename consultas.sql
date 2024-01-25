-- CONSULTAS SQL

-- 3) Liste os nomes de todos os produtos que custam mais de 100 reais, ordenando-os primeiramente
--       pelo preço e em segundo lugar pelo nome. 
--       usar alias para mostrar o nome da coluna nome como "Produto" edacolunapreco como "Valor". 
--       A resposta da consulta não deve mostrar outras colunas de dados.

SELECT nome AS Produto, preco AS Valor
FROM produtos
WHERE preco > 100
ORDER BY 2, 1;


-- 4) Liste todos os ids e preços de produtos cujo preço seja maior do que a média de todos 
--       os preços encontrados na tabela "produtos".

SELECT id, preco
FROM produtos
HAVING preco > avg(preco)


-- 5) Para cada categoria, mostre o preço médio do conjunto de produtos a ela associados.
--       Caso uma categoria não tenha nenhum produto a ela associada, esta categoria não 
--       deve aparecer no resultado final. Aconsultadeve estar ordenada pelos nomes das categorias.

SELECT c.nome AS Categoria, AVG(p.preco) AS 'Preco Médio'
FROM categorias c
JOIN produtos_categorias pc ON c.id = pc.categoria_id
JOIN produtos p ON pc.produto_id = p.id
GROUP BY 1
ORDER BY 1;
