
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
CREATE TABLE dbo.Tmp_Uzytkownicy
	(
	Id smallint NOT NULL IDENTITY (1, 1),
	Nazwa nvarchar(50) NULL,
	Plec char(1) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Uzytkownicy SET (LOCK_ESCALATION = TABLE)
GO
SET IDENTITY_INSERT dbo.Tmp_Uzytkownicy OFF
GO
IF EXISTS(SELECT * FROM dbo.Uzytkownicy)
	 EXEC('INSERT INTO dbo.Tmp_Uzytkownicy (Nazwa, Plec)
		SELECT Nazwa, Plec FROM dbo.Uzytkownicy WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Uzytkownicy
GO
EXECUTE sp_rename N'dbo.Tmp_Uzytkownicy', N'Uzytkownicy', 'OBJECT' 
GO
ALTER TABLE dbo.Uzytkownicy ADD CONSTRAINT
	PK_Uzytkownicy PRIMARY KEY CLUSTERED 
	(
	Id
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT
