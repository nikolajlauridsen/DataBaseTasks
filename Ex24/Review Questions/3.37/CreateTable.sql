CREATE TABLE BREED(
BreedName				Char(50)		NOT NULL,
MinHeight				Decimal(18,1)	NULL,
MaxWeight				Decimal(18,1)	NULL,
AverageLifeExpectancy	INT				NULL,
CONSTRAINT				BREED_PK		PRIMARY KEY(BreedName)
);