CREATE PROC InsertOwner(
@LastName		char(25) = 'No name',
@FirstName		char(25) = 'No name',
@Phone			char(12) = NULL,
@OwnerEmail		varchar(100)
)
AS
INSERT INTO PET_OWNER VALUES (@LastName, @FirstName, @Phone, @OwnerEmail)