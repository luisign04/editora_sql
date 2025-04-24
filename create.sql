DROP DATABASE IF exists EditoraLivros;
CREATE DATABASE EditoraLivros;
USE EditoraLivros;

CREATE TABLE Areas_Conhecimento (
    id_AreasConhecimento INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE Palavras_Chave (
    id_palavraChave INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);

CREATE TABLE Autores (
    idAutor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    biografia TEXT,
    nacionalidade VARCHAR(50),
    data_nascimento DATE
);

CREATE TABLE Departamentos (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    responsavel VARCHAR(100)
);

CREATE TABLE Funcionarios (
    idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(50),
    telefone VARCHAR(20),
    endereco TEXT,
    departamento_id INT,
    FOREIGN KEY (departamento_id)
        REFERENCES Departamentos (idDepartamento)
);

CREATE TABLE Livros (
    isbn VARCHAR(20) PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    editora VARCHAR(100),
    data_publicacao DATE,
    genero VARCHAR(50),
    num_paginas INT,
    descricao TEXT,
    autor_id INT,
    area_conhecimento_id INT,
    FOREIGN KEY (autor_id)
        REFERENCES Autores (idAutor),
    FOREIGN KEY (area_conhecimento_id)
        REFERENCES Areas_Conhecimento (id_AreasConhecimento)
);

CREATE TABLE Exemplares (
    numero_serie VARCHAR(30) PRIMARY KEY,
    isbn VARCHAR(30),
    estado ENUM('disponível', 'reservado', 'danificado') NOT NULL,
    localizacao VARCHAR(100),
    FOREIGN KEY (isbn)
        REFERENCES Livros (isbn)
);

CREATE TABLE Pedidos_Vendas (
    idPeriodoVenda INT AUTO_INCREMENT PRIMARY KEY,
    cliente_nome VARCHAR(100),
    data_transacao DATE,
    status_pedido ENUM('pendente', 'enviado', 'cancelado', 'entregue') NOT NULL,
    pagamento_detalhes TEXT,
    exemplar_serie VARCHAR(30),
    FOREIGN KEY (exemplar_serie)
        REFERENCES Exemplares (numero_serie)
);

CREATE TABLE Livros_PalavrasChave (
    livro_isbn VARCHAR(30),
    palavra_chave_id INT,
    PRIMARY KEY (livro_isbn , palavra_chave_id),
    FOREIGN KEY (livro_isbn)
        REFERENCES Livros (isbn),
    FOREIGN KEY (palavra_chave_id)
        REFERENCES Palavras_Chave (id_palavraChave)
);