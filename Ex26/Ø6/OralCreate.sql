CREATE TABLE Oral(
ExamID				INT					NOT NULL,
PreparationTime		Decimal(3,2)		NOT NULL,
ExaminationTime		Decimal(3,2)		NOT NULL,
Aids				NVarChar(500)		NOT NULL,
-- PK
CONSTRAINT			ORAL_PK				PRIMARY KEY(ExamID),
-- FK
CONSTRAINT			ORAL_FK				FOREIGN KEY(ExamID)
					REFERENCES Exam(ExamID)
);