CREATE TABLE SEMINAR(
	SeminarID		INT				NOT NULL IDENTITY(1,1),
	SeminarDate		DATE			NOT NULL,
	Location		Char(50)		NOT NULL,
	SeminarTitle	Char(25)		NOT NULL
	CONSTRAINT		SEMINAR_PK		PRIMARY KEY(SeminarID)
);

CREATE TABLE ZIP_CITY(
	Zip				INT				NOT NULL,
	City			Char(50)		NOT NULL,
	CONSTRAINT		ZIP_PK			PRIMARY KEY(Zip)
);

CREATE TABLE CUSTOMER(
	CustomerID		INT				NOT NULL IDENTITY(100,1),
	FirstName		Char(25)		NOT NULL,
	LastName		Char(25)		NULL,
	Street			Char(50)		NOT NULL,
	Zip				INT				NOT NULL,
	CONSTRAINT		CUSTOMER_PK		PRIMARY KEY(CustomerID),
	CONSTRAINT		ZIP_FK			FOREIGN KEY(Zip)
						REFERENCES ZIP_CITY(Zip)
						ON UPDATE CASCADE
						ON DELETE NO ACTION
);

CREATE TABLE SEMINAR_CUSTOMER(
	SeminarID		INT					NOT NULL,
	CustomerID		INT					NOT NULL,
	CONSTRAINT		SEMINAR_CUSTOMER_PK PRIMARY KEY(SeminarID, CustomerID),
	CONSTRAINT		SEMINAR_FK			FOREIGN KEY(SeminarID)
						REFERENCES SEMINAR(SeminarID)
						ON UPDATE CASCADE
						ON DELETE NO ACTION,
	CONSTRAINT		CUSTOMER_FK			FOREIGN KEY(CustomerID)
						REFERENCES CUSTOMER(CustomerID)
						ON UPDATE CASCADE
						ON DELETE NO ACTION,
);