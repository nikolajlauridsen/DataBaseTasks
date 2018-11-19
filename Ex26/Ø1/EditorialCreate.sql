CREATE TABLE EDITORIAL(
EditorialID			Int				Identity(1,1),
Title				Nvarchar(50)	NOT NULL,
Priority			Int				NOT NULL,
--
CONSTRAINT			EDITORIAL_PK	PRIMARY KEY(EditorialID)
);