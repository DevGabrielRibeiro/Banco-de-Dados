INSERT INTO Unidades_Senac(nome, cep, email, endereco, telefone) VALUES
('Setor Comercial Sul - Jessé Freire', '70306-908', 'jesséfreire@senac.df', 'Bloco A, Setor Comercial Sul - Edifício Jessé Freire', '(61) 3226-5235'),
('Taguatinga - DF', '70.790-125', 'taguatinga@senac.df', 'Setor G Norte – QNG S/N Área Especial ', '(61) 3771 9883'),
('Setor Sul (Gama) | DF', '70.790-125', 'gama@senac.df', 'Quadra Quadra 5 Conjunto F', '(61) 3771-9813');
SELECT * FROM Unidades_Senac;

INSERT INTO Alunos(nome, cpf, email, senha, fk_id_unidade) VALUES
('Gabriel Ribeiro', '87687687687', 'bielzin.senac2024@gmail.com', 'Bielzin@678332', 1),
('Pedro Henrique', '45345345345', 'pedrin.senac2024@gmail.com', 'Pedrin@252541', 2),
('Caio Luccas', '12312312312', 'caiozin..senac2024@gmail.com', 'Caiozin@6325', 3);
SELECT * FROM Alunos;

INSERT INTO Profissionais(nome, cpf, codigo_crp, email, senha, descricao, foto, tempo_na_area) VALUES
('Dr. Douglas Mello','09898787665', 00001 ,'drdouglas@gmail.com', 'Douglas@987098', 'Psicólogo', 'Nenhum', '10 anos'),
('Dra. Luiza Santos','12345698778', 00002 ,'draluizasantos@gmail.com', 'Luiza@5210', 'Psicóloga', 'Nenhum', '03 anos'),
('Dra. Deborah Bertti','45632178963', 00003 ,'dradeborah@gmail.com', 'Deborah@652312', 'Psicóloga', 'Nenhum', '08 anos');
SELECT * FROM Profissionais;

INSERT INTO Agendamentos(fk_id_aluno, fk_id_profissional, fk_id_unidade, horario_agendamento, dia_agendamento) VALUES
(01 , 03, 02, 15:00:00, 2024-11-11),
(02 , 01, 03, 16:00:00, 2024-11-13),
(03 , 02, 01, 17:00:00, 2024-11-12);