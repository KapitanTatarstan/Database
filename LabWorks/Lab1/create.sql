USE master;
GO

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'MTG')
BEGIN
	ALTER DATABASE MTG SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE MTG;
END
CREATE DATABASE MTG 
GO

-- Создание базы данных


USE MTG
GO


-- Создание таблицы "художников"
CREATE TABLE A
(
	ArtistID INT NOT NULL,
	Phone VARCHAR (10),
	AName VARCHAR (30) NOT NULL,
	ASecondName VARCHAR (30) NOT NULL,
	BirthDay DATE NOT NULL
);


-- Создание таблицы "проектов"
CREATE TABLE P 
(
	ProjectID INT NOT NULL,
	StartDate DATE NOT NULL,
	FinishDate DATE NOT NULL,
	PMoney MONEY NOT NULL
);


-- Создание таблицы "карт"
CREATE TABLE C
(
	CardID INT NOT NULL,
	Number INT NOT NULL,
	CType VARCHAR(30) NOT NULL,
	TotalManaCost INT NOT NULL
);


-- Создание "родительской" таблицы
CREATE TABLE APC
(
	ID INT NOT NULL,
	Ano INT NOT NULL,
	Pno INT NOT NULL,
	Cno INT NOT NULL
);
GO