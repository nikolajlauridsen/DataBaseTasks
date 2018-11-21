CREATE PROC GetOwnerByEmail(
@FirstName char(25),
@Email varchar(100)
)
AS 
SELECT OwnerID, OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail FROM PET_OWNER
WHERE OwnerEmail = @Email AND OwnerFirstName = @FirstName
