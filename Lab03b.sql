USE Lab;

UPDATE
	dbo.PolscyNoblisci 
SET
	Imie=left (Osoba,CHARINDEX(' ', Osoba))
	,Nazwisko=SUBSTRING(Osoba, CHARINDEX(' ', Osoba)+1, LEN(Osoba)- CHARINDEX(' ', Osoba)+1);
GO

ALTER TABLE dbo.PolscyNoblisci DROP COLUMN Osoba;

