SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER
WHERE OwnerID IN 
(SELECT OwnerID FROM PET 
WHERE PetBreed IN 
(SELECT BreedName FROM BREED
WHERE AverageLifeExpectancy > 15))