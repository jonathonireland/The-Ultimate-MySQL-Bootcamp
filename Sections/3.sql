-- Section3.17
SHOW DATABASES;
CREATE DATABASE chicken_coop;
SHOW DATABASES;
DROP DATABASE chicken_coop;
---- SYNTAX: CREATE DATABASE <database_name>;
CREATE DATABASE soap_store;

-- Section 3.18
---- The general command for creating a database:

---- SYNTAX: CREATE DATABASE <database_name>;

---- A specific example:
CREATE DATABASE pet_shop;

-- Section 3.20
---- To drop a database:
---- SYNTAX: DROP DATABASE <database-name>;
DROP DATABASE soap_store;

-- To use a database:

---- SYNTAX: USE <database-name>;
USE pet_shop;

-- Section 3.26
---- Creating Tables:

CREATE TABLE cats (
    name VARCHAR(50),
    age INT
);
 
CREATE TABLE dogs (
    name VARCHAR(50),
    breed VARCHAR(50),
    age INT
);

-- Section 3.28
SHOW tables;

SHOW COLUMNS FROM cats;

DESC cats;

-- Section 3.30
-- To drop a table:

---- SYNTAX: DROP TABLE <table-name>;

-- To specifically drop the cats table:

DROP TABLE cats;

-- Section 3.32
-- Create the table:

---- A specific example:
CREATE DATABASE bake_shop;
USE bake_shop;

CREATE TABLE pastries
  (
    name VARCHAR(50),
    quantity INT
  );

-- View tables:

SHOW TABLES;

-- View details of pastries table:

DESC pastries;

-- Delete the whole pastries table:

DROP TABLE pastries;

