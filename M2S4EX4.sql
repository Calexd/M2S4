-- Criar um arquivo SQL com os seguintes procedimentos:

-- ‌

-- Encontre todos os clientes cujo nome começa com a letra 'A'.

SELECT c.id_cliente, c.nome, SUM(p.valor) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.id_cliente, c.nome

-- Calcule o valor total de pedidos para cada cliente.



select c.cliente_id, c.nome, sum(p.valor)
AS total_pedidos from clientes c join pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id, c.nome;



-- Encontre a média de idade dos clientes em cada cidade.

SELECT cidade, AVG(idade) AS media_idade
FROM clientes
GROUP BY cidade;