USE EditoraLivros;
ALTER TABLE Exemplares
DROP FOREIGN KEY exemplares_ibfk_1;
ALTER TABLE Exemplares
ADD CONSTRAINT exemplares_ibfk_1
FOREIGN KEY (isbn)
REFERENCES Livros (isbn)
ON DELETE CASCADE;

-- Deletar um livro específico pelo ISBN
DELETE FROM Livros WHERE isbn = '978-85-0000-005-8';

-- Deletar todos os livros de um determinado autor (CORRIGIDO PARA DEPENDÊNCIAS)
DELETE FROM Pedidos_Vendas
WHERE exemplar_serie IN (SELECT numero_serie FROM Exemplares WHERE isbn IN (SELECT isbn FROM Livros WHERE autor_id = 555));

DELETE FROM Exemplares
WHERE isbn IN (SELECT isbn FROM Livros WHERE autor_id = 555);

DELETE FROM Livros_PalavrasChave
WHERE livro_isbn IN (SELECT isbn FROM Livros WHERE autor_id = 555);

DELETE FROM Livros
WHERE autor_id = 555;

-- Deletar todos os exemplares danificados
DELETE FROM Exemplares WHERE estado = 'danificado';

-- Deletar um pedido de venda específico pelo ID
DELETE FROM Pedidos_Vendas WHERE idPeriodoVenda = 10;

-- Deletar todos os funcionários de um determinado departamento
DELETE FROM Funcionarios WHERE departamento_id = 301;

-- Deletar uma área de conhecimento específica pelo ID
DELETE FROM Areas_Conhecimento WHERE id_AreasConhecimento = 110;

-- Deletar uma palavra-chave específica pelo ID
DELETE FROM Palavras_Chave WHERE id_palavraChave = 210;

-- Deletar um autor específico pelo ID
DELETE FROM Autores WHERE idAutor = 888;

-- Deletar um departamento específico pelo ID
DELETE FROM Departamentos WHERE idDepartamento = 306;

-- Deletar todos os pedidos de venda com status 'Pendente'
DELETE FROM Pedidos_Vendas WHERE status = 'Pendente';

-- Deletar todos os livros publicados antes de uma certa data
DELETE FROM Livros WHERE data_publicacao < '1900-01-01';

-- Deletar todos os exemplares do tipo 'Digital'
DELETE FROM Exemplares WHERE tipo = 'Digital';

-- Deletar a associação de um livro com uma palavra-chave específica
DELETE FROM Livros_PalavrasChave WHERE livro_isbn = '978-85-0000-011-9' AND palavra_chave_id = 203;

-- Deletar todos os funcionários com um determinado cargo
DELETE FROM Funcionarios WHERE cargo = 'Assistente de Vendas';

-- Deletar todos os pedidos feitos por um cliente específico
DELETE FROM Pedidos_Vendas WHERE cliente_nome = 'Ana Paula Souza';

-- Deletar todos os livros com menos de 100 páginas
DELETE FROM Livros WHERE num_paginas < 100;

-- Deletar todos os exemplares localizados em uma prateleira específica
DELETE FROM Exemplares WHERE localizacao = 'Prateleira A3';

-- Deletar todos os pedidos de venda feitos em um determinado dia
DELETE FROM Pedidos_Vendas WHERE DATE(data_transacao) = '2025-04-20';

-- Deletar a biografia de um autor específico
UPDATE Autores SET biografia = NULL WHERE idAutor = 111; -- Usando UPDATE para zerar o campo

-- Deletar todos os livros de ficção científica
DELETE FROM Livros WHERE area_conhecimento_id = (SELECT id_AreasConhecimento FROM Areas_Conhecimento WHERE descricao = 'Ficção Científica');

-- Atualizar o título de um livro específico pelo ISBN
UPDATE Livros SET titulo = 'Novas Aventuras na Floresta' WHERE isbn = '978-85-0000-001-0';

-- Atualizar o estado de um exemplar para 'disponível'
UPDATE Exemplares SET estado = 'disponível' WHERE numero_serie = 'EX0002';

-- Atualizar o status de um pedido de venda para 'Enviado'
UPDATE Pedidos_Vendas SET status = 'Enviado' WHERE idPeriodoVenda = 2;

-- Atualizar o cargo de um funcionário
UPDATE Funcionarios SET cargo = 'Editor Sênior' WHERE idFuncionario = 401;

-- Atualizar a descrição de uma área de conhecimento
UPDATE Areas_Conhecimento SET descricao = 'Literatura Brasileira Contemporânea' WHERE id_AreasConhecimento = 101;

-- Atualizar a descrição de uma palavra-chave
UPDATE Palavras_Chave SET descricao = 'romance' WHERE id_palavraChave = 201;

-- Atualizar a nacionalidade de um autor
UPDATE Autores SET nacionalidade = 'Estadunidense' WHERE idAutor = 222;

-- Atualizar o responsável por um departamento
UPDATE Departamentos SET responsavel = 'Carla Mendes' WHERE idDepartamento = 306;

-- Atualizar o número de páginas de um livro
UPDATE Livros SET num_paginas = 280 WHERE isbn = '978-85-0000-004-1';

-- Atualizar a localização de um exemplar
UPDATE Exemplares SET localizacao = 'Estante D1' WHERE numero_serie = 'EX0005';

-- Atualizar o tipo de pagamento de um pedido
UPDATE Pedidos_Vendas SET tipo_pagamento = 'Cartão de Crédito - 2x' WHERE idPeriodoVenda = 7;

-- Adicionar uma observação a um pedido existente
UPDATE Pedidos_Vendas SET observacoes = CONCAT(observacoes, ' - Cliente solicitou embalagem para presente.') WHERE idPeriodoVenda = 1;

-- Atualizar o idioma de todos os livros de um autor específico
UPDATE Livros SET idioma_livro = 'Espanhol' WHERE autor_id = 1000;

-- Atualizar o email de um funcionário
UPDATE Funcionarios SET email = 'novo.email@editora.com' WHERE idFuncionario = 402;

-- Atualizar a data de publicação de um livro
UPDATE Livros SET data_publicacao = '2023-06-01' WHERE isbn = '978-85-0000-007-2';

-- Atualizar a editora de um livro
UPDATE Livros SET editora = 'Nova Editora' WHERE isbn = '978-85-0000-003-4';

-- Atualizar o estado de todos os exemplares de um livro específico
UPDATE Exemplares SET estado = 'reservado' WHERE isbn = '978-85-3253-052-4';

-- Atualizar a biografia de um autor
UPDATE Autores SET biografia = 'Um renomado autor com diversas obras publicadas.' WHERE idAutor = 333;

-- Atualizar o número de edição de um livro
UPDATE Livros SET edicao_livro = 2 WHERE isbn = '978-85-0000-006-5';

-- Atualizar o departamento de um funcionário
UPDATE Funcionarios SET departamento_id = 305 WHERE idFuncionario = 406;