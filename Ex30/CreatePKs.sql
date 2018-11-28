CREATE TABLE ADRESSE(
	AdresseID		Int					Identity(1,1),
	Gade			NVarChar(Max)		NOT NULL,
	PostNr			NVarChar(Max)		NOT NULL,
	ByNavn			NVarChar(Max)		NOT NULL
	-- PK
	CONSTRAINT		ADRESSE_PK			PRIMARY KEY(AdresseID)
);

CREATE TABLE LØNRAMME(
	LønID			Char(1)				NOT NULL,
	TimeLøn			Money				NOT NULL,
	-- PK
	CONSTRAINT		LØNRAMME_PK			PRIMARY KEY(LønID)
);