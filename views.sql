USE EditoraLivros;

-- VIEW 1: Livros e seus autores
CREATE VIEW vw_livros_autores AS
SELECT l.isbn, l.titulo AS livro, a.nome AS autor
FROM Livros l
JOIN Autores a ON l.autor_id = a.idAutor;

-- VIEW 2: Livros e suas áreas de conhecimento
CREATE VIEW vw_livros_areas AS
SELECT l.isbn, l.titulo AS livro, ac.descricao AS area_conhecimento
FROM Livros l
JOIN Areas_Conhecimento ac ON l.area_conhecimento_id = ac.id_AreasConhecimento;

-- VIEW 3: Exemplares disponíveis por livro
CREATE VIEW vw_exemplares_disponiveis AS
SELECT l.isbn, l.titulo AS livro, COUNT(e.numero_serie) AS total_disponiveis
FROM Livros l
LEFT JOIN Exemplares e ON l.isbn = e.isbn AND e.estado = 'disponível'
GROUP BY l.isbn, l.titulo;

-- VIEW 4: Pedidos de venda com detalhes do livro
CREATE VIEW vw_pedidos_livros AS
SELECT pv.idPeriodoVenda AS pedido, pv.cliente_nome, pv.data_transacao, l.titulo AS livro
FROM Pedidos_Vendas pv
JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
JOIN Livros l ON e.isbn = l.isbn;

-- VIEW 5: Autores com o total de livros publicados
CREATE VIEW vw_autores_total_livros AS
SELECT a.nome AS autor, COUNT(l.isbn) AS total_livros
FROM Autores a
LEFT JOIN Livros l ON a.idAutor = l.autor_id
GROUP BY a.idAutor;

-- VIEW 6: Livros com suas palavras-chave
CREATE VIEW vw_livros_palavras AS
SELECT l.isbn, l.titulo AS livro, GROUP_CONCAT(pc.descricao SEPARATOR ', ') AS palavras_chave
FROM Livros l
JOIN Livros_PalavrasChave lpc ON l.isbn = lpc.livro_isbn
JOIN Palavras_Chave pc ON lpc.palavra_chave_id = pc.id_palavraChave
GROUP BY l.isbn, l.titulo;

-- VIEW 7: Funcionários e seus departamentos
CREATE VIEW vw_funcionarios_departamentos AS
SELECT f.nome AS funcionario, d.nome AS departamento
FROM Funcionarios f
JOIN Departamentos d ON f.departamento_id = d.idDepartamento;

-- VIEW 8: Livros mais vendidos
CREATE VIEW vw_livros_mais_vendidos AS
SELECT l.isbn, l.titulo AS livro, COUNT(pv.exemplar_serie) AS total_vendidos
FROM Livros l
JOIN Exemplares e ON l.isbn = e.isbn
JOIN Pedidos_Vendas pv ON e.numero_serie = pv.exemplar_serie
GROUP BY l.isbn, l.titulo
ORDER BY total_vendidos DESC;

-- VIEW 9: Exemplares danificados com detalhes do livro
CREATE VIEW vw_exemplares_danificados_detalhes AS
SELECT e.numero_serie, l.isbn, l.titulo AS livro
FROM Exemplares e
JOIN Livros l ON e.isbn = l.isbn
WHERE e.estado = 'danificado';

-- VIEW 10: Pedidos pendentes com detalhes do cliente e livro
CREATE VIEW vw_pedidos_pendentes AS
SELECT pv.idPeriodoVenda AS pedido,
       pv.cliente_nome,
       pv.data_transacao,
       l.titulo AS livro
FROM Pedidos_Vendas pv
JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
JOIN Livros l ON e.isbn = l.isbn
WHERE pv.status_pedido = 'pendente';