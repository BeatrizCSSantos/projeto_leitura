USE livraria_leitura_plus;

SELECT titulo, preco, ano_publicacao
FROM livro
WHERE preco > 30.00
ORDER BY preco DESC;

SELECT 
    l.titulo,
    e.nome AS editora,
    c.nome AS categoria,
    l.preco
FROM livro l
JOIN editora e ON l.id_editora = e.id_editora
JOIN livro_categoria lc ON l.id_livro = lc.id_livro
JOIN categoria c ON lc.id_categoria = c.id_categoria
ORDER BY l.titulo;

SELECT 
    c.nome AS categoria,
    COUNT(l.id_livro) AS quantidade_livros,
    ROUND(AVG(l.preco), 2) AS preco_medio
FROM categoria c
JOIN livro_categoria lc ON c.id_categoria = lc.id_categoria
JOIN livro l ON lc.id_livro = l.id_livro
GROUP BY c.nome
ORDER BY preco_medio DESC;

SELECT 
    p.id_pedido,
    c.nome AS cliente,
    p.data_pedido,
    p.status,
    p.valor_total,
    COUNT(ip.id_item) AS quantidade_itens
FROM pedido p
JOIN cliente c ON p.id_cliente = c.id_cliente
JOIN item_pedido ip ON p.id_pedido = ip.id_pedido
GROUP BY p.id_pedido, c.nome, p.data_pedido, p.status, p.valor_total
ORDER BY p.data_pedido DESC;

SELECT 
    l.titulo,
    e.quantidade,
    e.localizacao
FROM livro l
JOIN estoque e ON l.id_livro = e.id_livro
WHERE e.quantidade < 20
ORDER BY e.quantidade ASC;

SELECT titulo, preco, num_paginas
FROM livro
ORDER BY preco DESC
LIMIT 3;

SELECT 
    cl.nome AS cliente,
    l.titulo AS livro,
    a.nota,
    a.comentario,
    a.data_avaliacao
FROM avaliacao a
JOIN cliente cl ON a.id_cliente = cl.id_cliente
JOIN livro l ON a.id_livro = l.id_livro
WHERE a.nota >= 4
ORDER BY a.nota DESC, a.data_avaliacao DESC;
