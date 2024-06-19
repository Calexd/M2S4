-- Criar um arquivo SQL com os seguintes procedimentos:

-- ‌


-- Liste todos os pedidos junto com as informações dos clientes, usando um INNER JOIN.




SELECT p.pedido_id, p.data_pedido, p.valor, c.nome AS nome_cliente, c.cidade
FROM pedidos p
INNER JOIN clientes c ON p.cliente_id = c.cliente_id;


-- Faça uma consulta que retorna todos os clientes e seus pedidos, incluindo clientes
--  que não fizeram pedidos (use LEFT JOIN).


SELECT c.cliente_id, c.nome AS nome_cliente, c.cidade,
       p.pedido_id, p.data_pedido, p.valor
FROM clientes c
LEFT JOIN pedidos p ON c.cliente_id = p.cliente_id;



-- Faça uma consulta que retorna todos os produtos e seus itens pedidos, incluindo 
-- produtos que não foram pedidos (use RIGHT JOIN).


SELECT p.produto_id, p.nome_produto AS nome_produto, ip.pedido_id, ip.quantidade
FROM produtos p
RIGHT JOIN itens_pedidos ip ON p.produto_id = ip.produto_id;



-- Utilize UNION para combinar duas consultas: uma que retorna clientes de 'São Paulo' 
-- e outra que retorna clientes de 'Rio de Janeiro'.