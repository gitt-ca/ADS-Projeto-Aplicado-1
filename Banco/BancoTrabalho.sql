show databases;

use HealthFamilyCenter;

CREATE DATABASE HealthFamilyCenter;

CREATE TABLE Agendamento(
id int auto_increment not null,
datahora datetime,
titulo varchar(45),
texto varchar(45),
id_funcionario int not null,
id_paciente int not null,

primary key(id),
FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id),
FOREIGN KEY (id_paciente) REFERENCES Paciente(id)
);

CREATE TABLE Funcionario(
id int auto_increment not null,
NomeFuncionario varchar(45),
CRM varchar(45),
Especialidade varchar(45),
Funcao varchar(45),
Ativo varchar(1),
email varchar(45),

primary key(id)
);
select * from funcionario;

CREATE TABLE Paciente(
id int auto_increment not null,
NomeUsuario varchar(45),
Idade int,
CPF varchar(45),
endereco varchar(45),
email varchar(45),
telefone varchar(45),
ativo varchar(1),

primary key(id)
);

CREATE TABLE Historico(
id int auto_increment not null,
BatimentoCardiaco varchar(45),
PassosDia varchar(45),
OxigenacaoSangue varchar(45),
HorasSono varchar(45),
Data datetime,
id_paciente int not null,

primary key(id),
FOREIGN KEY (id_paciente) REFERENCES Paciente(id) 
);

CREATE TABLE Usuario(
id int auto_increment not null,
Usuario varchar(45),
Senha varchar(100),
id_paciente int not null,
id_funcionario int not null,
primary key(id),

FOREIGN KEY (id_paciente) REFERENCES Paciente(id),
FOREIGN KEY (id_funcionario) REFERENCES Funcionario(id)
);

CREATE TABLE HistoricoFisico(
id int auto_increment not null,
altura double,
peso varchar(45),
TipoSanguineo varchar(45),

primary key(id)
);


CREATE TABLE Logs(
id int,
Motivo varchar(45),
Data varchar(45),
id_usuario int not null,

 primary key(id),
FOREIGN KEY (id_usuario) REFERENCES Usuario(id)
 );

INSERT INTO Funcionario (NomeFuncionario, CRM, Especialidade, Funcao, Ativo, email)
VALUES("Welynton", "Analitico", "Pediatra", "Medico", 1, "welynton.123@gmail.com");

INSERT INTO Paciente (NomeUsuario, Idade, CPF, endereco, email, telefone, ativo)
VALUES("Gabriel", 20, "222.444.111.-99", "Rua Sete", "gabrie.l23@gmail.com", "49 1234-5678", 1);

INSERT INTO Agendamento (datahora, titulo, texto, id_funcionario, id_paciente)
VALUES('2023-7-14''14:23:00', "Consulta", "Rotina", 1, 1);

INSERT INTO Historico(BatimentoCardiaco, PassosDia, OxigenacaoSangue, HorasSono, Data, id_paciente)
VALUES("70 Bpm", "450", "95%", "8 Horas", '2023-7-14''14:23:00', 1);

INSERT INTO Usuario (Usuario, Senha, id_paciente, id_funcionario)
VALUES("Vitor", "2023", 1, 1 );

INSERT INTO HistoricoFisico (altura, peso, TipoSanguineo)
VALUES("1.80", "78kg", "O+");

INSERT INTO Logs (id, Motivo, Data, id_usuario)
VALUES(1, "Mudança", '2023-11-09', 1);

/*Funcionario*/
SELECT Funcionario.id, Funcionario.NomeFuncionario,Agendamento.datahora,Agendamento.titulo,Agendamento.texto 
FROM Agendamento
INNER JOIN Funcionario 
ON Agendamento.id_funcionario=Funcionario.id; 

/*Paciente*/
SELECT Paciente.id, Paciente.NomeUsuario, Funcionario.NomeFuncionario, Agendamento.datahora, Agendamento.titulo,Agendamento.texto 
FROM Agendamento 
INNER JOIN Funcionario 
ON Agendamento.id_funcionario=Funcionario.id 
INNER JOIN Paciente
ON Agendamento.id_paciente=Paciente.id;

/*Agendamento*/


SELECT Agendamento.id, Agendamento.datahora, Agendamento.titulo, Agendamento.texto, Funcionario.NomeFuncionario, Paciente.NomeUsuario
FROM Agendamento
INNER JOIN Funcionario
ON Funcionario.id = Agendamento.id_funcionario
INNER JOIN Paciente
ON Paciente.id = Agendamento.id_paciente;

/*Historico*/
SELECT Historico.id, Historico.BatimentoCardiaco, Historico.PassosDia, Historico.OxigenacaoSangue, Historico.HorasSono, Historico.Data, Paciente.NomeUsuario
FROM Historico
INNER JOIN Paciente
ON Paciente.id = Historico.id_paciente;

/*Usuario*/
SELECT Usuario.id, Usuario.Usuario, Usuario.Senha, Paciente.NomeUsuario, Funcionario.NomeFuncionario
FROM Usuario
INNER JOIN Paciente
ON Paciente.id = Usuario.id_paciente
INNER JOIN Funcionario
ON Funcionario.id = Usuario.id_funcionario;

/*HistoricoFisico*/
SELECT *FROM HistoricoFisico;

/*Logs*/
SELECT Logs.id, Logs.Motivo, Logs.Data, Usuario.Usuario
FROM Logs 
INNER JOIN Usuario 
ON Usuario.id = Logs.id_usuario;


show tables;

//Teste inserir usuario:
INSERT INTO Usuario (Usuario, Senha, id_paciente, id_funcionario)
VALUES("caio", "123", 1, 1 );


select * from usuario;

delete from usuario;







