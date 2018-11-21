CREATE PROC GetOwnerByLastName(
@LastName char(25)
)
AS 
SELECT OwnerID, OwnerLastName, OwnerFirstName, OwnerPhone, OwnerEmail FROM PET_OWNER
WHERE OwnerLastName = @LastName
