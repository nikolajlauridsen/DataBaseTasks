CREATE TABLE Property(
PropertyID	INT					IDENTITY(1,1),
Name		NVarChar(100)		NULL,
Size		Decimal(5, 1)		NULL,
Address		NVarChar(100)		NULL,
-- PK
CONSTRAINT	PROPERTY_PK			PRIMARY KEY(PropertyID)
);