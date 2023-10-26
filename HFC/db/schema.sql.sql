show databases;

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
VALUES("Welynton", "CRM", "Pediatra", "Medico", 1, "welynton.123@gmail.com");

INSERT INTO Paciente (NomeUsuario, Idade, CPF, endereco, email, telefone, ativo)
VALUES("Gabriel", 20, "222.444.111.-99", "Rua Sete", "gabrie.l23@gmail.com", "49 1234-5678", 1);

INSERT INTO Agendamento (datahora, titulo, texto, id_funcionario, id_paciente)
VALUES('2023-7-14''14:23:00', "Consulta", "Rotina", 1, 1);

SELECT * FROM Agendamento;
SELECT * FROM Funcionario;


select Funcionario.NomeFuncionario,Agendamento.datahora,Agendamento.titulo,Agendamento.texto 
from Agendamento
 inner join Funcionario 
on Agendamento.id_funcionario=Funcionario.id 
where Agendamento.id=2;

select Paciente.NomeUsuario,Funcionario.NomeFuncionario,Agendamento.datahora,Agendamento.titulo,Agendamento.texto 
from Agendamento 
inner join Funcionario 
on Agendamento.id_funcionario=Funcionario.id 
inner join Paciente
on Agendamento.id_paciente=Paciente.id
where Agendamento.id=2;

select Funcionario.NomeFuncionario,funcionario.CRM,funcionario.CRM,funcionario.Especialidade,funcionario.Funcao,funcionario.email



