CREATE DATABASE Lab;
GO

USE Lab;
GO

CREATE TABLE dbo.Uzytkownicy (Nazwa nvarchar(50), Plec char(1));
GO

INSERT INTO dbo.Uzytkownicy (Nazwa, Plec) 
VALUES (N'Maria Sk�odowska-Curie', 'K')
	,(N'Maria Sk�odowska-Curie', 'K')
	,(N'Olga Tokarczuk', 'K')
	,(N'Wis�awa Szymborska', 'K')
	,(N'Czes�aw Mi�osz', 'M')
	,(N'W�adys�aw Reymont', 'M')
	,(N'Henryk Sienkiewicz', 'M')
	,(N'Lech Wa��sa', 'M')


