-- Criar um arquivo SQL com os seguintes procedimentos:

-- ‌

-- Encontre o total de itens pedidos em cada mês.

SELECT EXTRACT(MONTH FROM p.data_pedido) AS mes,
       SUM(ip.quantidade) AS total_itens_pedidos
FROM pedidos p
LEFT JOIN itens_pedidos ip ON p.pedido_id = ip.pedido_id
GROUP BY EXTRACT(MONTH FROM p.data_pedido)
ORDER BY mes

-- Liste os clientes que não têm pedidos associados.

SELECT c.cliente_id, c.nome
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id
WHERE p.cliente_id IS NULL

-- Encontre o pedido de maior valor.


SELECT *
FROM pedidos
ORDER BY valor DESC
LIMIT 1

-- Encontre o total de itens pedidos para cada produto.


SELECT produto_id, SUM(quantidade) AS total_itens_pedidos
FROM itens_pedidos
GROUP BY produto_id;


-- Calcule a soma dos valores dos pedidos para cada cliente que tenha 
-- feito mais de um pedido.

SELECT p.cliente_id, 
       SUM(p.valor) AS soma_valores_pedidos
FROM pedidos p
GROUP BY p.cliente_id
HAVING COUNT(p.pedido_id) > 1;


-- Encontre o preço médio dos produtos em cada categoria.





-- Encontre o cliente que fez o pedido de maior valor.

SELECT c.nome AS cliente, 
       MAX(p.valor) AS maior_valor_pedido
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.cliente_id
WHERE p.valor = (SELECT MAX(valor) FROM pedidos)
GROUP BY c.nome;