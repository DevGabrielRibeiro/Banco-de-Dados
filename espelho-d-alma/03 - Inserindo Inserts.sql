/* Inserindo registros na tabela Unidades_Senac*/
INSERT INTO Unidades_Senac(nome, cep, email, endereco, telefone) VALUES
('Setor Comercial Sul - Jessé Freire', '70306-908', 'jesséfreire@senac.df', 'Bloco A, Setor Comercial Sul - Edifício Jessé Freire', '(61)3226-5235'),
('Taguatinga - DF', '70790-125', 'taguatinga@senac.df', 'Setor G Norte – QNG S/N Área Especial ', '(61)3771 9883'),
('Sobradinho - DF', '73025-045', 'sobradinho@senac.df', 'Quadra 4 Conjunto E', '(61)3771-9893'),
('Ceilândia Norte - DF', '72225-014', 'ceilandianorte@senac.df', 'Quadra QNN 1 Conjunto D Ceilândia Norte', '(61)3771-9829'),
('Setor Sul (Gama) | DF', '70790-125', 'gama@senac.df', 'Quadra Quadra 5 Conjunto F', '(61)3771-9813');
/*Consultando todos os registros na tabela Unidades_Senac*/
SELECT * FROM Unidades_Senac;

/* Inserindo registros na tabela Alunos*/
INSERT INTO Alunos(nome, cpf, email, senha, fk_id_unidade) VALUES
('Gabriel Ribeiro', '87687687687', 'gabrielribeiro@gmail.com', 'Gabriel@123654', 1),
('Pedro Henrique', '45345345345', 'pedrohenrique@gmail.com', 'Pedro@789654', 2),
('Luis Castro', '14785236987', 'luiscastro@gmail.com', 'Luis@963258',3 ),
('Douglas Machado', '32654178965', 'douglasmachado@gmail.com', 'Douglas!745896', 4),
('Raissa Oliveira', '25415698741', 'raissaoliveira@gmail.com', 'Raissa#1236@98', 5),
('Maria Aparecida', '69852659872', 'mariaaparecida@gmail.com', 'Maria$$8541', 1),
('Cláudia Raia', '02145874120', 'claudiaraia@gmail.com', '@Claudia987#', 2),
('Marcos Coelho', '02102547896', 'marcoscoelho@gmail.com', 'Marcao98@#4', 3),
('Vanessa Soares', '02365201598', 'vanessasoares@gmail.com', 'Vanessinha#4@1', 4),
('Juliana Augusto', '52012541023', 'julianaaugusto@gmail.com', 'Juliana9$@', 5);
/*Consultando todos os registros na tabela Alunos*/
SELECT * FROM Alunos;

/* Inserindo registros na tabela Profissionais*/
INSERT INTO Profissionais(nome, cpf, codigo_crp, email, senha, descricao, foto, tempo_na_area) VALUES
('Dr. Douglas Mello','09898787665', 00001 ,'drdouglas@gmail.com', 'Douglas@987098', 'Psicólogo', 'Nenhum', '10 anos'),
('Dra. Luiza Santos','12345698778', 00002 ,'draluizasantos@gmail.com', 'Luiza@5210', 'Psicóloga', 'Nenhum', '03 anos'),
('Dra. Deborah Bertti','45632178963', 00003 ,'dradeborah@gmail.com', 'Deborah@652312', 'Psicóloga', 'Nenhum', '08 anos'),
('Dra. Penelope Charmosa','02365415896', 00004 ,'drapenelope@gmail.com', 'Charmosa@454#', 'Psicóloga', 'Nenhum', '06 anos'),
('Dr. Jair Ventura','03265987412', 00005 ,'drjariventura@gmail.com', 'Jair@52@10', 'Psicólogo', 'Nenhum', '04 anos');
/*Consultando todos os registros na tabela Profissionais*/
SELECT * FROM Profissionais;

/* Inserindo registros na tabela Agendamentos*/
INSERT INTO Agendamentos(fk_id_aluno, fk_id_profissional, fk_id_unidade, horario_agendamento, dia_agendamento, obs) VALUES
(01 , 04, 05, TIME("14:30:00"), '2024-11-11', 'Nenhuma observação'),
(02 , 03, 04, TIME("15:30:00"), '2024-11-11', 'Nenhuma observação'),
(03 , 05, 03, TIME("16:30:00"), '2024-11-12', 'Nenhuma observação'),
(04 , 02, 02, TIME("17:30:00"), '2024-11-12', 'Nenhuma observação'),
(05 , 01, 01, TIME("20:30:00"), '2024-11-13', 'Nenhuma observação'),
(06 , 01, 01, TIME("15:30:00"), '2024-11-14', 'Nenhuma observação'),
(07 , 02, 02, TIME("14:30:00"), '2024-11-14', 'Nenhuma observação'),
(08 , 05, 03, TIME("16:30:00"), '2024-11-14', 'Nenhuma observação'),
(09 , 04, 04, TIME("20:30:00"), '2024-11-13', 'Nenhuma observação'),
(10 , 03, 05, TIME("17:30:00"), '2024-11-12', 'Nenhuma observação');
/*Consultando todos os registros na tabela Agendamentos*/
SELECT * FROM Agendamentos;
