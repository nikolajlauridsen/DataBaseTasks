CREATE TABLE KLINIK(
	KlinikId		INT					Identity(1,1),
	Navn			NVarChar(Max)		NOT NULL,
	AdresseID		INT					NOT NULL,
	-- PK
	CONSTRAINT		KLINIK_PK			PRIMARY KEY(KlinikId),
	-- FK
	CONSTRAINT		KLINIK_ADRESSE_FK	FOREIGN KEY(AdresseID)
					REFERENCES ADRESSE(AdresseID)
					ON UPDATE CASCADE
					ON DELETE NO ACTION
);


CREATE TABLE L�GE(
	L�geId				INT					IDENTITY(1,1),
	Navn				NVarChar(Max)		NOT NULL,
	AdresseID			INT					NOT NULL,
	KlinikId			INT					NOT NULL,
	L�nId				Char(1)				NOT NULL,
	-- PK
	CONSTRAINT			L�GE_PK				PRIMARY KEY(L�geId),
	-- FK
	CONSTRAINT			KLINIK_FK			FOREIGN KEY(KlinikId)
						REFERENCES KLINIK(KlinikId)
						ON UPDATE NO ACTION 
						ON DELETE NO ACTION,

	CONSTRAINT			L�N_FK				FOREIGN KEY(L�nId)
						REFERENCES L�NRAMME(L�nID)
						ON UPDATE CASCADE
						ON DELETE NO ACTION,

	CONSTRAINT			L�GE_ADRESSE_FK		FOREIGN KEY(AdresseId)
						REFERENCES ADRESSE(AdresseID)
						ON UPDATE NO ACTION
						ON DELETE NO ACTION,
);


CREATE TABLE PATIENT(
	PatientId			INT					IDENTITY(1,1),
	Navn				NVarChar(Max)		NOT NULL,
	AdresseId			INT					NOT NULL,
	L�geId				INT					NOT NULL,
	-- PK
	CONSTRAINT			PATIENT_PK			PRIMARY KEY(PatientId),
	-- FK
	CONSTRAINT			PATIENTADRESS_FK	FOREIGN KEY(AdresseId)
						REFERENCES ADRESSE(AdresseID)
						ON UPDATE CASCADE
						ON DELETE NO ACTION,

	CONSTRAINT			L�GE_FK				FOREIGN KEY(L�geId)
						REFERENCES L�GE(L�geId)
						ON UPDATE CASCADE
						ON DELETE NO ACTION,
);

CREATE TABLE P�R�RERENDE(
	P�r�rerendeId		INT					IDENTITY(1,1),
	Navn				NVarChar(Max)		NOT NULL,
	AdresseId			INT					NOT NULL,
	-- PK
	CONSTRAINT			P�_PK				PRIMARY KEY(P�r�rerendeId),
	-- FK
	CONSTRAINT			P_ADRESS_FK			FOREIGN KEY(AdresseId)
						REFERENCES ADRESSE(AdresseID)
						ON UPDATE CASCADE
						ON DELETE NO ACTION
);

CREATE TABLE PATIENTP�R�RENDE(
	PatientP�r�rende	INT				NOT NULL,
	PatientId			INT				NOT NULL,
	P�r�rendeId			INT				NOT NULL,
	-- PK
	CONSTRAINT			PP_FK			PRIMARY KEY(PatientP�r�rende),
	-- FK
	CONSTRAINT			P�_FK			FOREIGN KEY(P�r�rendeId)
						REFERENCES P�R�RERENDE(P�r�rerendeId)
						ON UPDATE CASCADE
						ON DELETE NO ACTION,

	CONSTRAINT			PA_FK			FOREIGN KEY(PatientId)
						REFERENCES PATIENT(PatientId)
						ON UPDATE NO ACTION
						ON DELETE NO ACTION,
);

CREATE TABLE AFTALE(
	AftaleID			INT				IDENTITY(1,1),
	PatientP�r�rende	INT				NOT NULL,
	L�geId				INT				NOT NULL,
	Dato				DateTime2		NOT NULL,
	-- PK
	CONSTRAINT			AFTALE_PK		PRIMARY KEY(AftaleID),
	-- FK
	CONSTRAINT			PP_FKK			FOREIGN KEY(PatientP�r�rende)
						REFERENCES PATIENTP�R�RENDE(PatientP�r�rende),

	CONSTRAINT			L�GE2_FK			FOREIGN KEY(L�geId)
						REFERENCES L�GE(L�geId)
						ON UPDATE CASCADE
						ON DELETE NO ACTION
);
