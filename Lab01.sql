CREATE DATABASE Lab;
GO

USE Lab;
GO

CREATE TABLE dbo.PolscyNoblisci (Osoba nvarchar(50), Plec char(1), PlecOpis nvarchar(15));
GO

INSERT INTO dbo.PolscyNoblisci (Osoba, Plec, PlecOpis) 
VALUES (N'Maria Sk�odowska-Curie', 'K', 'Kobieta')
	,(N'Maria Sk�odowska-Curie', 'K', 'Kobieta')
	,(N'Olga Tokarczuk', 'K', 'Kobieta')
	,(N'Wis�awa Szymborska', 'K', 'Kobieta')
	,(N'Czes�aw Mi�osz', 'M', 'M�czyzna')
	,(N'W�adys�aw Reymont', 'M', 'M�czyzna')
	,(N'Henryk Sienkiewicz', 'M', 'M�czyzna')
	,(N'Lech Wa��sa', 'M', 'M�czyzna')




