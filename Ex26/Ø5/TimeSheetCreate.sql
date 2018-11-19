CREATE TABLE TimeSheet(
SheetID			INT				IDENTITY(1,1),
Hours			Decimal(3,2)	NOT NULL,
TelephoneNo		NVarChar(20)	NOT NULL,
-- PK
CONSTRAINT		SHEET_PK		PRIMARY KEY(SheetID),
-- FK
CONSTRAINT		HOURLY_FK		FOREIGN KEY(TelephoneNo)
				REFERENCES HourlyPaid(TelephoneNo)
);
