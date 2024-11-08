/* Agendamento de cada aluno, nome do aluno, a unidade que foi agendada, o dia e o horario do agendamento */
SELECT 
    a.nome AS nome_aluno,       
    u.nome AS nome_unidade,         
    ag.dia_agendamento,            
    ag.horario_agendamento          
FROM 
    Agendamentos ag
INNER JOIN 
    Alunos a ON ag.fk_id_aluno = a.id_aluno
INNER JOIN 
    Unidades_Senac u ON ag.fk_id_unidade = u.id_unidade;
    
/* Agendamento de cada profissional, nome do profissional, unidade, data e horario do agendamento */  
SELECT 
	p.nome AS nome_profissional,
    u.nome AS nome_unidade,
    ag.horario_agendamento,
    ag.dia_agendamento
FROM
	Agendamentos ag
INNER JOIN
	Profissionais p ON ag.fk_id_profissional = p.id_profissional
INNER JOIN
	Unidades_Senac u ON ag.fk_id_unidade = u.id_unidade;
    
/* Agendamento de cada aluno, incluindo o nome do aluno, o nome do profissional, o dia e o horario do agendamento */
SELECT 
    a.nome AS nome_aluno,
    p.nome AS nome_profissional,
    ag.horario_agendamento,
    ag.dia_agendamento
FROM 
    Agendamentos ag
INNER JOIN 
    Alunos a ON ag.fk_id_aluno = a.id_aluno
INNER JOIN 
    Profissionais p ON ag.fk_id_profissional = p.id_profissional;
    
/* A unidade em que cada aluno pertence */
SELECT 
    a.nome AS nome_aluno,
    u.nome AS nome_unidade
FROM 
    Alunos a
INNER JOIN 
    Unidades_Senac u ON a.fk_id_unidade = u.id_unidade;

/* Consulta de um profissional especifico, utilizando o nome do profissional, o nome do aluno, o dia e o horario do agendamento*/
SELECT 
    p.nome AS nome_profissional,
    a.nome AS nome_aluno,
    ag.dia_agendamento,
    ag.horario_agendamento
FROM 
    Agendamentos ag
INNER JOIN 
    Profissionais p ON ag.fk_id_profissional = p.id_profissional
INNER JOIN 
    Alunos a ON ag.fk_id_aluno = a.id_aluno
WHERE 
    p.nome = 'Dr. Douglas Mello';



