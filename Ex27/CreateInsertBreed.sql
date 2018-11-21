CREATE PROC InsertBreed(
@Name Char(50),
@MinHeight decimal(18,1) = NULL,
@MaxWeight decimal(18,1) = NULL,
@AverageLife int = NULL
)
AS
INSERT INTO BREED VALUES (@Name, @MinHeight, @MaxWeight, @AverageLife);
