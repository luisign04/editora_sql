USE EditoraLivros;


-- ATUALIZAÇÃO: Alterar o status de um pedido
UPDATE Pedidos_Vendas
SET status = 'Finalizado'
WHERE codigo_pedido = 'PD006';

-- ATUALIZAÇÃO: Alterar a quantidade de um pedido
UPDATE Pedidos_Vendas
SET quantidade = 3
WHERE codigo_pedido = 'PD010';

-- ATUALIZAÇÃO: Alterar o valor total de um pedido
UPDATE Pedidos_Vendas
SET valor_total = 70.00
WHERE codigo_pedido = 'PD003';

-- ATUALIZAÇÃO: Alterar o nome de um autor
UPDATE Autores
SET nome = 'Carlos Eduardo Oliveira'
WHERE id_autor = 1;

-- ATUALIZAÇÃO: Atualizar o estado de um exemplar
UPDATE Exemplares
SET estado = 'Reservado'
WHERE numero_serie = 'EX001';

-- DELEÇÃO: Remover um pedido cancelado
DELETE FROM Pedidos_Vendas
WHERE status = 'Cancelado' AND codigo_pedido = 'PD004';

-- DELEÇÃO: Remover um autor específico
DELETE FROM Autores
WHERE id_autor = 5;

-- DELEÇÃO: Remover um exemplar de livro
DELETE FROM Exemplares
WHERE numero_serie = 'EX002';

-- ATUALIZAÇÃO: Alterar o nome de um departamento
UPDATE Departamentos
SET nome = 'Departamento de Logística'
WHERE id_departamento = 3;

-- DELEÇÃO: Remover um livro que não tem exemplares
DELETE FROM Livros
WHERE isbn = '9788535909777';

-- ATUALIZAÇÃO: Mudar o valor de um livro
UPDATE Livros
SET preco = 45.00
WHERE isbn = '9788535914849';

-- DELEÇÃO: Remover uma palavra-chave
DELETE FROM Palavras_Chave
WHERE codigo_palavra_chave = 'PC09';

-- ATUALIZAÇÃO: Alterar a descrição de uma área de conhecimento
UPDATE Areas_Conhecimento
SET descricao = 'Tecnologia e Inovação'
WHERE codigo_area = 'AC02';

-- DELEÇÃO: Remover um funcionário
DELETE FROM Funcionarios
WHERE id_funcionario = 7;

-- ATUALIZAÇÃO: Alterar o nome de um cliente no pedido
UPDATE Pedidos_Vendas
SET cliente_nome = 'Ana Clara Silva'
WHERE codigo_pedido = 'PD002';

-- ATUALIZAÇÃO: Alterar a descrição de um livro
UPDATE Livros
SET descricao = 'Nova descrição para o livro "O Código da Vinci"'
WHERE isbn = '9788525045812';

-- DELEÇÃO: Remover uma venda específica
DELETE FROM Pedidos_Vendas
WHERE codigo_pedido = 'PD007';

-- DELEÇÃO: Remover todos os livros de um autor
DELETE FROM Livros
WHERE autor_id = 3;

-- ATUALIZAÇÃO: Atualizar a quantidade de livros vendidos
UPDATE Pedidos_Vendas
SET quantidade = 4
WHERE codigo_pedido = 'PD008';

-- ATUALIZAÇÃO: Atualizar o preço de todos os livros de um determinado autor
UPDATE Livros
SET preco = 55.00
WHERE autor_id = 2;

-- DELEÇÃO: Remover todas as palavras-chave associadas a um livro
DELETE FROM Livros_PalavrasChave
WHERE livro_isbn = '9788535902778';
