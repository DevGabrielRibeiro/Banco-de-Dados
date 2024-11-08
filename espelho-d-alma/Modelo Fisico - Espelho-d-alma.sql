USE espelho_d_alma;
/* Modelo Lógico - Agendamento: */
CREATE TABLE profissionais (
    id_profissional int AUTO_INCREMENT PRIMARY KEY,
    codigo_crp int,
    nome varchar(40),
    email varchar(100),
    senha varchar(40),
    descricao varchar(255),
    foto varchar(255),
    tempo_na_area varchar(20)
);

CREATE TABLE alunos (
    email varchar(100),
    senha varchar(30),
    id_aluno int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(40),
    fk_id_unidade int
);

CREATE TABLE unidade_senac (
    id_unidade int AUTO_INCREMENT PRIMARY KEY,
    cep varchar(10),
    email varchar(100),
    nome varchar(40),
    endereco varchar(100),
    telefone varchar(20)
);

CREATE TABLE agendamentos (
    fk_id_aluno int,
    fk_id_profissional int,
    fk_id_unidade int,
    id_agendamento int AUTO_INCREMENT PRIMARY KEY,
    horario_agendamento time,
    dia_agendamento date
);
 
ALTER TABLE alunos ADD CONSTRAINT FK_alunos_2
    FOREIGN KEY (fk_id_unidade)
    REFERENCES unidade_senac (id_unidade)
    ON DELETE RESTRICT;
 
ALTER TABLE agendamentos ADD CONSTRAINT FK_agendamentos_1
    FOREIGN KEY (fk_id_aluno)
    REFERENCES alunos (id_aluno)
    ON DELETE NO ACTION;
 
ALTER TABLE agendamentos ADD CONSTRAINT FK_agendamentos_2
    FOREIGN KEY (fk_id_profissional)
    REFERENCES profissionais (id_profissional)
    ON DELETE RESTRICT;
 
ALTER TABLE agendamentos ADD CONSTRAINT FK_agendamentos_4
    FOREIGN KEY (fk_id_unidade)
    REFERENCES unidade_senac (id_unidade);