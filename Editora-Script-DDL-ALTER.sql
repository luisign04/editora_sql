USE EditoraLivros;

ALTER TABLE Autores 
ADD data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP;


ALTER TABLE Autores 
ADD data_falecimento DATE NULL DEFAULT NULL 
COMMENT 'Data do falecimento do autor' 
AFTER data_nascimento;


ALTER TABLE Departamentos 
ADD observacoes TEXT NULL AFTER responsavel;

ALTER TABLE Livros 
MODIFY num_paginas INT UNSIGNED NOT NULL;

ALTER TABLE Livros 
ADD CONSTRAINT chk_min_paginas 
CHECK (num_paginas >= 10);

ALTER TABLE Clientes 
ADD COLUMN ultima_atualizacao TIMESTAMP NULL DEFAULT NULL 
ON UPDATE CURRENT_TIMESTAMP AFTER cliente_email;

ALTER TABLE Exemplares 
ADD INDEX idx_estado_localizacao (estado, localizacao(50));

ALTER TABLE Clientes 
MODIFY COLUMN sexo ENUM('M','F','NB') CHARACTER SET utf8mb4 
COMMENT 'M-Masculino, F-Feminino, NB-Não Binário';

ALTER TABLE Exemplares 
MODIFY estado ENUM('pendente', 'enviado', 'cancelado', 'entregue', 'disponível', 'processando');


ALTER TABLE Exemplares 
ADD versao INT UNSIGNED NOT NULL DEFAULT 0 AFTER localizacao;