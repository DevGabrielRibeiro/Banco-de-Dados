-- Consultas e joins
/*
	Esta consulta lista os detalhes da consultas, incluindo o nome do paciente e o nome do dentista por cada consulta.
*/
SELECT 
	c.consulta_id,
	p.nome AS paciente_nome,
	d.nome AS dentista_nome,
	c.data_consulta
FROM
	Consulta c
INNER JOIN
	Paciente p ON c.paciente_id = p.paciente_id
INNER JOIN
	Dentista d ON c.dentista_id = d.dentista_id;
    
    
/* 
	Esta consulta mostra todos os tratamentos realizados, junto com os procedimentos associados a cada tratamento e o custo total de cada procedimento.
*/
SELECT
t.tratamento_id,
t.descricao AS tratamento_descricao,
p.nome AS procedimento_nome,
tp.quantidade,
pr.custo,
(tp.quantidade * pr.custo) AS custo_total
FROM
	Tratamento t
INNER JOIN
	Tratamento_Procedimento tp ON t.tratamento_id = tp.tratamento_id
INNER JOIN
	Procedimento pr ON tp.procedimento_id = pr.procedimento_id;


/*
	Esta consulta fornece informações sobre os pagamentos efetuados, incluido o valor pago, a data do pagamento e a descrição do tratamento associado.
*/
SELECT
	p.pagamento_id,
	t.descricao AS tratamento_descricao,
	p.valor AS valor_pago,
	p.data_pagamento
FROM
	Pagamento p
INNER JOIN
	Tratamento t ON p.tratamento_id = t.tratamento_id;
