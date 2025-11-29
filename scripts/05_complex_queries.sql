USE livraria_leitura_plus;

SELECT 
    YEAR(p.data_pedido) AS ano,
    MONTH(p.data_pedido) AS mes,
    COUNT(p.id_pedido) AS total_pedidos,
    SUM(p.valor_total) AS valor_total_vendas,
    AVG(p.valor_total) AS ticket_medio
FROM pedido p
WHERE p.status = 'Entregue'
GROUP BY YEAR(p.data_pedido), MONTH(p.data_pedido)
ORDER BY ano DESC, mes DESC;

SELECT 
    l.titulo,
    e.nome AS editora,
    SUM(ip.quantidade) AS total_vendido,
    SUM(ip.quantidade * ip.preco_unitario) AS valor_total_vendas
FROM livro l
JOIN item_pedido ip ON l.id_livro = ip.id_livro
JOIN editora e ON l.id_editora = e.id_editora
JOIN pedido p ON ip.id_pedido = p.id_pedido
WHERE p.status != 'Cancelado'
GROUP BY l.id_livro, l.titulo, e.nome
ORDER BY total_vendido DESC
LIMIT 5;

SELECT 
    c.nome,
    c.email,
    COUNT(p.id_pedido) AS total_pedidos,
    SUM(p.valor_total) AS total_gasto,
    MAX(p.data_pedido) AS ultima_compra
FROM cliente c
JOIN pedido p ON c.id_cliente = p.id_cliente
WHERE p.status = 'Entregue'
GROUP BY c.id_cliente, c.nome, c.email
ORDER BY total_gasto DESC
LIMIT 10;

SELECT 
    l.titulo,
    e.quantidade,
    e.localizacao,
    CASE 
        WHEN e.quantidade = 0 THEN 'URGENTE'
        WHEN e.quantidade < 10 THEN 'BAIXO'
        WHEN e.quantidade < 20 THEN 'MEDIO'
        ELSE 'NORMAL'
    END AS status_estoque
FROM livro l
JOIN estoque e ON l.id_livro = e.id_livro
ORDER BY e.quantidade ASC;

SELECT 
    l.titulo,
    COUNT(a.id_avaliacao) AS total_avaliacoes,
    ROUND(AVG(a.nota), 2) AS media_nota,
    MIN(a.nota) AS pior_nota,
    MAX(a.nota) AS melhor_nota
FROM livro l
LEFT JOIN avaliacao a ON l.id_livro = a.id_livro
GROUP BY l.id_livro, l.titulo
HAVING total_avaliacoes > 0
ORDER BY media_nota DESC;
