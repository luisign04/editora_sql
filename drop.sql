USE EditoraLivros;

-- DROPAR VIEWS
DROP VIEW IF EXISTS
    view_livros_por_autor,
    view_pedidos_cliente,
    view_exemplares_por_livro,
    view_livros_palavras_chave,
    view_total_livros_por_autor,
    view_livros_vendidos_pedido,
    view_funcionarios_departamento,
    view_pedidos_finalizados,
    view_livros_por_area_conhecimento,
    view_exemplares_danificados;

-- DROPAR PROCEDURES E FUNCTIONS (EXEMPLO GENÉRICO, ADAPTE CASO TENHA CRIADO ALGUMAS)
DROP PROCEDURE IF EXISTS exemplo_procedure;
DROP FUNCTION IF EXISTS exemplo_funcao;

-- DROPAR TABELAS (ordem respeitando chaves estrangeiras)
DROP TABLE IF EXISTS
    Livros_PalavrasChave,
    Pedidos_Vendas,
    Exemplares,
    Livros,
    Funcionarios,
    Departamentos,
    Autores,
    Palavras_Chave,
    Areas_Conhecimento;