USE EditoraLivros;

-- Inserção na tabela Areas_Conhecimento
INSERT INTO Areas_Conhecimento(id_AreasConhecimento, descricao) VALUES
(101, 'Literatura Brasileira'),
(102, 'Literatura Estrangeira'),
(103, 'História'),
(104, 'Filosofia'),
(105, 'Ciência'),
(106, 'Tecnologia'),
(107, 'Psicologia'),
(108, 'Biografia'),
(109, 'Medicina'),
(110, 'Ficção Científica');

-- Inserção na tabela Palavras_Chave
INSERT INTO Palavras_Chave (id_palavraChave, descricao) VALUES
(201, 'amor'),
(202, 'aventura'),
(203, 'história'),
(204, 'educacao'),
(205, 'ficção'),
(206, 'biografia'),
(207, 'ciencia'),
(208, 'tecnologia'),
(209, 'infancia'),
(210, 'filosofia');

INSERT INTO Departamentos (idDepartamento, nome, descricao, responsavel) VALUES
(301, 'traducao', 'responsável por traduzir os livros', 'Luis Augusto'),
(302, 'marketing', 'responsável pelas ações publicitárias', 'João Santana'),
(303, 'organizacao', 'responsável por organizar e diagramar os livros', 'Victor Torres'),
(304, 'financeiro', 'responsável pelas finanças da editora', 'Marina Souza'),
(305, 'editorial', 'responsável pela revisão e edição dos textos', 'Bruno Martins'),
(306, 'tecnologia', 'responsável pela infraestrutura e TI da editora', 'Carla Ribeiro'),
(307, 'juridico', 'responsável por questões legais e contratos', 'Fernanda Lima'),
(308, 'vendas', 'responsável pelas vendas e distribuição dos livros', 'Rafael Nunes'),
(309, 'relacoes publicas', 'responsável pela imagem da editora e comunicação externa', 'Isabela Dias'),
(310, 'pesquisa', 'responsável por analisar tendências e sugerir novos temas', 'Eduardo Gomes');

INSERT INTO Autores (idAutor, nome, biografia, nacionalidade, data_nascimento, estado_autor) VALUES
(111, 'Machado de Assis', 'Um dos maiores escritores brasileiros.', 'Brasileira', '1839-06-21', 'Falecido'),
(222, 'Isaac Asimov', 'Famoso autor de ficção científica.', 'Americana', '1920-01-02', 'Falecido'),
(333, 'JK Rowling', 'Criadora da série Harry Potter.', 'Britânica', '1965-07-31', 'Vivo'),
(444, 'Platão', 'Filósofo grego.', 'Grega', '0428-01-01', 'Falecido'),
(555, 'Monteiro Lobato', 'Pioneiro da literatura infantil no Brasil.', 'Brasileira', '1882-04-18', 'Falecido'),
(666, 'Stephen Hawking', 'Físico e autor de livros de ciência.', 'Britânica', '1942-01-08', 'Falecido'),
(777, 'Sigmund Freud', 'Pai da psicanálise.', 'Austríaca', '1856-05-06', 'Falecido'),
(888, 'Anne Frank', 'Autora do famoso diário.', 'Alemã', '1929-06-12', 'Falecido'),
(999, 'Carl Sagan', 'Divulgador científico.', 'Americana', '1934-11-09', 'Falecido'),
(1000, 'Paulo Freire', 'Educador brasileiro.', 'Brasileira', '1921-09-19', 'Falecido');

USE EditoraLivros;

INSERT INTO Funcionarios (idFuncionario, nome, cargo, telefone, endereco, departamento_id, email, escolaridade) values
(401, 'Mariana Alves', 'Editora Assistente', '11987654321', 'Rua dos Editores, 50', 305, 'mariana.alves@editora.com', 'Ensino Superior Completo'),
(402, 'Pedro Souza', 'Analista de Marketing Jr.', '21998765432', 'Av. das Mídias, 120', 302, 'pedro.souza@editora.com', 'Ensino Superior Incompleto'),
(403, 'Ana Clara Lima', 'Assistente de Vendas', '15976543210', 'Travessa dos Livros, 30', 308, 'ana.lima@editora.com', 'Ensino Médio Completo'),
(404, 'Ricardo Oliveira', 'Analista Financeiro', '31965432109', 'Rua das Contas, 80', 304, 'ricardo.oliveira@editora.com', 'Ensino Superior Completo'),
(405, 'Juliana Pereira', 'Designer Gráfico', '13954321098', 'Alameda dos Artistas, 15', 303, 'juliana.pereira@editora.com', 'Ensino Superior Completo'),
(406, 'Fábio Costa', 'Assistente Jurídico', '19943210987', 'Praça da Lei, 25', 307, 'fabio.costa@editora.com', 'Ensino Superior Incompleto'),
(407, 'Camila Rocha', 'Analista de RH', '27932109876', 'Rua dos Talentos, 40', 304, 'camila.rocha@editora.com', 'Ensino Superior Completo'),
(408, 'Bruno Tavares', 'Técnico de TI', '17921098765', 'Estrada da Tecnologia, 1000', 306, 'bruno.tavares@editora.com', 'Ensino Técnico Completo'),
(409, 'Isabela Santos', 'Assistente de Marketing', '22910987654', 'Rua da Propaganda, 75', 302, 'isabela.santos@editora.com', 'Ensino Superior Incompleto'),
(410, 'Lucas Ferreira', 'Editor de Texto', '16909876543', 'Avenida das Palavras, 60', 305, 'lucas.ferreira@editora.com', 'Ensino Superior Completo');

USE EditoraLivros;

USE EditoraLivros;

INSERT INTO Livros (isbn, titulo, autor_id, editora, data_publicacao, genero, num_paginas, descricao, area_conhecimento_id, idioma_livro, edicao_livro) VALUES
('978-85-0000-011-9', 'Dom Casmurro', 111, 'Editora Clássicos do Brasil', '1899-01-01', 'Romance', 256, 'Um dos maiores clássicos da literatura brasileira.', 101, 'Português', 1),
('978-85-0000-033-9', 'Quincas Borba', 111, 'Editora Clássicos do Brasil', '1899-01-01', 'Romance', 256, 'Um dos maiores clássicos da literatura brasileira.', 101, 'Português', 1),
('978-85-0000-014-9', 'O Alienista', 111, 'Editora Clássicos do Brasil', '1899-01-01', 'Romance', 256, 'Um dos maiores clássicos da literatura brasileira.', 101, 'Português', 1),
('978-05-5380-371-7', 'Eu, Robô', 222, 'Editora Ficção', '1950-12-02', 'Ficção Científica', 224, 'Uma coleção seminal de contos sobre a interação entre humanos e robôs.', 110, 'Inglês', 1),
('978-85-3253-052-4', 'Harry Potter e a Pedra Filosofal', 333, 'Editora Fantasia', '1997-06-26', 'Fantasia', 320, 'O início da mágica jornada de um jovem bruxo.', 102, 'Português', 1),
('978-85-7232-879-4', 'A República', 444, 'Editora Filosofia', '0380-01-01', 'Filosofia', 480, 'Uma das obras mais influentes da filosofia política.', 104, 'Português', 1),
('978-85-2324-891-4', 'Fedon', 444, 'Editora Filosofia', '0380-01-01', 'Filosofia', 480, 'Uma das obras mais influentes da filosofia grega.', 104, 'Português', 1),
('978-85-2504-750-2', 'Reinações de Narizinho', 555, 'Editora Infantil', '1931-01-01', 'Infantil', 160, 'As primeiras aventuras da turma do Sítio do Picapau Amarelo.', 107, 'Português', 1),
('978-85-3252-526-0', 'Uma Breve História do Tempo', 666, 'Editora Ciência', '1988-01-01', 'Ciência', 256, 'Uma exploração acessível dos mistérios do universo.', 105, 'Português', 1),
('978-85-7827-074-0', 'A Interpretação dos Sonhos', 777, 'Editora Psicologia', '1899-01-01', 'Psicologia', 600, 'A obra fundamental que introduziu as bases da psicanálise.', 107, 'Português', 1),
('978-85-0101-850-4', 'O Diário de Anne Frank', 888, 'Editora Biografias', '1947-06-25', 'Biografia', 352, 'O comovente relato do período em que uma jovem judia se escondeu dos nazistas.', 108, 'Português', 1),
('978-03-4553-943-4', 'Cosmos', 999, 'Editora Ciência', '1980-12-17', 'Ciência', 368, 'Uma exploração apaixonada e acessível do universo.', 105, 'Português', 1),
('978-85-7827-146-4', 'Pedagogia do Oprimido', 1000, 'Editora Educação', '1968-01-01', 'Educação', 256, 'Uma obra seminal sobre a filosofia da educação libertadora.', 109, 'Português', 1);

USE EditoraLivros;

INSERT INTO Exemplares (numero_serie, isbn, estado, localizacao, tipo) VALUES
('EX0001', '978-85-0000-011-9', 'disponível', 'Prateleira A1', 'Físico'),
('EX0002', '978-05-5380-371-7', 'reservado', 'Prateleira B2', 'Físico'),
('EX0003', '978-85-3253-052-4', 'disponível', 'Estante C3', 'Físico'),
('EX0004', '978-85-7232-879-4', 'disponível', 'Prateleira A2', 'Físico'),
('EX0005', '978-85-2504-750-2', 'danificado', 'Caixa de Reparos', 'Físico'),
('EX0006', '978-85-3252-526-0', 'disponível', 'Prateleira B3', 'Físico'),
('EX0007', '978-85-7827-074-0', 'reservado', 'Estante C4', 'Físico'),
('EX0008', '978-03-4553-943-4', 'disponível', 'Prateleira A3', 'Físico'),
('EX0009', '978-85-0101-850-4', 'disponível', 'Estante C5', 'Digital'),
('EX0010', '978-85-7827-146-4', 'disponível', 'Prateleira B4', 'Digital');

USE EditoraLivros;

INSERT INTO Pedidos_Vendas (cliente_nome, data_transacao, status, tipo_pagamento, observacoes, exemplar_serie) VALUES
('Carlos Mendes', '2025-04-15', 'Pago', 'Cartão de Crédito', 'Pedido entregue no endereço.', 'EX0001'),
('Ana Paula Souza', '2025-04-16', 'Pendente', 'Boleto Bancário', 'Aguardando confirmação do pagamento.', 'EX0002'),
('Ricardo Oliveira', '2025-04-17', 'Pago', 'Pix', 'Entrega expressa.', 'EX0003'),
('Mariana Alves', '2025-04-18', 'Cancelado', 'Cartão de Débito', 'Cliente desistiu da compra.', 'EX0004'),
('Fábio Costa', '2025-04-19', 'Pago', 'Transferência Bancária', 'Pedido com desconto promocional.', 'EX0005'),
('Juliana Pereira', '2025-04-20', 'Pendente', 'Cartão de Crédito', 'Aprovação pendente.', 'EX0006'),
('Bruno Tavares', '2025-04-20', 'Pago', 'Pix', 'Sem observações.', 'EX0007'),
('Isabela Santos', '2025-04-21', 'Pago', 'Cartão de Crédito', 'Cliente frequente.', 'EX0008'),
('Lucas Ferreira', '2025-04-22', 'Pago', 'Boleto Bancário', 'Pago no prazo.', 'EX0009'),
('Camila Rocha', '2025-04-23', 'Pendente', 'Pix', 'Aguardando confirmação.', 'EX0010');

USE EditoraLivros;

INSERT INTO Livros_PalavrasChave (livro_isbn, palavra_chave_id) VALUES
('978-85-0000-011-9', 201), -- Dom Casmurro: amor
('978-05-5380-371-7', 205), -- Eu, Robô: ficção
('978-05-5380-371-7', 208), -- Eu, Robô: tecnologia
('978-85-3253-052-4', 202), -- Harry Potter e a Pedra Filosofal: aventura
('978-85-3253-052-4', 205), -- Harry Potter e a Pedra Filosofal: ficção
('978-85-7232-879-4', 210), -- A República: filosofia
('978-85-2504-750-2', 209), -- Reinações de Narizinho: infancia
('978-85-2504-750-2', 202), -- Reinações de Narizinho: aventura
('978-85-3252-526-0', 207), -- Uma Breve História do Tempo: ciencia
('978-85-7827-074-0', 210), -- A Interpretação dos Sonhos: filosofia
('978-85-7827-074-0', 207), -- A Interpretação dos Sonhos: ciencia
('978-85-0101-850-4', 206), -- O Diário de Anne Frank: biografia
('978-03-4553-943-4', 207), -- Cosmos: ciencia
('978-03-4553-943-4', 208), -- Cosmos: tecnologia
('978-85-7827-146-4', 204), -- Pedagogia do Oprimido: educacao
('978-85-0000-011-9', 203), -- Dom Casmurro: história (contexto social)
('978-85-3253-052-4', 204), -- Harry Potter e a Pedra Filosofal: educação (aprendizado mágico)
('978-85-7232-879-4', 204), -- A República: educação (filosofia da educação)
('978-85-3252-526-0', 208), -- Uma Breve História do Tempo: tecnologia (implicações)
('978-03-4553-943-4', 202)  -- Cosmos: aventura (exploração espacial)
