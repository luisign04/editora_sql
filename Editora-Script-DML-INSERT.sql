USE EditoraLivros; 


INSERT INTO Areas_Conhecimento (id_AreasConhecimento, descricao) 
VALUES
(1101, 'Literatura Brasileira'),
(1102, 'Realismo Mágico'),
(1107, 'Regionalismo Universal'),
(1109, 'Teatro Popular'),
(1111, 'Modernismo'),
(1112, 'Literatura Feminista'),
(1114, 'Literatura Social');

INSERT INTO Autores (idAutor, nome, biografia, nacionalidade, data_nascimento, data_falecimento) VALUES
(1001, 'Machado de Assis', 'Fundador da Academia Brasileira de Letras e maior nome do Realismo brasileiro.','Brasileira', '1839-06-21', '1908-09-29'),
(1002, 'Clarice Lispector', 'Autora de "A Hora da Estrela", ícone da literatura modernista brasileira.','Brasileira', '1920-12-10', '1977-12-09'),
(1003, 'Jorge Amado', 'Autor de "Capitães da Areia", retratou a cultura baiana em suas obras.','Brasileira', '1912-08-10', '2001-08-06'),
(1004, 'Rachel de Queiroz', 'Primeira mulher a ingressar na Academia Brasileira de Letras.','Brasileira', '1910-11-17', '2003-11-04'),
(1005, 'Guimarães Rosa', 'Autor de "Grande Sertão: Veredas", revolucionou a linguagem literária.','Brasileira', '1908-06-27', '1967-11-19'),
(1006, 'Cecília Meireles', 'Poetisa modernista, autora de "Romanceiro da Inconfidência".','Brasileira', '1901-11-07', '1964-11-09'),
(1007, 'Carlos Drummond de Andrade', 'Um dos principais poetas da segunda geração do Modernismo.','Brasileira', '1902-10-31', '1987-08-17'),
(1008, 'Monteiro Lobato', 'Pioneiro da literatura infantil brasileira com o Sítio do Picapau Amarelo.','Brasileira', '1882-04-18', '1948-07-04'),
(1009, 'Lygia Fagundes Telles', 'Autora de "As Meninas", premiada com o Camões em 2005.','Brasileira', '1923-04-19', '2022-04-03'),
(1010, 'Paulo Coelho', 'Autor de "O Alquimista", um dos escritores mais traduzidos do mundo.','Brasileira', '1947-08-24', NULL),
(1011, 'Ariano Suassuna', 'Autor de "Auto da Compadecida", expoente da cultura nordestina.','Brasileira', '1927-06-16', '2014-07-23'),
(1012, 'Conceição Evaristo', 'Representante da literatura afro-brasileira contemporânea.','Brasileira', '1946-11-29', NULL),
(1013, 'Lima Barreto', 'Importante escritor pré-modernista, autor de "Triste Fim de Policarpo Quaresma".','Brasileira', '1881-05-13','1922-11-01'),
(1014, 'Rubem Fonseca', 'Mestre do conto e romance policial, autor de "A Grande Arte".','Brasileira', '1925-05-11', '2020-04-15'),
(1015, 'Ana Maria Machado', 'Autora de literatura infantil e primeira brasileira na Academia de Letras.','Brasileira', '1941-12-24', NULL);

INSERT INTO Departamentos(idDepartamento, nome, descricao, responsavel) VALUES 
(201, 'Editorial', 'Responsável pela revisão e edição de textos', 'Carlos Albuquerque'),
(202, 'Marketing', 'Divulgação de obras e campanhas promocionais', 'Ana Beatriz Rocha'),
(203, 'Financeiro', 'Gestão de orçamento e custos editoriais', 'Pedro Henrique Costa'),
(204, 'Recursos Humanos', 'Recrutamento e gestão de colaboradores', 'Juliana Vasconcelos'),
(205, 'Tecnologia', 'Desenvolvimento de sistemas e plataformas digitais', 'Ricardo Oliveira'),
(206, 'Vendas', 'Comercialização de livros e negociações', 'Fernanda Lima'),
(207, 'Design', 'Criação de capas e diagramação', 'Gabriel Souza'),
(208, 'Jurídico', 'Contratos e direitos autorais', 'Amanda Rocha'),
(209, 'Logística', 'Distribuição e armazenamento de exemplares', 'Lucas Mendes'),
(210, 'Produção', 'Impressão e acabamento de livros', 'Roberto Castro'),
(211, 'Atendimento', 'Suporte a clientes e livrarias', 'Patrícia Nunes'),
(212, 'Pesquisa', 'Análise de mercado literário', 'Rodrigo Pereira'),
(213, 'Tradução', 'Adaptação de obras para outros idiomas', 'Camila Dias'),
(214, 'Qualidade', 'Controle de padrões editoriais', 'Marcos Antônio'),
(215, 'Eventos', 'Organização de lançamentos e feiras', 'Isabela Costa');

INSERT INTO Exemplares (numero_serie, isbn, estado, localizacao)
VALUES
('SN-001', '978-853590', 'disponível', 'Estoque SP'),
('SN-002', '978-853591', 'disponível', 'Estoque RJ'),
('SN-003', '978-853592', 'enviado', 'Estoque MG'),
('SN-004', '978-853593', 'cancelado', 'Estoque BA'),
('SN-005', '978-853594', 'entregue', 'Estoque SP'),
('SN-006', '978-853595', 'pendente', 'Estoque RJ'),
('SN-007', '978-853596', 'enviado', 'Estoque ES'),
('SN-008', '978-853597', 'pendente', 'Estoque RS'),
('SN-009', '978-853598', 'entregue', 'Estoque PR'),
('SN-010', '978-853599', 'pendente', 'Estoque SC'),
('SN-016', '978-853590', 'disponível', 'Estoque SP'),
('SN-017', '978-853591', 'disponível', 'Estoque RJ'),
('SN-018', '978-853592', 'enviado', 'Estoque MG'),
('SN-019', '978-853593', 'cancelado', 'Estoque BA'),
('SN-020', '978-853594', 'entregue', 'Estoque SP'),
('SN-021', '978-853595', 'pendente', 'Estoque RJ'),
('SN-022', '978-853596', 'enviado', 'Estoque ES'),
('SN-023', '978-853597', 'pendente', 'Estoque RS'),
('SN-024', '978-853598', 'entregue', 'Estoque PR'),
('SN-025', '978-853599', 'pendente', 'Estoque SC'),
('SN-026', '978-853590', 'disponível', 'Estoque SP'),
('SN-027', '978-853591', 'disponível', 'Estoque RJ'),
('SN-028', '978-853592', 'enviado', 'Estoque MG'),
('SN-029', '978-853593', 'cancelado', 'Estoque BA'),
('SN-030', '978-853594', 'entregue', 'Estoque SP');

INSERT INTO Pedidos_Vendas (idPedidoVenda, cliente_id, data_transacao, status_pedido, exemplar_serie) VALUES 
(10016, 518, NOW(), 'completo', 'SN-016'),
(10017, 519, NOW(), 'processando', 'SN-017'),
(10018, 520, NOW(), 'enviado', 'SN-018'),
(10019, 521, NOW(), 'cancelado', 'SN-019'),
(10020, 522, NOW(), 'completo', 'SN-020'),
(10021, 523, NOW(), 'pendente', 'SN-021'),
(10022, 524, NOW(), 'entregue', 'SN-022'),
(10023, 525, NOW(), 'processando', 'SN-023'),
(10024, 526, NOW(), 'enviado', 'SN-024'),
(10025, 527, NOW(), 'completo', 'SN-025'),
(10026, 528, NOW(), 'processando', 'SN-026'),
(10027, 529, NOW(), 'enviado', 'SN-027'),
(10028, 530, NOW(), 'completo', 'SN-028'),
(10029, 531, NOW(), 'cancelado', 'SN-029'),
(10030, 532, NOW(), 'pendente', 'SN-030');



INSERT INTO Clientes(cliente_id, CPF_CNPJ, cliente_nome, sexo, cliente_telefone, cliente_email, Pedidos_Vendas_idPedidoVenda) VALUES
(518, '11122233344', 'Mariana Costa', 'F', '11988776655', 'mariana.costa@email.com', 10016),
(519, '22233344455', 'Rafael Martins', 'M', '21977665544', 'rafael.martins@email.com', 10017),
(520, '33344455566', 'Fernanda Oliveira', 'F', '31966554433', 'fernanda.oliveira@email.com', 10018),
(521, '44455566677', 'Lucas Pereira', 'M', '41955443322', 'lucas.pereira@email.com', 10019),
(522, '55566677788', 'Juliana Santos', 'F', '51944332211', 'juliana.santos@email.com', 10020),
(523, '66677788899', 'Gustavo Lima', 'M', '61933221100', 'gustavo.lima@email.com', 10021),
(524, '77788899900', 'Amanda Rocha', 'F', '71922110099', 'amanda.rocha@email.com', 10022),
(525, '88899900011', 'Diego Almeida', 'M', '81911009988', 'diego.almeida@email.com', 10023),
(526, '99900011122', 'Patrícia Souza', 'F', '11900998877', 'patricia.souza@email.com', 10024),
(527, '00011122233', 'Rodrigo Ferreira', 'M', '21999887766', 'rodrigo.ferreira@email.com', 10025),
(528, '12398765432', 'Carolina Gomes', 'F', '31988776655', 'carolina.gomes@email.com', 10026),
(529, '23487654321', 'Bruno Ribeiro', 'M', '41977665544', 'bruno.ribeiro@email.com', 10027),
(530, '34576543210', 'Isabela Dias', 'F', '51966554433', 'isabela.dias@email.com', 10028),
(531, '45665432109', 'Vinícius Castro', 'M', '61955443322', 'vinicius.castro@email.com', 10029),
(532, '56754321098', 'Larissa Nunes', 'NB', '71944332211', 'larissa.nunes@email.com', 10030);


INSERT INTO Livros (isbn, titulo, editora, data_publicacao, num_paginas, descricao, autor_id, area_conhecimento_id, Pedidos_Vendas_idPedidoVenda) VALUES 
('978-853590', 'Dom Casmurro', 'FTD', '1899-01-01', 256, 'Clássico da literatura brasileira sobre ciúme e ambiguidade', 1001, 1101, 10016), -- Alterado para 10016
('978-853591', 'Capitães da Areia', 'Companhia das Letras', '1937-01-01', 320, 'Romance sobre menores abandonados em Salvador', 1003, 1101, 10017), -- Alterado para 10017
('978-853592', 'Grande Sertão: Veredas', 'Nova Fronteira', '1956-01-01', 624, 'Obra-prima do regionalismo universal', 1005, 1107, 10018), -- Alterado para 10018
('978-853593', 'A Hora da Estrela', 'Rocco', '1977-01-01', 88, 'Último romance de Clarice Lispector', 1002, 1111, 10019), -- Alterado para 10019
('978-853594', 'Vidas Secas', 'Record', '1938-01-01', 176, 'Retrato cru da vida no sertão nordestino', 1013, 1101, 10020), -- Alterado para 10020
('978-853595', 'O Alquimista', 'HarperCollins', '1988-01-01', 208, 'Fábula espiritual sobre seguir sonhos', 1010, 1102, 10021), -- Alterado para 10021
('978-853596', 'Memórias Póstumas de Brás Cubas', 'Penguin', '1881-01-01', 240, 'Romance inovador do Realismo brasileiro', 1001, 1101, 10022), -- Alterado para 10022
('978-853597', 'As Meninas', 'Companhia das Letras', '1973-01-01', 312, 'Retrato feminino durante a ditadura militar', 1009, 1112, 10023), -- Alterado para 10023
('978-853598', 'Auto da Compadecida', 'Nova Fronteira', '1955-01-01', 160, 'Clássico do teatro popular nordestino', 1011, 1109, 10024), -- Alterado para 10024
('978-853599', 'Quarto de Despejo', 'Ática', '1960-01-01', 192, 'Diário de uma favelada na São Paulo dos anos 1950', 1012, 1114, 10025); -- Alterado para 10025


INSERT INTO Funcionarios(idFuncionario, nome, cargo, telefone, departamento_id, Livros_isbn, Pedidos_Vendas_idPedidoVenda) VALUES 
(701, 'Carlos Silva', 'Editor Chefe', '11987654321', 201, '978-853590', 10016), -- Ajustado para 10016
(702, 'Ana Souza', 'Gerente de Marketing', '21987654321', 202, '978-853591', 10017), -- Ajustado para 10017
(703, 'Pedro Costa', 'Analista Financeiro', '31987654321', 203, '978-853592', 10018), -- Ajustado para 10018
(704, 'Juliana Almeida', 'Recrutadora', '41987654321', 204, '978-853593', 10019), -- Ajustado para 10019
(705, 'Ricardo Oliveira', 'Desenvolvedor', '51987654321', 205, '978-853594', 10020), -- Ajustado para 10020
(706, 'Fernanda Lima', 'Vendedora Sênior', '61987654321', 206, '978-853595', 10021), -- Ajustado para 10021
(707, 'Gabriel Souza', 'Designer Gráfico', '71987654321', 207, '978-853596', 10022), -- Ajustado para 10022
(708, 'Amanda Rocha', 'Advogada', '81987654321', 208, '978-853597', 10023), -- Ajustado para 10023
(709, 'Lucas Mendes', 'Coordenador de Logística', '91987654321', 209, '978-853598', 10024), -- Ajustado para 10024
(710, 'Roberto Castro', 'Operador de Impressão', '11987654322', 210, '978-853599', 10025), -- Ajustado para 10025
(711, 'Patrícia Nunes', 'Atendente', '21987654322', 211, '978-853590', 10026), -- ISBN corrigido para existente
(712, 'Rodrigo Pereira', 'Pesquisador', '31987654322', 212, '978-853591', 10027), -- ISBN corrigido para existente
(713, 'Camila Dias', 'Tradutora', '41987654322', 213, '978-853592', 10028), -- ISBN corrigido para existente
(714, 'Marcos Antônio', 'Auditor', '51987654322', 214, '978-853593', 10029), -- ISBN corrigido para existente
(715, 'Isabela Costa', 'Tradutora', '61987654322', 213, '978-853594', 10030); -- ISBN corrigido para existente

INSERT INTO Funcionarios_Endereco(funcionario_id, UF, cidade, bairro, rua, CEP, comp) VALUES
(701, 'SP', 'São Paulo', 'Jardins', 'Avenida Paulista', '01311000', 'Apto 102'),
(702, 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua Barata Ribeiro', '22011000', NULL),
(703, 'MG', 'Belo Horizonte', 'Savassi', 'Rua Pernambuco', '30130010', 'Sala 305'),
(704, 'PR', 'Curitiba', 'Batel', 'Avenida do Batel', '80420000', 'Bloco B'),
(705, 'RS', 'Porto Alegre', 'Moinhos de Vento', 'Rua Padre Chagas', '90570040', NULL),
(706, 'DF', 'Brasília', 'Asa Sul', 'CLS 203', '70200000', 'Loja 12'),
(707, 'BA', 'Salvador', 'Barra', 'Avenida Oceânica', '40140130', 'Cobertura'),
(708, 'PE', 'Recife', 'Boa Viagem', 'Avenida Conselheiro Aguiar', '51021020', NULL),
(709, 'CE', 'Fortaleza', 'Meireles', 'Avenida Santos Dumont', '60150160', 'Apto 801'),
(710, 'SC', 'Florianópolis', 'Centro', 'Rua Felipe Schmidt', '88010000', 'Andar 3'),
(711, 'GO', 'Goiânia', 'Setor Marista', 'Rua 9', '74180090', NULL),
(712, 'AM', 'Manaus', 'Adrianópolis', 'Avenida Mário Ypiranga', '69057020', 'Casa 5'),
(713, 'ES', 'Vitória', 'Praia do Canto', 'Rua Aristóbulo Barbosa Leão', '29055450', NULL),
(714, 'PA', 'Belém', 'Nazaré', 'Travessa Quintino Bocaiúva', '66035190', 'Fundos'),
(715, 'RN', 'Natal', 'Ponta Negra', 'Avenida Engenheiro Roberto Freire', '59090400', 'Apto 1201');


INSERT INTO Palavras_Chave (id_PalavraChave, descricao) VALUES 
(301, 'Modernismo'),
(302, 'Realismo'),
(303, 'Romance Histórico'),
(304, 'Ficção Distópica'),
(305, 'Poesia Concreta'),
(306, 'Literatura Infantojuvenil'),
(307, 'Drama Existencial'),
(308, 'Suspense Psicológico'),
(309, 'Fantasia Épica'),
(310, 'Crítica Literária'),
(311, 'Literatura Afro-Brasileira'),
(312, 'Realismo Mágico'),
(313, 'Biografia Autorizada'),
(314, 'Literatura de Viagens'),
(315, 'Ficção Política');

INSERT INTO Livros_PalavrasChave(livro_isbn, palavra_chave_id) VALUES
('978-853590', 301), -- Dom Casmurro -> Modernismo
('978-853591', 303), -- Capitães da Areia -> Romance Histórico
('978-853592', 305), -- Grande Sertão: Veredas -> Poesia Concreta
('978-853593', 307), -- A Hora da Estrela -> Drama Existencial
('978-853594', 302), -- Vidas Secas -> Realismo
('978-853595', 312), -- O Alquimista -> Realismo Mágico
('978-853596', 301), -- Memórias Póstumas -> Modernismo
('978-853597', 311), -- As Meninas -> Literatura Afro-Brasileira
('978-853598', 308), -- Auto da Compadecida -> Suspense Psicológico
('978-853599', 314); -- Quarto de Despejo -> Literatura de Viagens

INSERT INTO Clientes_Endereco(cliente_id, UF, cidade, bairro, rua, CEP, comp) VALUES
(518, 'SP', 'São Paulo', 'Jardins', 'Avenida Paulista', '01311000', 'Apto 102'),
(519, 'RJ', 'Rio de Janeiro', 'Copacabana', 'Rua Barata Ribeiro', '22011000', NULL),
(520, 'MG', 'Belo Horizonte', 'Savassi', 'Rua Pernambuco', '30130010', 'Sala 305'),
(521, 'PR', 'Curitiba', 'Batel', 'Avenida do Batel', '80420000', NULL),
(522, 'RS', 'Porto Alegre', 'Moinhos de Vento', 'Rua Padre Chagas', '90570040', 'Casa 5'),
(523, 'DF', 'Brasília', 'Asa Sul', 'CLS 203', '70200000', 'Loja 12'),
(524, 'BA', 'Salvador', 'Barra', 'Avenida Oceânica', '40140130', 'Cobertura'),
(525, 'PE', 'Recife', 'Boa Viagem', 'Avenida Conselheiro Aguiar', '51021020', NULL),
(526, 'CE', 'Fortaleza', 'Meireles', 'Avenida Santos Dumont', '60150160', 'Apto 801'),
(527, 'SC', 'Florianópolis', 'Centro', 'Rua Felipe Schmidt', '88010000', 'Andar 3'),
(528, 'GO', 'Goiânia', 'Setor Marista', 'Rua 9', '74180090', NULL),
(529, 'AM', 'Manaus', 'Adrianópolis', 'Avenida Mário Ypiranga', '69057020', 'Casa 5'),
(530, 'ES', 'Vitória', 'Praia do Canto', 'Rua Aristóbulo Barbosa Leão', '29055450', NULL),
(531, 'PA', 'Belém', 'Nazaré', 'Travessa Quintino Bocaiúva', '66035190', 'Fundos'),
(532, 'RN', 'Natal', 'Ponta Negra', 'Avenida Engenheiro Roberto Freire', '59090400', 'Apto 1201');



