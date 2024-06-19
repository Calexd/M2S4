-- Criar um arquivo SQL com os seguintes procedimentos:


-- Exclua a tabela categorias.


-- ‌Crie uma tabela chamada categorias com as seguintes
--  colunas: categoria_id (chave primária), nome_categoria (VARCHAR(50)): 

CREATE TABLE categorias (
	categoria_id serial PRIMARY KEY,
	nome_categoria VARCHAR(50) not null
)


-- Adicione uma coluna categoria_id à tabela produtos e 

ALTER TABLE produtos add column categoria_id int 


-- crie uma chave estrangeira para a tabela categorias: 

ALTER TABLE produtos ADD CONSTRAINT id_categoria FOREIGN KEY (categoria_id) REFERENCES categorias (categoria_id)
