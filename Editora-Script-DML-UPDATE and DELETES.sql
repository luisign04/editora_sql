USE EditoraLivros;

-- Script 1: Atualiza a biografia do autor com id 1001
UPDATE Autores
SET biografia = 'Considerado um dos maiores nomes do Realismo brasileiro, com obra aclamada internacionalmente.'
WHERE idAutor = 1001;

-- Script 2: Atualiza a data_falecimento de um autor (caso estivesse nulo) – Atualizando o autor 1010
UPDATE Autores
SET data_falecimento = '2100-01-01'
WHERE idAutor = 1010 AND data_falecimento IS NULL;

-- Script 3: Deleta o registro do autor com id 1015 (Ana Maria Machado)
DELETE FROM Autores
WHERE idAutor = 1015;

-- Script 4: Atualiza a descrição da área de conhecimento com id 1109
UPDATE Areas_Conhecimento
SET descricao = 'Teatro Popular e Expressões Culturais'
WHERE id_AreasConhecimento = 1109;

-- Script 6: Atualiza o responsável do departamento de Marketing (id 202)
UPDATE Departamentos
SET responsavel = 'Fernanda Costa'
WHERE idDepartamento = 202;

-- Script 7: Deleta o departamento de Tradução (id 213)
DELETE FROM Departamentos
WHERE idDepartamento = 213;

-- Script 8: Atualiza a localização do exemplar com numero_serie 'SN-005'
UPDATE Exemplares
SET localizacao = 'Estoque SP - Prateleira 3'
WHERE numero_serie = 'SN-005';

-- Script 9: Deleta o exemplar com numero_serie 'SN-004'
DELETE FROM Exemplares
WHERE numero_serie = 'SN-004';

-- Script 10: Atualiza o status do pedido de venda com id 10021 para 'completo'
UPDATE Pedidos_Vendas
SET status_pedido = 'completo'
WHERE idPedidoVenda = 10021;


-- Script 12: Atualiza o telefone do cliente com id 522
UPDATE Clientes
SET cliente_telefone = '5199998888'
WHERE cliente_id = 522;

-- Script 13: Deleta o registro do cliente com id 531
DELETE FROM Clientes
WHERE cliente_id = 531;

-- Script 14: Atualiza o título do livro com isbn '978-853592'
UPDATE Livros
SET titulo = 'Grande Sertão: Veredas - Edição Revisada'
WHERE isbn = '978-853592';



-- Script 15: Deleta o livro com isbn '978-853599'
DELETE FROM Funcionarios 
WHERE Livros_isbn = '978-853599';
DELETE FROM Livros
WHERE isbn = '978-853599';

-- Script 16: Atualiza o cargo do funcionário com id 703 para 'Analista Sênior de Finanças'
UPDATE Funcionarios
SET cargo = 'Analista Sênior de Finanças'
WHERE idFuncionario = 703;

-- Script 17: Deleta o funcionário com id 710
DELETE FROM Funcionarios
WHERE idFuncionario = 710;

-- Script 18: Atualiza o bairro no endereço do funcionário com id 701
UPDATE Funcionarios_Endereco
SET bairro = 'Jardim Paulista'
WHERE funcionario_id = 701;

-- Script 19: Deleta o endereço do funcionário com id 715
DELETE FROM Funcionarios_Endereco
WHERE funcionario_id = 715;

-- Script 20: Atualiza a descrição da palavra-chave com id 306
UPDATE Palavras_Chave
SET descricao = 'Literatura Infantojuvenil Contemporânea'
WHERE id_PalavraChave = 306;

-- Script 21: Deleta uma associação em Livros_PalavrasChave para o livro '978-853591' e palavra-chave 303
DELETE FROM Livros_PalavrasChave
WHERE livro_isbn = '978-853591' AND palavra_chave_id = 303;

-- Script 22: Atualiza o CEP do endereço do cliente com id 524
UPDATE Clientes_Endereco
SET CEP = '40140200'
WHERE cliente_id = 524;

-- Script 23: Deleta o endereço do cliente com id 532
DELETE FROM Clientes_Endereco
WHERE cliente_id = 532;
