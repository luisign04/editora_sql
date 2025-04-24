USE EditoraLivros;

-- 1. Listagem Completa de Livros
-- SELECT * FROM Livros;

-- 2. Livros por Autor
-- SELECT l.titulo, a.nome AS autor
-- FROM Livros l
-- JOIN Autores a ON l.autor_id = a.idAutor
-- WHERE a.nome = 'Machado de Assis';

-- 3. Livros por Área de Conhecimento
-- SELECT l.titulo, ac.descricao AS area
-- FROM Livros l
-- JOIN Areas_Conhecimento ac ON l.area_conhecimento_id = ac.id_AreasConhecimento
-- WHERE ac.descricao = 'Literatura Brasileira';

-- 4. Livros por Palavra-Chave
-- SELECT l.titulo, pc.descricao AS palavra_chave
-- FROM Livros l
-- JOIN Livros_PalavrasChave lpc ON l.isbn = lpc.livro_isbn
-- JOIN Palavras_Chave pc ON lpc.palavra_chave_id = pc.id_palavraChave
-- WHERE pc.descricao = 'amor';

-- 5. Autores com Mais Livros
-- SELECT a.nome AS autor, COUNT(l.isbn) AS total_livros
-- FROM Autores a
-- LEFT JOIN Livros l ON a.idAutor = l.autor_id
-- GROUP BY a.idAutor
-- ORDER BY total_livros DESC;

-- 6. Palavras-Chave Mais Utilizadas
-- SELECT pc.descricao AS palavra_chave, COUNT(lpc.livro_isbn) AS frequencia
-- FROM Palavras_Chave pc
-- LEFT JOIN Livros_PalavrasChave lpc ON pc.id_palavraChave = lpc.palavra_chave_id
-- GROUP BY pc.id_palavraChave
-- ORDER BY frequencia DESC;

-- 7. Exemplares Disponíveis de um Livro
-- SELECT e.numero_serie
-- FROM Exemplares e
-- JOIN Livros l ON e.isbn = l.isbn
-- WHERE l.titulo = 'Dom Casmurro' AND e.estado = 'disponível';

-- 8. Exemplares Reservados
-- SELECT e.numero_serie, l.titulo AS livro
-- FROM Exemplares e
-- JOIN Livros l ON e.isbn = l.isbn
-- WHERE e.estado = 'reservado';

-- 9. Pedidos de Venda por Cliente
-- SELECT pv.idPeriodoVenda AS pedido, pv.data_transacao, l.titulo AS livro
-- FROM Pedidos_Vendas pv
-- JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
-- JOIN Livros l ON e.isbn = l.isbn
-- WHERE pv.cliente_nome = 'Carlos Mendes';

-- 10. Pedidos de Venda por Status
-- SELECT pv.idPeriodoVenda AS pedido, pv.cliente_nome, l.titulo AS livro
-- FROM Pedidos_Vendas pv
-- JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
-- JOIN Livros l ON e.isbn = l.isbn
-- WHERE pv.status = 'Pago';

-- 11. Livros Mais Vendidos (em número de exemplares)
-- SELECT l.titulo AS livro, COUNT(pv.exemplar_serie) AS total_vendidos
-- FROM Livros l
-- JOIN Exemplares e ON l.isbn = e.isbn
-- JOIN Pedidos_Vendas pv ON e.numero_serie = pv.exemplar_serie
-- GROUP BY l.isbn
-- ORDER BY total_vendidos DESC;

-- 12. Funcionários por Departamento
-- SELECT f.nome AS funcionario, d.nome AS departamento
-- FROM Funcionarios f
-- JOIN Departamentos d ON f.departamento_id = d.idDepartamento
-- WHERE d.nome = 'vendas';

-- 13. Livros Publicados em um Período
-- SELECT titulo, data_publicacao
-- FROM Livros
-- WHERE data_publicacao BETWEEN '2022-01-01' AND '2023-12-31';

-- 14. Exemplares Danificados
-- SELECT e.numero_serie, l.titulo AS livro
-- FROM Exemplares e
-- JOIN Livros l ON e.isbn = l.isbn
-- WHERE e.estado = 'danificado';

-- 15. Livros com Mais de X Páginas
-- SELECT titulo, num_paginas
-- FROM Livros
-- WHERE num_paginas > 300;

-- 16. Funcionários com um Cargo Específico
-- SELECT nome AS funcionario, cargo
-- FROM Funcionarios
-- WHERE cargo = 'Editor Assistente';

-- 17. Pedidos de Venda com um Tipo de Pagamento Específico
-- SELECT idPeriodoVenda AS pedido, cliente_nome, tipo_pagamento, l.titulo AS livro
-- FROM Pedidos_Vendas pv
-- JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
-- JOIN Livros l ON e.isbn = l.isbn
-- WHERE tipo_pagamento = 'Pix';

-- 18. Livros e suas Áreas de Conhecimento
-- SELECT l.titulo, ac.descricao AS area_conhecimento
-- FROM Livros l
-- JOIN Areas_Conhecimento ac ON l.area_conhecimento_id = ac.id_AreasConhecimento;

-- 19. Livros e seus Autores
-- SELECT l.titulo, a.nome AS autor
-- FROM Livros l
-- JOIN Autores a ON l.autor_id = a.idAutor;

-- 20. Pedidos de Venda com Detalhes do Exemplar
-- SELECT pv.idPeriodoVenda AS pedido, pv.cliente_nome, e.numero_serie AS exemplar, l.isbn AS isbn_livro, l.titulo AS livro
-- FROM Pedidos_Vendas pv
-- JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
-- JOIN Livros l ON e.isbn = l.isbn;