-- 3. Criando Tabelas
CREATE TABLE Paciente (
	paciente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    endereco TEXT,
    email VARCHAR(100)
);

CREATE TABLE Dentista (
	dentista_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(50),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Consulta (
	consulta_id INT AUTO_INCREMENT PRIMARY KEY,
    paciente_id INT,
    dentista_id INT,
    data_consulta DATETIME,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(paciente_id),
    FOREIGN KEY (dentista_id) REFERENCES Dentista(dentista_id)
);

CREATE TABLE Tratamento (
	tratamento_id INT AUTO_INCREMENT PRIMARY KEY,
    consulta_id INT,
    descricao TEXT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (consulta_id) REFERENCES Consulta(consulta_id)
);

CREATE TABLE Procedimento (
	procedimento_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    custo DECIMAL(10,2) NOT NULL
);

CREATE TABLE Tratamento_Procedimento (
	tratamento_id INT,
    procedimento_id INT,
    quantidade INT DEFAULT 1,
    PRIMARY KEY (tratamento_id, procedimento_id),
    FOREIGN KEY (tratamento_id) REFERENCES Tratamento(tratamento_id),
    FOREIGN KEY (procedimento_id) REFERENCES Procedimento(procedimento_id)
);

CREATE TABLE Pagamento (
	pagamento_id INT AUTO_INCREMENT PRIMARY KEY,
    tratamento_id INT,
    valor DECIMAL(10,2) NOT NULL,
    data_pagamento DATE,
    FOREIGN KEY (tratamento_id) REFERENCES Tratamento(tratamento_id)
);