SELECT OwnerLastName, OwnerFirstName, OwnerEmail, PetName, PetType, PetBreed, AverageLifeExpectancy FROM PET_OWNER as OWN 
INNER JOIN Pet as P ON OWN.OwnerID = P.OwnerId
INNER JOIN Breed as B
ON P.PetBreed = B.BreedName
WHERE P.PetBreed != 'Unknown'
