CREATE TABLE HourlyPaid(
TelephoneNo			NVarChar(20)		NOT NULL,
SalaryForTheYear	Money				NOT NULL,
TaxForTheYear		Money				NOT NULL,
WeeklyDeduction		Money				NOT NULL,
TaxPercentage		Decimal(5,5)		NOT NULL,
-- PK 
CONSTRAINT			Hourly_PK			PRIMARY KEY(TelephoneNo),
-- FK
CONSTRAINT			Emp_FK				FOREIGN KEY(TelephoneNo)
					REFERENCES Employees(TelephoneNo)
);