-- Criar um arquivo SQL com os seguintes procedimentos:

-- ‌

-- Selecione todos os clientes que moram em 'São Paulo'.


SELECT * from clientes where cidade = 'São Paulo'


-- Liste todos os pedidos, ordenados pela data_pedido em ordem decrescente.

SELECT * from pedidos order by data_pedido DESC


-- Encontre todos os clientes com idade entre 25 e 35 anos.

SELECT * from clientes where idade > 25 and idade < 35

