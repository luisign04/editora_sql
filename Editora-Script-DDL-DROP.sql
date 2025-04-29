USE EditoraLivros;

-- -----------------------------------------------------
-- Desabilitar verificações de FK temporariamente
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS = 0;

-- -----------------------------------------------------
-- Remover todas as views
-- -----------------------------------------------------
DROP VIEW IF EXISTS 
    LivrosDetalhados,
    PedidosComClienteExemplar,
    FuncionariosDepartamentoEndereco,
    LivrosPalavrasChave,
    ExemplaresStatus,
    VendasPorFuncionario,
    ClientesCompleto,
    LivrosNuncaVendidos,
    VendasPorAreaConhecimento,
    PedidosPendentes,
    PerformanceAutores,
    VendasPorRegiao;

-- -----------------------------------------------------
-- Remover tabelas na ordem correta de dependências
-- -----------------------------------------------------
DROP TABLE IF EXISTS
    Funcionarios_Endereco,
    Clientes_Endereco,
    Livros_PalavrasChave,
    Funcionarios,
    Clientes,
    Pedidos_Vendas,
    Exemplares,
    Livros,
    Departamentos,
    Palavras_Chave,
    Autores,
    Areas_Conhecimento;

-- -----------------------------------------------------
-- Reabilitar verificações de FK
-- -----------------------------------------------------
SET FOREIGN_KEY_CHECKS = 1;

-- -----------------------------------------------------
-- Remover o banco de dados
-- -----------------------------------------------------
DROP DATABASE IF EXISTS EditoraLivros;