CREATE DATABASE Hackaton;

USE Hackaton;

CREATE TABLE Paciente
(
ID_Paciente	INT		PRIMARY KEY		AUTO_INCREMENT,
Nome 		VARCHAR(40),
Renda 		DECIMAL(8,2),
Sexo 		VARCHAR(1)
);

ALTER TABLE Paciente
ADD COLUMN	Idade	INT;
DESCRIBE Paciente;

INSERT INTO Paciente(Nome, Renda, Sexo, Idade)
VALUES 				('Eduardo', 5, 'M', 16);

INSERT INTO Paciente(Nome, Renda, Sexo, Idade)
VALUES 				('João', 2100, 'M', 45);

INSERT INTO Paciente(Nome, Renda, Sexo, Idade)
VALUES 				('Alan', 4600, 'M', 61);

UPDATE Paciente SET Renda = 5 WHERE ID_Paciente = 1 ;

SELECT * FROM Paciente WHERE Renda > 2000;
SELECT * FROM Paciente WHERE Sexo = 'M';
SELECT * FROM PACIENTE;

CREATE TABLE Consulta 
( 
ID_Consulta		INT 	PRIMARY KEY 	AUTO_INCREMENT,
Consulta_Data	VARCHAR(10)					
);
ALTER TABLE Consulta
ADD COLUMN	ID_Paciente  INT;

ALTER TABLE Consulta
ADD COLUMN	ID_Médico  INT;

CREATE TABLE Médico_Paciente(
ID_Paciente		INT,
ID_Médico	INT,
PRIMARY KEY (ID_Paciente,ID_Médico)
);



ALTER TABLE Consulta
ADD CONSTRAINT	FK_Médico_Paciente
FOREIGN KEY 	(ID_Paciente)
REFERENCES		Médico_Paciente(ID_Paciente);


INSERT INTO Consulta(Consulta_Data)
VALUES				('18/10/2022');

INSERT INTO Consulta(Consulta_Data)
VALUES				('21/10/2022');

INSERT INTO Consulta(Consulta_Data)
VALUES				('26/10/2022');

SELECT * FROM Consulta;


CREATE 	TABLE Médico
(
ID_Médico 		INT 	PRIMARY KEY 	AUTO_INCREMENT,
Nome			VARCHAR(40)
);

INSERT INTO Médico(Nome)
VALUES		('Gustavo');

INSERT INTO Médico(Nome)
VALUES		('João Araújo');

INSERT INTO Médico(Nome)
VALUES		('Luiz');

DELETE FROM Médico	WHERE ID_Médico = 2;
SELECT * FROM Médico;

