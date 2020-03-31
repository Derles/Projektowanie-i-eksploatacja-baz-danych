/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_PolscyNoblisci
	(
	Id smallint NOT NULL IDENTITY (1, 1),
	Nazwisko nvarchar(25) NULL,
	Imie nvarchar(15) NULL,
	Osoba nvarchar(50) NOT NULL,
	Plec char(1) NOT NULL,
	PlecOpis nvarchar(15) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_PolscyNoblisci SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_PolscyNoblisci ON
GO
IF EXISTS(SELECT * FROM dbo.PolscyNoblisci)
	 EXEC('INSERT INTO dbo.Tmp_PolscyNoblisci (Id, Osoba, Plec, PlecOpis)
		SELECT Id, Osoba, Plec, PlecOpis FROM dbo.PolscyNoblisci WITH (HOLDLOCK TABLOCKX)')
GO
SET IDENTITY_INSERT dbo.Tmp_PolscyNoblisci OFF
GO
DROP TABLE dbo.PolscyNoblisci
GO
EXECUTE sp_rename N'dbo.Tmp_PolscyNoblisci', N'PolscyNoblisci', 'OBJECT' 
GO
ALTER TABLE dbo.PolscyNoblisci ADD CONSTRAINT
	PK_PolscyNoblisci PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT


