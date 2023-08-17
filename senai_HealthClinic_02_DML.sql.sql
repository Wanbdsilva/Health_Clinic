INSERT INTO TipoDeUsuario (NomeTipoDeUsuario)
VALUES ('Administrador'), ('Comum')

INSERT INTO Usuario (IdTipoDeUsuario, Nome, Email, Senha)
VALUES (2, 'Wanderson', 'Wanderson@gmail.com', '1234'),
		(1, 'Tioki', 'Tioki@gmail.com', '12345')

INSERT INTO Especialidade (NomeEspecialidade)
VALUES ('Pediatra')

INSERT INTO Clinica (Endereco, CNPJ, NomeFantasia, RazaoSocial)
VALUES ('Rua Tres-N22', '12345678912345', 'HealtClinic', 'Clinica Medica Healt')

INSERT INTO Medico (IdClinica, IdEspecialidade, IdUsuario, Nome, CRM)
VALUES (1, 1, 2, 'Tioki', '123456CRM/SP')

INSERT INTO Paciente (IdUsuario, Nome, DataNascimento, Telefone, CPF)
VALUES (1, 'Wanderson', '16/05/2023', '11 1234-5678', '12345678910')

INSERT INTO Consulta (IdPaciente, IdMedico, DataConsulta, Horario, Prontuario)
VALUES (1, 1, '22-08-2023', '15:00', 'Paciente declarou dor de cabeca apos examinado foi constatado que nao era nada de grave')

INSERT INTO Comentario (IdConsulta, IdPaciente, Descricao, Exibe)
VALUES (1, 1, 'Atendimento otimo, medico atencioso e ajudou com minhas dores', 0)



SELECT 
	Consulta.IdConsulta,
	Consulta.DataConsulta,
	Consulta.Horario,
	Clinica.NomeFantasia,
	Consulta.Prontuario,
	Paciente.Nome,
	Medico.Nome,
	Medico.IdEspecialidade,
	Medico.CRM,
	Comentario.Descricao
FROM
	Consulta
INNER JOIN Clinica ON Clinica.IdClinica = Clinica.IdClinica
INNER JOIN Medico ON Medico.IdMedico = Medico.IdMedico
INNER JOIN Paciente ON Paciente.IdPaciente = Paciente.Nome
INNER JOIN Comentario ON Comentario.IdComentario = Comentario.Descricao















SELECT * FROM TipoDeUsuario
SELECT * FROM Usuario
SELECT * FROM Especialidade
SELECT * FROM Clinica
SELECT * FROM Medico
SELECT * FROM Paciente
SELECT * FROM Consulta
SELECT * FROM Comentario