SET FOREIGN_KEY_CHECKS = 0;
-- Alterando a tabela Vendas para adicionar as FKs
ALTER TABLE Vendas
	ADD COLUMN id_cliente INT, -- FK para a tabela Clientes
    ADD COLUMN id_funcionario INT, -- FK para a tabela Funcionarios
    ADD INDEX idx_id_xliente (id_cliente), -- Índice para a FK
    ADD INDEX idx_id_funcionario (id_funcionario), -- Índice para a FK
    ADD CONSTRAINT fk_vendas_cliente FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente),
    ADD CONSTRAINT fk_vendas_funcionario FOREIGN KEY (id_funcionario) REFERENCES Funcionarios(id_funcionario);

-- Alterando a tabela Agendamentos para adicionar as FKs   
ALTER TABLE Agendamentos
	ADD COLUMN id_cliente INT, -- FK para a tabela Clientes
	ADD COLUMN id_servico INT, -- FK para a tabela Servicos
	ADD COLUMN id_funcionario INT, -- FK para a tabela Funcionarios
	ADD INDEX idx_id_cliente_agendamento (id_cliente), -- Indice para a FK
	ADD INDEX idx_id_servico (id_servico), -- Indice para a FK
	ADD INDEX idx_id_funcionario_agendamento (id_funcionario), -- Índice para a FK
	ADD CONSTRAINT fk_agendamento_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
	ADD CONSTRAINT fk_agendamento_servico FOREIGN KEY (id_servico) REFERENCES Servicos (id_servico);
    
-- Alterando a tabela Estoque para incluir um índice (index)
ALTER TABLE Estoque
	ADD INDEX idx_nome_produto (nome_produto);

-- Alterando a tabela Clientes para incluir um índice
ALTER TABLE Clientes
	ADD INDEX idx_nome_cliente (nome_cliente);
    
-- Alterando a tabela Funcionarios para incluir um índice
ALTER TABLE Funcionarios
	ADD INDEX idx_nome_funcionario (nome_funcionario);
    

    
