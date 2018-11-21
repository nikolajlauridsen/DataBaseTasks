CREATE PROC InsertPet (
	@PetName	char(25),
	@PetType	char(25),
	@PetBreed	char(25),
	@PetDOB		date,
	@PetWeight  decimal(18,1),
	@OwnerId	int
)
AS 
INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerId)
VALUES (@PetName, @PetType,@PetBreed, @PetDOB, @PetWeight, @OwnerId);