USE livraria_leitura_plus;

INSERT INTO editora (nome, telefone, email, endereco) VALUES
('Editora Arqueiro', '(11) 1234-5678', 'contato@arqueiro.com.br', 'Rua das Letras, 123 - São Paulo, SP'),
('Companhia das Letras', '(11) 2345-6789', 'vendas@companhiadasletras.com.br', 'Av. Paulista, 1000 - São Paulo, SP'),
('Editora Abril', '(21) 3456-7890', 'contato@abril.com.br', 'Rua do Ouvidor, 50 - Rio de Janeiro, RJ'),
('Editora Martins Fontes', '(31) 4567-8901', 'vendas@martinsfontes.com.br', 'Av. Afonso Pena, 2000 - Belo Horizonte, MG');

INSERT INTO categoria (nome, descricao) VALUES
('Ficção Científica', 'Livros que exploram conceitos científicos e futuristas'),
('Romance', 'Narrativas focadas em relacionamentos e desenvolvimento emocional'),
('Fantasia', 'Mundos imaginários com elementos mágicos e sobrenaturais'),
('Suspense', 'Histórias que mantêm o leitor em tensão e expectativa'),
('Autoajuda', 'Livros para desenvolvimento pessoal e profissional'),
('Técnico', 'Livros especializados em áreas específicas do conhecimento');

INSERT INTO autor (nome, nacionalidade, data_nascimento) VALUES
('J.K. Rowling', 'Britânica', '1965-07-31'),
('George R.R. Martin', 'Americana', '1948-09-20'),
('Augusto Cury', 'Brasileira', '1958-10-02'),
('Andy Weir', 'Americana', '1972-06-16'),
('Clarice Lispector', 'Brasileira', '1920-12-10'),
('Isaac Asimov', 'Russa', '1920-01-02');

INSERT INTO cliente (nome, email, telefone, endereco, data_cadastro) VALUES
('Maria Silva', 'maria.silva@email.com', '(11) 99999-1234', 'Av. Brasil, 500 - São Paulo, SP', '2024-01-15'),
('João Santos', 'joao.santos@email.com', '(11) 98888-5678', 'Rua Augusta, 300 - São Paulo, SP', '2024-02-20'),
('Ana Oliveira', 'ana.oliveira@email.com', '(21) 97777-9012', 'Rua do Catete, 150 - Rio de Janeiro, RJ', '2024-03-10'),
('Pedro Costa', 'pedro.costa@email.com', '(31) 96666-3456', 'Av. do Contorno, 800 - Belo Horizonte, MG', '2024-01-28');

INSERT INTO livro (titulo, isbn, ano_publicacao, preco, edicao, num_paginas, sinopse, id_editora) VALUES
('Harry Potter e a Pedra Filosofal', '9788532530783', 1997, 39.90, '1ª Edição', 264, 'O primeiro ano de Harry Potter em Hogwarts', 1),
('O Homem de Giz', '9788551002491', 2018, 34.90, '1ª Edição', 288, 'Um thriller psicológico sobre amizade e segredos', 2),
('O Pequeno Príncipe', '9788595081512', 1943, 24.90, 'Edição Especial', 96, 'Uma fábula sobre amizade e humanidade', 3),
('Ansiedade - Como Enfrentar o Mal do Século', '9788545202082', 2013, 29.90, '2ª Edição', 192, 'Um guia para entender e controlar a ansiedade', 4),
('O Guia do Mochileiro das Galáxias', '9788578271584', 1979, 36.90, '3ª Edição', 208, 'Uma aventura cósmica e hilária pelo universo', 1);

INSERT INTO estoque (id_livro, quantidade, localizacao) VALUES
(1, 25, 'Prateleira A1'),
(2, 18, 'Prateleira B2'),
(3, 40, 'Prateleira C1'),
(4, 15, 'Prateleira A3'),
(5, 22, 'Prateleira B1');

INSERT INTO livro_autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 5),
(4, 3), 
(5, 6);

INSERT INTO livro_categoria (id_livro, id_categoria) VALUES
(1, 3), 
(2, 4),
(3, 2),
(4, 5),
(5, 1); 

INSERT INTO pedido (id_cliente, data_pedido, status, valor_total) VALUES
(1, '2024-03-01', 'Entregue', 64.80),
(2, '2024-03-05', 'Enviado', 74.80),
(3, '2024-03-10', 'Pago', 29.90);

INSERT INTO item_pedido (id_pedido, id_livro, quantidade, preco_unitario) VALUES
(1, 1, 1, 39.90), 
(1, 3, 1, 24.90),
(2, 2, 2, 34.90), 
(3, 4, 1, 29.90);

INSERT INTO avaliacao (id_cliente, id_livro, nota, comentario, data_avaliacao) VALUES
(1, 1, 5, 'Livro maravilhoso! Harry Potter é incrível!', '2024-03-03'),
(1, 3, 4, 'Encantador, mas mais curto do que esperava', '2024-03-04'),
(2, 2, 5, 'Suspense do início ao fim, recomendo!', '2024-03-08'),
(3, 4, 3, 'Bom conteúdo, mas poderia ser mais profundo', '2024-03-12');
