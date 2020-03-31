CREATE DATABASE Lab;
GO

USE Lab;
GO

CREATE TABLE dbo.Uzytkownicy (Nazwa nvarchar(50), Plec char(1));
GO

INSERT INTO dbo.Uzytkownicy (Nazwa, Plec) 
VALUES (N'Maria Sk³odowska-Curie', 'K')
	,(N'Maria Sk³odowska-Curie', 'K')
	,(N'Olga Tokarczuk', 'K')
	,(N'Wis³awa Szymborska', 'K')
	,(N'Czes³aw Mi³osz', 'M')
	,(N'W³adys³aw Reymont', 'M')
	,(N'Henryk Sienkiewicz', 'M')
	,(N'Lech Wa³êsa', 'M')


