ALTER TABLE PET 
ADD CONSTRAINT BREED_FK FOREIGN KEY(PetBreed)
REFERENCES BREED(BreedName);