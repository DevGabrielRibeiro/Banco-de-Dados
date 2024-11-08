/* Criando a tabela Unidades_Senac*/
CREATE TABLE Unidades_Senac (
    id_unidade INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    email VARCHAR(50) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

/* Criando a tabela Alunos*/
CREATE TABLE Alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    cpf VARCHAR(13) UNIQUE NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(30) NOT NULL,
    fk_id_unidade INT NOT NULL,
    FOREIGN KEY (fk_id_unidade) REFERENCES Unidades_Senac(id_unidade)
);

/* Criando a tabela Profissionais*/
CREATE TABLE Profissionais (
    id_profissional INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    cpf VARCHAR(13) UNIQUE NOT NULL,
    codigo_crp INT UNIQUE NOT NULL,
    email VARCHAR(50) NOT NULL,
    senha VARCHAR(40) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    foto VARCHAR(255) NOT NULL,
    tempo_na_area VARCHAR(20) NOT NULL
);

/* Criando a tabela Agendamentos*/
CREATE TABLE Agendamentos (
    id_agendamento INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    fk_id_aluno INT NOT NULL,
    fk_id_profissional INT NOT NULL,
    fk_id_unidade INT NOT NULL,
    horario_agendamento TIME NOT NULL,
    dia_agendamento DATE NOT NULL,
    FOREIGN KEY (fk_id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (fk_id_profissional) REFERENCES Profissionais(id_profissional),
    FOREIGN KEY (fk_id_unidade) REFERENCES Unidades_Senac(id_unidade)
);
