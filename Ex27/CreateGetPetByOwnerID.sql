ALTER PROC OwnerID(
@OwnerID int
)
AS 
SELECT PetName, PetType, PetBreed, AverageLifeExpectancy FROM PET_OWNER as owner
-- Join pets
INNER JOIN PET			as pet
ON owner.OwnerID = pet.OwnerId
-- Join breed
INNER JOIN BREED		as breed
ON breed.BreedName = pet.PetBreed
-- Where clause
WHERE @OwnerID = owner.OwnerID