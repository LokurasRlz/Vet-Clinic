/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, escape_attempt, neutered, weight_kg)
VALUES
	('Agumon', date '2020-02-03', '0', 'true', '10.23'),
	('Gabumon', date '2018-11-15', '2', 'true', '8'),
	('Pikachu', date '2021-07-01', '1', 'false', '15.04'),
	('Devimon', date '2017-05-12', '5', 'true', '11');

INSERT INTO animals (name, date_of_birth, escape_attempts, neutered, weight_kg )
VALUES
  ('Charmander', '2020-2-8', 0, false, -11),
  ('Plantmon', '2021-11-15', 2, true, -5.7),
  ('Squirtle', '1993-4-2', 3, false, -12.13),
  ('Angemon', '2005-6-12', 1, true, -45),
  ('Boarmon', '2005-6-7', 7, true, 20.4),
  ('Blossom', '1998-10-13', 3, true, 17),
  ('Ditto', '2022-5-14', 4, true, 22);

INSERT INTO owners(full_name, age)
VALUES
  ('Sam Smith', 34),
  ('Jennifer Orwell', 19),
  ('Bob', 45),
  ('Melody Pond', 77),
  ('Dean Winchester', 14),
  ('Jodie Whittaker', 38);

INSERT INTO species(name)
VALUES
  ('Pokemon'),
  ('Digimon');

/*Modify your inserted animals so it includes the species_id value:
 If the name ends in "mon" it will be Digimon
 All other animals are Pokemon*/

BEGIN TRANSACTION;

UPDATE animals SET species_id = 2 WHERE name LIKE '%mon';

UPDATE animal SET species_id = 1 WHERE name NOT LIKE '%mon';

COMMIT;

/*Modify your inserted animals to include owner information (owner_id):
 Sam Smith owns Agumon.
 Jennifer Orwell owns Gabumon and Pikachu.
 Bob owns Devimon and Plantmon.
 Melody Pond owns Charmander, Squirtle, and Blossom.
 Dean Winchester owns Angemon and Boarmon.*/
BEGIN TRANSACTION;

UPDATE animal SET owners_id = 1 WHERE name = 'Agumon';

UPDATE animal SET owners_id = 2 WHERE name  = 'Gabumon' OR name ='Pikachu';

UPDATE animals SET owners_id = 3 WHERE name = 'Devimon' OR name = 'Plantmon';

UPDATE animals SET owners_id = 4 WHERE name = 'Charmander' OR name = 'Squirtle' OR name = 'Blossom';

UPDATE animals SET owners_id = 5 WHERE name = 'Angemon' OR name = 'Boarmon';

COMMIT;