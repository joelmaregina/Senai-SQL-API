--DDL
CREATE DATABASE RpgOnline1
GO

USE RpgOnline1
GO

CREATE TABLE Usuarios(
	UserId INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(35) NOT NULL
)
GO

CREATE TABLE Classes(
	ClassId INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50) UNIQUE NOT NULL,
	Descricao VARCHAR(255)
)
GO

CREATE TABLE Personagens(
	PersonagemId INT PRIMARY KEY IDENTITY,
	NomePersonagens VARCHAR(20) UNIQUE NOT NULL,
	UsuarioId INT UNIQUE FOREIGN KEY REFERENCES Usuarios(UserId),
	ClasseID INT FOREIGN KEY REFERENCES Classes(ClassId)
)
GO

CREATE TABLE Habilidades(
	HabilidadeId INT PRIMARY KEY IDENTITY,
	NomeHabilidade VARCHAR(50) UNIQUE NOT NULL
)
GO

CREATE TABLE ClasseHabilidade(
	ClasseId INT FOREIGN KEY REFERENCES Classes(ClassId),
	HabilidadeId INT FOREIGN KEY REFERENCES Habilidades(HabilidadeId) 
)

--DML
INSERT INTO Usuarios VALUES ('email@email.com', '061606')
INSERT INTO Classes VALUES ('Bárbaro', 'Descrição do Bárbaro')
INSERT INTO Habilidades VALUES ('Lança Mortal'), ('Escudo Supremo')
INSERT INTO Personagens (NomePersonagens, UsuarioId, ClasseID) VALUES ('DeuBug', 1, 1)
INSERT INTO ClasseHabilidade (ClasseId, HabilidadeId) VALUES (1, 1), (1, 2)

INSERT INTO Usuarios VALUES ('email2@email.com', '080910')
INSERT INTO Classes VALUES ('Monge', 'Descrição do Monge')
INSERT INTO Habilidades VALUES ('Recuperar Vida')
INSERT INTO Personagens (NomePersonagens, UsuarioId, ClasseID) VALUES ('BitBug', 2, 2)
INSERT INTO ClasseHabilidade (ClasseId, HabilidadeId) VALUES (2, 2), (2, 3)

UPDATE Usuarios
SET Senha = '061606'
WHERE UserId = 1

--DQL
SELECT * FROM Habilidades

SELECT P.NomePersonagens, C.Nome 'Classe', C.Descricao, U.Email FROM Personagens P 
JOIN Classes C
ON P.ClasseId = C.ClassId
JOIN Usuarios U 
ON P.ClasseId = U.UserId