CREATE TABLE Employees(
Name		NVarChar(100)		NULL,
Address		NVarChar(100)		NULL,
Zipcode		INT					NULL,
Department	NVarChar(50)		NULL,
TelephoneNo	NVarChar(20)		NOT NULL,
-- PK
CONSTRAINT	Employ_PK			PRIMARY KEY(TelephoneNo)
);