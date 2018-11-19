CREATE TABLE Journalist(
Subject			Nvarchar(100)		NOT NULL,
Part_Time		Binary				NOT NULL,
TelephoneNumber	NVarChar(20)		NOT NULL,
--
CONSTRAINT		JOURNALIST_PK		PRIMARY KEY(TelephoneNumber),
CONSTRAINT		EMPLOYEE_FK			FOREIGN KEY(TelephoneNumber)
REFERENCES EMPLOYEE(TelephoneNumber)
);
