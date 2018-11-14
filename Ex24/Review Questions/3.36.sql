SELECT OwnerLastName, OwnerFirstName, OwnerEmail FROM PET_OWNER
WHERE OwnerID in 
(SELECT OwnerID from PET WHERE PetType='Cat' AND PetName = 'Teddy');