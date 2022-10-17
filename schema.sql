/* Database schema to keep the structure of entire database. */

CREATE TABLE public."animals "
(
    id integer NOT NULL,
    "name " character varying,
    date_of_birth date,
    escape_attempts integer,
    neutered boolean,
    weight_kg numeric,
    PRIMARY KEY (id)
);

ALTER TABLE IF EXISTS public."animals "
    OWNER to postgres;
