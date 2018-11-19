CREATE TABLE Subjects(
Title		NVarChar(100)		NOT NULL,
NoOfLessons	int					NOT NULL,
SubjectID	INT					IDENTITY(1,1),
-- PK
CONSTRAINT	INT					PRIMARY KEY(SubjectID)
);