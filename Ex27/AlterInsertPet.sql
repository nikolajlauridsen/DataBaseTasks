ALTER PROC InsertPet(
	@PetName	char(25)		= 'No name',
	@PetType	char(25)		= 'Dog',
	@PetBreed	char(25)		= 'Unknown',
	@PetDOB		date			= NULL,
	@PetWeight  decimal(18,1)	= 0.0,
	@OwnerId	int
)
AS 
INSERT INTO PET (PetName, PetType, PetBreed, PetDOB, PetWeight, OwnerId)
VALUES (@PetName, @PetType,@PetBreed, @PetDOB, @PetWeight, @OwnerId);