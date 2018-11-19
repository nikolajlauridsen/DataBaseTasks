CREATE TABLE Machine(
VIN				NVarChar(50)			NOT NULL,
Brand			NVarChar(20)			NULL,
Model			NVarChar(20)			NULL,
Year			INT						NULL,
-- PK
CONSTRAINT		MACHINE_PK				PRIMARY KEY(VIN)
);