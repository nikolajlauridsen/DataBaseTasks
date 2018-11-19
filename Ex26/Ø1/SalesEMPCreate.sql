CREATE TABLE SALESEMP(
TelephoneNumber			NVarChar(20)		NOT NULL,
CustomerSegment			NVarChar(50)		NOT NULL,
Budget					Money				NOT NULL,
-- PK
CONSTRAINT				SALES_PK			PRIMARY KEY(TelephoneNumber),
-- FK
CONSTRAINT				SALE_EMPLOYEE_FK	FOREIGN KEY(TelephoneNumber)
						REFERENCES EMPLOYEE(TelephoneNumber)
);