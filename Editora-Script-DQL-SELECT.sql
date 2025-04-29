use EditoraLivros;

-- 1. Livros por Autor
SELECT l.titulo, a.nome AS autor
FROM Livros l
JOIN Autores a ON l.autor_id = a.idAutor
WHERE a.nome = 'Machado de Assis';

-- 2. Livros por Área de Conhecimento
SELECT l.titulo, ac.descricao AS area
FROM Livros l
JOIN Areas_Conhecimento ac ON l.area_conhecimento_id = ac.id_AreasConhecimento
WHERE ac.descricao = 'Literatura Brasileira';

-- 3. Livros por Palavra-Chave
SELECT l.titulo, pc.descricao AS palavra_chave
FROM Livros l
JOIN Livros_PalavrasChave lpc ON l.isbn = lpc.livro_isbn
JOIN Palavras_Chave pc ON lpc.palavra_chave_id = pc.id_palavraChave
WHERE pc.descricao = 'Modernismo';

-- 4. Autores com Mais Livros
SELECT a.nome AS autor, COUNT(l.isbn) AS total_livros
FROM Autores a
LEFT JOIN Livros l ON a.idAutor = l.autor_id
GROUP BY a.idAutor
ORDER BY total_livros DESC;

-- 5. Palavras-Chave Mais Utilizadas
SELECT pc.descricao AS palavra_chave, COUNT(lpc.livro_isbn) AS frequencia
FROM Palavras_Chave pc
LEFT JOIN Livros_PalavrasChave lpc ON pc.id_palavraChave = lpc.palavra_chave_id
GROUP BY pc.id_palavraChave
ORDER BY frequencia DESC;

-- 6. Exemplares Disponíveis de um Livro
SELECT e.numero_serie AS "Número de Série",
       l.titulo AS "Título do Livro"
FROM Exemplares e
INNER JOIN Livros l ON e.isbn = l.isbn
WHERE l.titulo = 'Dom Casmurro' 
  AND e.estado = 'disponível';
  
-- 7.  Exemplares Disponiveis
SELECT e.numero_serie, l.titulo AS livro
FROM Exemplares e
JOIN Livros l ON e.isbn = l.isbn
WHERE e.estado = 'disponível';

-- 8.  Exemplares Entregeues
SELECT e.numero_serie, l.titulo AS livro
FROM Exemplares e
JOIN Livros l ON e.isbn = l.isbn
WHERE e.estado = 'entregue';

-- 9. Exemplares cancelados
SELECT e.numero_serie, l.titulo AS livro
FROM Exemplares e
JOIN Livros l ON e.isbn = l.isbn
WHERE e.estado = 'cancelado';

-- 10. Exemplares pendetes
SELECT e.numero_serie, l.titulo AS livro
FROM Exemplares e
JOIN Livros l ON e.isbn = l.isbn
WHERE e.estado = 'pendente';

-- 11. Livros Mais Vendidos (em número de exemplares)
SELECT l.titulo AS livro, COUNT(pv.exemplar_serie) AS total_vendidos
FROM Livros l
JOIN Exemplares e ON l.isbn = e.isbn
JOIN Pedidos_Vendas pv ON e.numero_serie = pv.exemplar_serie
GROUP BY l.isbn
ORDER BY total_vendidos DESC;

-- 12. Funcionários por Departamento
SELECT f.nome AS funcionario, d.nome AS departamento
FROM Funcionarios f
JOIN Departamentos d ON f.departamento_id = d.idDepartamento
WHERE d.nome = 'vendas';

-- 13. Livros com Mais de 300 Páginas
SELECT titulo, num_paginas
FROM Livros
WHERE num_paginas > 300;

-- 14. Livros com menos de 300 Páginas
SELECT titulo, num_paginas
FROM Livros
WHERE num_paginas < 300;

-- 15. Livros e suas Áreas de Conhecimento
SELECT l.titulo, ac.descricao AS area_conhecimento
FROM Livros l
JOIN Areas_Conhecimento ac ON l.area_conhecimento_id = ac.id_AreasConhecimento;

-- 16. Livros e seus Autores
SELECT l.titulo, a.nome AS autor
FROM Livros l
JOIN Autores a ON l.autor_id = a.idAutor;

-- 17. Média de páginas dos livros por área de conhecimento
SELECT ac.descricao AS area, 
       ROUND(AVG(l.num_paginas),2) AS media_paginas
FROM Livros l
JOIN Areas_Conhecimento ac ON l.area_conhecimento_id = ac.id_AreasConhecimento
GROUP BY ac.descricao
ORDER BY media_paginas DESC;

-- 18. Top 5 clientes que mais compraram (versão corrigida)
SELECT c.cliente_nome AS cliente, 
       COUNT(pv.idPedidoVenda) AS total_compras
FROM Clientes c
JOIN Pedidos_Vendas pv ON c.cliente_id = pv.cliente_id
GROUP BY c.cliente_id, c.cliente_nome
ORDER BY total_compras DESC
LIMIT 5;

-- 19. Livros que nunca foram vendidos
SELECT l.titulo, l.isbn
FROM Livros l
LEFT JOIN Exemplares e ON l.isbn = e.isbn
LEFT JOIN Pedidos_Vendas pv ON e.numero_serie = pv.exemplar_serie
WHERE pv.idPedidoVenda IS NULL;

-- -- 20. Palavras-chave não utilizadas
SELECT pc.descricao AS palavra_nao_utilizada
FROM Palavras_Chave pc
LEFT JOIN Livros_PalavrasChave lpc ON pc.id_palavraChave = lpc.palavra_chave_id
WHERE lpc.livro_isbn IS NULL;





