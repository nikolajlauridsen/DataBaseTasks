CREATE TABLE EMPLOYEE(
Name			Nvarchar(50)		NOT NULL,
Address			Nvarchar(50)		Null,
Zipcode			Nvarchar(20)		Null,
City			Nvarchar(50)		Null,
TelephoneNumber	NvarChar(20)		NOT Null,
Department		NvarChar(50)		NOT NULL,
--
CONSTRAINT		EMPLOYEE_PK			PRIMARY KEY(TelephoneNumber)
);