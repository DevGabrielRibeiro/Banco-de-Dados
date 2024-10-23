-- Criando a tabela de Estoque
CREATE TABLE Estoque (
	id_estoque INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    nome_produto VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL,
    preco DECIMAL (10, 2) NOT NULL,
    data_entrada DATE NOT NULL,
    descricao_produto TEXT
);

-- Criando a tabela de Clientes
CREATE TABLE Clientes (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    nome_cliente VARCHAR(100) NOT NULL, 
    telefone VARCHAR(15),
    email VARCHAR(100),
    endereco TEXT,
    data_registro DATE NOT NULL
);

-- Criando a tabela Vendas
CREATE TABLE Vendas (
	id_venda INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    data_venda DATE NOT NULL,
    total DECIMAL (10, 2) NOT NULL
);

-- Criando a tabela de Agendamentos (para serviços do petshop)
CREATE TABLE Agendamentos (
	id_pagamento INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    data_agendamento DATE NOT NULL,
    horario TIME NOT NULL,
    observacoes TEXT
);

-- Criando a tabela de Funcionários
CREATE TABLE Funcionarios (
	id_funcionario INT AUTO_INCREMENT PRIMARY KEY, -- Chave primária
    nome_funcionario VARCHAR(100) NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100),
    cargo VARCHAR(50), 
    salario DECIMAL(10, 2),
    data_contratacao DATE NOT NULL
);

-- Criando a tabela Itens_Venda para armazenar os produtos vendidos em cada venda
CREATE TABLE Itens_Venda (
	id_item_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT, -- FK para a tabela Vendas
    id_estoque INT, -- FK para a tabela Estoque (produto vendido)
    quantidade_vendida INT NOT NULL,
    preco_unitario DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_itens_venda_venda FOREIGN KEY (id_venda) REFERENCES Vendas(id_venda),
    CONSTRAINT fk_itens_venda_estoque FOREIGN KEY (id_estoque) REFERENCES  Estoque(id_estoque)
);























	
