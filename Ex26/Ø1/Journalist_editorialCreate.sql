CREATE TABLE JOURNALIST_EDITORIAL(
TelephoneNumber			NVarChar(20)		NOT NULL,
EditorialID				int					NOT NULL,
-- PK
CONSTRAINT				JOURNAEDI_PK		PRIMARY KEY(TelephoneNumber, EditorialID),
-- FK
CONSTRAINT				JOURNALIST_FK		FOREIGN KEY(TelephoneNumber)
						REFERENCES Journalist(TelephoneNumber),

CONSTRAINT				EDIORIAL_FK			FOREIGN KEY(EditorialID)
						REFERENCES EDITORIAL(EditorialID)
);