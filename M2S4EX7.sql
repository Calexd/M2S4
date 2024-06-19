-- Criar um arquivo SQL com os seguintes procedimentos:

-- ‌

-- Função Agregada: Encontre a média de idade dos 
-- clientes que têm pedidos com valor total superior a 300,00.



SELECT AVG(c.idade) AS media_idade
FROM clientes c
JOIN pedidos p ON c.cliente_id = p.cliente_id
GROUP BY c.cliente_id
HAVING SUM(p.valor) > 300.00;


-- Subconsulta: Liste todos os produtos que foram pedidos mais de uma vez.

