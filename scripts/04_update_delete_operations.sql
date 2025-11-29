USE livraria_leitura_plus;

UPDATE livro 
SET preco = 42.90 
WHERE titulo = 'Harry Potter e a Pedra Filosofal';

UPDATE pedido 
SET status = 'Entregue' 
WHERE id_pedido = 2;

UPDATE estoque 
SET quantidade = quantidade - 2 
WHERE id_livro = 2;

UPDATE cliente 
SET endereco = 'Rua Nova, 150 - São Paulo, SP' 
WHERE email = 'maria.silva@email.com';

UPDATE avaliacao 
SET nota = 5, comentario = 'Melhorou muito minha perspectiva!' 
WHERE id_avaliacao = 4;


DELETE FROM avaliacao 
WHERE id_avaliacao = 4 AND nota < 4;

DELETE FROM item_pedido 
WHERE id_pedido IN (
    SELECT id_pedido FROM pedido WHERE status = 'Cancelado'
);

DELETE FROM categoria 
WHERE id_categoria NOT IN (
    SELECT DISTINCT id_categoria FROM livro_categoria
);

DELETE FROM cliente 
WHERE id_cliente NOT IN (
    SELECT DISTINCT id_cliente FROM pedido
) 
AND data_cadastro < '2024-01-01';

DELETE FROM livro 
WHERE id_livro NOT IN (
    SELECT DISTINCT id_livro FROM estoque WHERE quantidade > 0
) 
AND id_livro NOT IN (
    SELECT DISTINCT id_livro FROM item_pedido
);
