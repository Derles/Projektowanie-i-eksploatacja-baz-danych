USE Lab;
GO

CREATE TABLE dbo.Plec ([Plec] char(1) NOT NULL CONSTRAINT PKPlec PRIMARY KEY
						,[PlecOpis] nvarchar(15) NOT NULL);
GO


INSERT INTO dbo.Plec (Plec, PlecOpis) 
SELECT Plec, PlecOpis  FROM dbo.PolscyNoblisci GROUP BY Plec, PlecOpis;
GO

ALTER TABLE dbo.PolscyNoblisci DROP COLUMN PlecOpis;
GO

ALTER TABLE dbo.PolscyNoblisci ADD CONSTRAINT
	FK_PolscyNoblisci_Plec FOREIGN KEY
	(
	Plec
	) REFERENCES dbo.Plec
	(
	Plec
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 

