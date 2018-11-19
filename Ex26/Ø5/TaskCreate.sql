CREATE TABLE Task(
TaskID			INT				IDENTITY(1,1),
Type			NVarChar(100)	Null,
Hours			Decimal(3,2)	NOT NULL,
-- PK
CONSTRAINT		TASK_PK			PRIMARY KEY(TaskID)
);