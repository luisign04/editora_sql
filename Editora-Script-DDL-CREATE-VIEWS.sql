SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP DATABASE IF EXISTS EditoraLivros;
CREATE DATABASE EditoraLivros DEFAULT CHARACTER SET utf8mb4;
USE EditoraLivros;

CREATE TABLE IF NOT EXISTS Autores (
  idAutor INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  biografia TEXT NULL,
  nacionalidade VARCHAR(50) NULL,
  data_nascimento DATE NULL,
  PRIMARY KEY (idAutor))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Areas_Conhecimento (
  id_AreasConhecimento INT NOT NULL,
  descricao VARCHAR(100) NOT NULL,
  PRIMARY KEY (id_AreasConhecimento))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Exemplares (
  numero_serie VARCHAR(30) NOT NULL,
  isbn VARCHAR(30) NULL,
  estado ENUM('pendente', 'enviado', 'cancelado', 'entregue') NOT NULL,
  localizacao VARCHAR(100) NULL,
  PRIMARY KEY (numero_serie))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Pedidos_Vendas (
  idPedidoVenda INT NOT NULL,
  cliente_id INT NULL,
  cliente_nome VARCHAR(100) NULL,
  data_transacao VARCHAR(45) NULL,
  status_pedido VARCHAR(45) NOT NULL,
  pagamento_dertalhes TEXT NULL,
  exemplar_serie VARCHAR(30) NULL,
  PRIMARY KEY (idPedidoVenda),
  INDEX numero_serie_idx (exemplar_serie ASC) VISIBLE,
  CONSTRAINT numero_serie
    FOREIGN KEY (exemplar_serie)
    REFERENCES Exemplares (numero_serie)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Livros (
  isbn VARCHAR(20) NOT NULL,
  titulo VARCHAR(150) NOT NULL,
  editora VARCHAR(100) NULL,
  data_publicacao DATE NULL,
  num_paginas VARCHAR(100) NULL,
  descricao TEXT NULL,
  autor_id INT NULL,
  area_conhecimento_id INT NULL,
  Pedidos_Vendas_idPedidoVenda INT NOT NULL,
  PRIMARY KEY (isbn),
  INDEX autor_id_idx (autor_id ASC) VISIBLE,
  INDEX area_conhecimento_id_idx (area_conhecimento_id ASC) VISIBLE,
  INDEX fk_Livros_Pedidos_Vendas1_idx (Pedidos_Vendas_idPedidoVenda ASC) VISIBLE,
  CONSTRAINT autor_id
    FOREIGN KEY (autor_id)
    REFERENCES Autores (idAutor)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT area_conhecimento_id
    FOREIGN KEY (area_conhecimento_id)
    REFERENCES Areas_Conhecimento (id_AreasConhecimento)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Livros_Pedidos_Vendas1
    FOREIGN KEY (Pedidos_Vendas_idPedidoVenda)
    REFERENCES Pedidos_Vendas (idPedidoVenda)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Departamentos (
  idDepartamento INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  descricao TEXT NULL,
  responsavel VARCHAR(100) NULL,
  PRIMARY KEY (idDepartamento))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS Funcionarios (
  idFuncionario INT NOT NULL,
  nome VARCHAR(100) NOT NULL,
  cargo VARCHAR(50) NULL,
  telefone VARCHAR(20) NULL,
  departamento_id INT NULL,
  Livros_isbn VARCHAR(20) NOT NULL,
  Pedidos_Vendas_idPedidoVenda INT NOT NULL,
  PRIMARY KEY (idFuncionario, Livros_isbn),
  INDEX departamento_id_idx (departamento_id ASC) VISIBLE,
  INDEX fk_Funcionarios_Livros1_idx (Livros_isbn ASC) VISIBLE,
  INDEX fk_Funcionarios_Pedidos_Vendas1_idx (Pedidos_Vendas_idPedidoVenda ASC) VISIBLE,
  CONSTRAINT departamento_id
    FOREIGN KEY (departamento_id)
    REFERENCES Departamentos (idDepartamento)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Funcionarios_Livros1
    FOREIGN KEY (Livros_isbn)
    REFERENCES Livros (isbn)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Funcionarios_Pedidos_Vendas1
    FOREIGN KEY (Pedidos_Vendas_idPedidoVenda)
    REFERENCES Pedidos_Vendas (idPedidoVenda)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




CREATE TABLE IF NOT EXISTS Funcionarios_Endereco (
  funcionario_id INT NOT NULL,
  UF VARCHAR (2)NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  rua VARCHAR(45) NOT NULL,
  CEP VARCHAR(20) NOT NULL,
  comp VARCHAR(100) NULL,
  INDEX funcionario_id_idx (funcionario_id ASC) VISIBLE,
  PRIMARY KEY (funcionario_id),
  CONSTRAINT funcionario_id
    FOREIGN KEY (funcionario_id)
    REFERENCES Funcionarios (idFuncionario)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS Palavras_Chave (
  id_PalavraChave INT NOT NULL,
  descricao VARCHAR(100) NULL,
  PRIMARY KEY (id_PalavraChave))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS Livros_PalavrasChave (
  livro_isbn VARCHAR(100) NOT NULL,
  palavra_chave_id INT NOT NULL,
  PRIMARY KEY (livro_isbn),
  INDEX id_PalavraChave_idx (palavra_chave_id ASC) VISIBLE,
  CONSTRAINT livro_isbn
    FOREIGN KEY (livro_isbn)
    REFERENCES Livros (isbn)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT id_PalavraChave
    FOREIGN KEY (palavra_chave_id)
    REFERENCES Palavras_Chave (id_PalavraChave)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Clientes (
  cliente_id INT NOT NULL,
  CPF_CNPJ VARCHAR(14),
  cliente_nome VARCHAR(100) NOT NULL,
  sexo BINARY(2) NOT NULL,
  cliente_telefone VARCHAR(13) NULL,
  cliente_email VARCHAR(100) NULL,
  Pedidos_Vendas_idPedidoVenda INT NOT NULL,
  PRIMARY KEY (cliente_id),
  INDEX fk_Clientes_Pedidos_Vendas1_idx (Pedidos_Vendas_idPedidoVenda ASC) VISIBLE,
  CONSTRAINT fk_Clientes_Pedidos_Vendas1
    FOREIGN KEY (Pedidos_Vendas_idPedidoVenda)
    REFERENCES Pedidos_Vendas (idPedidoVenda)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS Clientes_Endereco (
  cliente_id INT NOT NULL,
  UF VARCHAR(2) NOT NULL,
  cidade VARCHAR(100) NOT NULL,
  bairro VARCHAR(50) NOT NULL,
  rua VARCHAR(100) NOT NULL,
  CEP VARCHAR(8) NOT NULL,
  comp VARCHAR(100) NULL,
  Clientes_Enderecocol VARCHAR(45) NULL,
  INDEX cliente_id_idx (cliente_id ASC) VISIBLE,
  PRIMARY KEY (cliente_id),
  CONSTRAINT cliente_id
    FOREIGN KEY (cliente_id)
    REFERENCES Clientes (cliente_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;

CREATE VIEW LivrosDetalhados AS
SELECT 
    l.isbn,
    l.titulo,
    a.nome AS autor,
    ac.descricao AS area_conhecimento,
    l.data_publicacao,
    l.editora
FROM Livros l
LEFT JOIN Autores a ON l.autor_id = a.idAutor
LEFT JOIN Areas_Conhecimento ac ON l.area_conhecimento_id = ac.id_AreasConhecimento;

CREATE VIEW PedidosComClienteExemplar AS
SELECT
    p.idPedidoVenda,
    c.cliente_nome,
    e.numero_serie,
    e.estado,
    l.titulo AS livro,
    p.data_transacao,
    p.status_pedido
FROM Pedidos_Vendas p
JOIN Clientes c ON p.idPedidoVenda = c.Pedidos_Vendas_idPedidoVenda
JOIN Exemplares e ON p.exemplar_serie = e.numero_serie
JOIN Livros l ON e.isbn = l.isbn;

CREATE VIEW FuncionariosDepartamentoEndereco AS
SELECT
    f.idFuncionario,
    f.nome,
    f.cargo,
    d.nome AS departamento,
    fe.cidade,
    fe.UF,
    fe.rua
FROM Funcionarios f
LEFT JOIN Departamentos d ON f.departamento_id = d.idDepartamento
LEFT JOIN Funcionarios_Endereco fe ON f.idFuncionario = fe.funcionario_id;

CREATE VIEW LivrosPalavrasChave AS
SELECT
    l.isbn,
    l.titulo,
    GROUP_CONCAT(pc.descricao SEPARATOR ', ') AS palavras_chave
FROM Livros l
LEFT JOIN Livros_PalavrasChave lpc ON l.isbn = lpc.livro_isbn
LEFT JOIN Palavras_Chave pc ON lpc.palavra_chave_id = pc.id_PalavraChave
GROUP BY l.isbn;

CREATE VIEW ExemplaresStatus AS
SELECT
    e.numero_serie,
    e.estado,
    l.titulo,
    l.editora,
    l.data_publicacao
FROM Exemplares e
LEFT JOIN Livros l ON e.isbn = l.isbn;

CREATE VIEW VendasPorFuncionario AS
SELECT
    f.idFuncionario,
    f.nome,
    COUNT(p.idPedidoVenda) AS total_vendas,
    GROUP_CONCAT(DISTINCT l.titulo SEPARATOR '; ') AS livros_relacionados
FROM Funcionarios f
LEFT JOIN Pedidos_Vendas p ON f.Pedidos_Vendas_idPedidoVenda = p.idPedidoVenda
LEFT JOIN Livros l ON f.Livros_isbn = l.isbn
GROUP BY f.idFuncionario;

CREATE VIEW ClientesCompleto AS
SELECT
    c.cliente_id,
    c.cliente_nome,
    ce.cidade,
    ce.UF,
    COUNT(p.idPedidoVenda) AS total_pedidos,
    MAX(p.data_transacao) AS ultima_compra
FROM Clientes c
LEFT JOIN Clientes_Endereco ce ON c.cliente_id = ce.cliente_id
LEFT JOIN Pedidos_Vendas p ON c.Pedidos_Vendas_idPedidoVenda = p.idPedidoVenda
GROUP BY c.cliente_id;

CREATE VIEW LivrosNuncaVendidos AS
SELECT 
    l.isbn,
    l.titulo,
    l.editora,
    l.data_publicacao
FROM Livros l
LEFT JOIN Exemplares e ON l.isbn = e.isbn
LEFT JOIN Pedidos_Vendas pv ON e.numero_serie = pv.exemplar_serie
WHERE pv.idPedidoVenda IS NULL;

CREATE VIEW VendasPorAreaConhecimento AS
SELECT 
    ac.descricao AS area_conhecimento,
    COUNT(pv.idPedidoVenda) AS total_vendas,
    SUM(CHAR_LENGTH(l.num_paginas)) AS paginas_vendidas_total
FROM Areas_Conhecimento ac
LEFT JOIN Livros l ON ac.id_AreasConhecimento = l.area_conhecimento_id
LEFT JOIN Exemplares e ON l.isbn = e.isbn
LEFT JOIN Pedidos_Vendas pv ON e.numero_serie = pv.exemplar_serie
GROUP BY ac.descricao;

CREATE VIEW PedidosPendentes AS
SELECT 
    pv.idPedidoVenda,
    c.cliente_nome,
    e.numero_serie,
    l.titulo AS livro,
    pv.data_transacao
FROM Pedidos_Vendas pv
JOIN Clientes c ON pv.idPedidoVenda = c.Pedidos_Vendas_idPedidoVenda
JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
JOIN Livros l ON e.isbn = l.isbn
WHERE pv.status_pedido = 'pendente';

CREATE VIEW PerformanceAutores AS
SELECT 
    a.nome AS autor,
    COUNT(DISTINCT l.isbn) AS total_livros,
    COUNT(pv.idPedidoVenda) AS vendas_totais
FROM Autores a
LEFT JOIN Livros l ON a.idAutor = l.autor_id
LEFT JOIN Exemplares e ON l.isbn = e.isbn
LEFT JOIN Pedidos_Vendas pv ON e.numero_serie = pv.exemplar_serie
GROUP BY a.nome;

CREATE VIEW VendasPorRegiao AS
SELECT 
    ce.UF,
    COUNT(pv.idPedidoVenda) AS total_vendas,
    GROUP_CONCAT(DISTINCT l.titulo SEPARATOR '; ') AS livros_vendidos
FROM Clientes_Endereco ce
JOIN Clientes c ON ce.cliente_id = c.cliente_id
JOIN Pedidos_Vendas pv ON c.Pedidos_Vendas_idPedidoVenda = pv.idPedidoVenda
JOIN Exemplares e ON pv.exemplar_serie = e.numero_serie
JOIN Livros l ON e.isbn = l.isbn
GROUP BY ce.UF;






SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
