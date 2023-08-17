SELECT 
	Consulta.IdConsulta,
	Consulta.DataConsulta,
	Consulta.Horario,
	Clinica.NomeFantasia AS Clinica,
	Consulta.Prontuario,
	Paciente.Nome AS [Nome Paciente],
	Medico.Nome AS Doutor,
	Especialidade.NomeEspecialidade AS [Especialidade],
	Medico.CRM,
	Comentario.Descricao AS FeedBack
FROM
	Consulta
INNER JOIN Clinica ON Clinica.IdClinica = Clinica.IdClinica
INNER JOIN Medico ON Medico.IdClinica = Medico.IdMedico
RIGHT JOIN Paciente ON Consulta.IdPaciente = Paciente.IdPaciente
INNER JOIN Comentario ON Comentario.IdComentario = Comentario.IdComentario
INNER JOIN Especialidade ON Medico.IdEspecialidade = Especialidade.IdEspecialidade
