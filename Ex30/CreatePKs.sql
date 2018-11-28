CREATE TABLE ADRESSE(
	AdresseID		Int					Identity(1,1),
	Gade			NVarChar(Max)		NOT NULL,
	PostNr			NVarChar(Max)		NOT NULL,
	ByNavn			NVarChar(Max)		NOT NULL
	-- PK
	CONSTRAINT		ADRESSE_PK			PRIMARY KEY(AdresseID)
);

CREATE TABLE L�NRAMME(
	L�nID			Char(1)				NOT NULL,
	TimeL�n			Money				NOT NULL,
	-- PK
	CONSTRAINT		L�NRAMME_PK			PRIMARY KEY(L�nID)
);