CREATE TABLE MonthlyPaid(
SalaryForTheYear		Money			NOT NULL,
TaxForTheYear			Money			NOT NULL,
MonthlyDeduction		Money			NOT NULL,
TaxPercentage			Decimal(5,5)	NOT NULL,
TelephoneNo				NVarChar(20)	NOT NULL,
-- PK
CONSTRAINT				Monthly_PK		PRIMARY KEY(TelephoneNo),
-- FK
CONSTRAINT				Employ_FK		FOREIGN KEY(TelephoneNo)
						REFERENCES Employees(TelephoneNo)
);