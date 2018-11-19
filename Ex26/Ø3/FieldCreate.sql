CREATE TABLE Field(
FieldID			INT					IDENTITY(1,1),
Location		NVarChar(100)		Null,
Size			Decimal(5,2)		Null,
SoilQuality		INT					Null,
PropertyID		INT					NOT NULL,
-- PK
CONSTRAINT		FIELD_PK			PRIMARY KEY(FieldID),
-- FK
CONSTRAINT		PROPERTY_FK			FOREIGN KEY(PropertyID)
				REFERENCES			Property(PropertyID)
);