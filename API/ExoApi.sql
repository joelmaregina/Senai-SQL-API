CREATE DATABASE Projetos
GO

USE Projetos
GO

CREATE TABLE Projetos (
    Id INT PRIMARY KEY IDENTITY,
    Titulo VARCHAR(150) NOT NULL,
    Status_Projeto VARCHAR (20),
	Data_Inicio VARCHAR(10),
	Tecnologia VARCHAR(25) NOT NULL
)
GO

INSERT INTO Projetos (Titulo, Status_Projeto, Data_Inicio, Tecnologia) 
VALUES ('Projeto A', 'Em curso', '06/08/2021', 'Javascript')
GO

INSERT INTO Projetos (Titulo, Status_Projeto, Data_Inicio, Tecnologia) 
VALUES ('Projeto B', 'Finalizado', '04/10/2017', 'Html/Css')
GO

INSERT INTO Projetos (Titulo, Status_Projeto, Data_Inicio, Tecnologia) 
VALUES ('Projeto C', 'Em planejamento', '06/06/2022', 'Angular')
GO

SELECT Id, Titulo, Status_Projeto, Data_Inicio, Tecnologia FROM Projetos
GO

CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Senha VARCHAR(120) NOT NULL,
	Tipo CHAR(1) NOT NULL
)
GO

INSERT INTO Usuarios VALUES ('email@sp.br', '1234', '0')
GO


SELECT * FROM Usuarios WHERE email = 'email@sp.br' AND senha = '1234'
GO

DROP DATABASE Projetos



