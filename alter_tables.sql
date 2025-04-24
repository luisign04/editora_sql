USE EditoraLivros;

-- Adicionar nova coluna de estado do autor em autores
ALTER TABLE Autores ADD COLUMN estado_autor ENUM('Vivo', 'Falecido');

-- Adicionar nova coluna de idioma em livros
ALTER TABLE Livros ADD COLUMN idioma_livro VARCHAR(50);

-- Adicionar nova coluna de número de edição em livros
ALTER TABLE Livros ADD COLUMN edicao_livro INT;

-- Alterar tipo do campo telefone dos funcionários para VARCHAR(20)
ALTER TABLE Funcionarios MODIFY COLUMN telefone VARCHAR(20);

-- Adicionar coluna de nível de escolaridade aos funcionários
ALTER TABLE Funcionarios ADD COLUMN escolaridade VARCHAR(100);

-- Adicionar campo de tipo em exemplares (físico/digital)
ALTER TABLE Exemplares ADD COLUMN tipo ENUM('Físico', 'Digital');

-- Adicionar coluna de email aos funcionários
ALTER TABLE Funcionarios ADD COLUMN email VARCHAR(50) NOT NULL UNIQUE;

-- Adicionar campo status ao pedido/venda
ALTER TABLE Pedidos_Vendas ADD COLUMN status ENUM('Pendente', 'Pago', 'Cancelado');

-- Adicionar campo tipo de pagamento em pedidos/vendas
ALTER TABLE Pedidos_Vendas ADD COLUMN tipo_pagamento VARCHAR(50);

-- Adicionar campo observações aos pedidos/vendas
ALTER TABLE Pedidos_Vendas ADD COLUMN observacoes TEXT;