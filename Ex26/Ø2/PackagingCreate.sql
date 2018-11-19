CREATE TABLE Packaging(
PackID			INT				IDENTITY(1,1), -- Surrogate key
Type			NVarChar(50)	NOT NULL,
Size			NVarChar(50)	NOT NULL,
Amount			INT				NOT NULL,
-- PK
CONSTRAINT		PACK_PK			PRIMARY KEY(PackID)
);