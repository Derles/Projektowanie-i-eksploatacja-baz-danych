CREATE DATABASE Lab;
GO

USE Lab;
GO

CREATE TABLE dbo.PolscyNoblisci (Osoba nvarchar(50), Plec char(1), PlecOpis nvarchar(15));
GO

INSERT INTO dbo.PolscyNoblisci (Osoba, Plec, PlecOpis) 
VALUES (N'Maria Sk³odowska-Curie', 'K', 'Kobieta')
	,(N'Maria Sk³odowska-Curie', 'K', 'Kobieta')
	,(N'Olga Tokarczuk', 'K', 'Kobieta')
	,(N'Wis³awa Szymborska', 'K', 'Kobieta')
	,(N'Czes³aw Mi³osz', 'M', 'Mê¿czyzna')
	,(N'W³adys³aw Reymont', 'M', 'Mê¿czyzna')
	,(N'Henryk Sienkiewicz', 'M', 'Mê¿czyzna')
	,(N'Lech Wa³êsa', 'M', 'Mê¿czyzna')




