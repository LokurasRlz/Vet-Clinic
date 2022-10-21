/* Database schema to keep the structure of entire database. */

CREATE TABLE animals
(
    id integer NOT NULL,
    "name"  character varying,
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg decimal,
    PRIMARY KEY (id)
);

ALTER TABLE animals
ADD COLUMN species VARCHAR;

CREATE TABLE owners(
  id BIGSERIAL PRIMARY KEY NOT NULL,
  full_name varchar(100) NOT NULL,
  age int NOT NULL
);

CREATE TABLE species(
  id bigsERIAL PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL
);

ALTER TABLE animals DROP COLUMN species;

ALTER TABLE animals ADD species varchar(100);

ALTER TABLE animals ADD species_id BIGINt REFERENCES species(id);

ALTER TABLE animals ADD owners_id BIGINT REFERENCES owners(id);