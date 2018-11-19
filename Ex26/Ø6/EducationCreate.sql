CREATE TABLE Education(
EducationID			INT				IDENTITY(1,1),
Name				NVarChar(100)	NOT NULL,
Category			NvarChar(200)	NOT NULL,
-- PK
CONSTRAINT			EDUCATION_PK	PRIMARY KEY(EducationID)
);