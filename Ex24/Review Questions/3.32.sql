SELECT MIN(PetWeight) as MinWeight, Max(PetWeight) as MaxWeight, AVG(PetWeight) as AvgWeight, PetBreed 
from PET
GROUP BY PetBreed;