-- Criar um arquivo SQL com os seguintes procedimentos:

-- ‌

-- Insira um novo cliente na tabela clientes com os seguintes dados: 
-- nome: 'Lucas Lima', cidade: 'Salvador', idade: 29.

INSERT INTO clientes (nome, cidade, idade) VALUES
('Lucas Lima', 'Salvador', 29)

-- Atualize o campo cidade do cliente com cliente_id = 3 para 'Fortaleza'.

UPDATE clientes set cidade = 'Fortaleza' where cliente_id = 3


-- Delete todos os pedidos que têm valor inferior a 150.00.

DELETE from pedidos where valor < 150.00