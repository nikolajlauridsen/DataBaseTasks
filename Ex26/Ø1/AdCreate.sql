CREATE TABLE AD(
AdID					INT					Identity(1,1),
TelephoneNumber			NVarChar(20)		NOT NULL,
Customer				NVarChar(50)		NOT NULL,
Size					NVarChar(50)		NOT NULL,
Price					Money				NOT NULL,
-- PK
CONSTRAINT				AD_PK				PRIMARY KEY(AdID),
-- FK
CONSTRAINT				SALESEMP_FK			FOREIGN KEY(TelephoneNumber)
						REFERENCES SALESEMP(TelephoneNumber)
);