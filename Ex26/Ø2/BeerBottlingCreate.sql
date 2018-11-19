CREATE TABLE BeerBottling(
BottlingID			INT				Identity(1,1),
BottlingDate		Date			NOT NULL,
Amount				INT				NOT NULL,
PackID				INT				NOT NULL,
-- PK
CONSTRAINT			BOTTLING_PK		PRIMARY KEY(BottlingID),
-- FK 
CONSTRAINT			PACK_FK			FOREIGN KEY(PackID)
					REFERENCES Packaging(PackID)
);