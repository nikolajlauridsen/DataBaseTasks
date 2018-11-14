SELECT MIN(PetWeight) as MinWeight, Max(PetWeight) as MaxWeight, AVG(PetWeight) as AvgWeight, PetBreed 
from PET
WHERE PetBreed != 'Unknown'
GROUP BY PetBreed
HAVING COUNT(*) > 1;