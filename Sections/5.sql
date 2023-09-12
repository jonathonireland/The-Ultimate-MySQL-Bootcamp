-- Section 5.57
-- Drop the current cats table (if you have one)

DROP TABLE cats;

-- Create the new cats table:

CREATE TABLE cats (
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    breed VARCHAR(100),
    age INT,
    PRIMARY KEY (cat_id)
); 
-- Insert some cats:

INSERT INTO cats(name, breed, age) 
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

-- Section 5.58
SELECT * FROM cats;

SELECT name FROM cats;

SELECT age FROM cats;

SELECT name, age FROM cats;

SELECT name, breed FROM cats;

-- Section 5.60
SELECT * FROM cats WHERE age = 4;

SELECT * FROM cats WHERE name ='Egg';

-- Section 5.62-64
SELECT cat_id FROM cats;
SELECT name, breed FROM cats;
SELECT name, age FROM cats WHERE breed = 'Tabby';
SELECT cat_id, age FROM cats WHERE age = cat_id;

-- Section 6.65
SELECT cat_id AS id, name FROM cats;

-- Section 6.67 UPDATE
UPDATE employees SET current_status='laid-off', last_name='who cares';

UPDATE cats SET age = 14 WHERE name = 'Misty';

-- Section 6.69 
SELECT * FROM cats WHERE name='Jackson'; 
 
UPDATE cats SET name='Jack' WHERE name='Jackson'; 
 
SELECT * FROM cats WHERE name='Jackson'; 
 
SELECT * FROM cats WHERE name='Jack'; 
 
SELECT * FROM cats WHERE name='Ringo'; 
 
UPDATE cats SET breed='British Shorthair' WHERE name='Ringo'; 
 
SELECT * FROM cats WHERE name='Ringo'; 
 
SELECT * FROM cats; 
 
SELECT * FROM cats WHERE breed='Maine Coon'; 
 
UPDATE cats SET age=12 WHERE breed='Maine Coon'; 
 
SELECT * FROM cats WHERE breed='Maine Coon';

-- Section 6.73 Delete
DELETE FROM cats WHERE name='Egg';

DELETE FROM employees;

-- Delete all rows in the cats table:

DELETE FROM cats;

-- Section 6.75

DELETE FROM cats WHERE age=cat_id;

DELETE FROM cats;

