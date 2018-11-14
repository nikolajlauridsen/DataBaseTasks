SELECT DISTINCT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER as P_OWN
INNER JOIN PET AS P
ON P_OWN.OwnerID = P.OwnerId
INNER JOIN BREED 
ON P.PetBreed = BREED.BreedName
WHERE BREED.AverageLifeExpectancy > 15;
