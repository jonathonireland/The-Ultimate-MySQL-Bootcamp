-- Section 4.35
INSERT INTO cats(name, age) 
VALUES ('Jetson', 7);

INSERT INTO cats (name, age) 
VALUES ('Blue Steele', 5);

INSERT INTO cats (name, age) 
VALUES ('Jenkins', 7);

-- Section 4.37-38
SELECT * FROM cats;

-- Section 4.39 
---- Switching order of columns
INSERT INTO cats(age, name)
VALUES (2, "BETH");

-- Section 4.40 Multi-Inserts
INSERT INTO cats(name, age)
    VALUES ('Charlie', 10),
           ('Sadie', 3),
           ('Lazy Bear', 1),
           ('Meatball', 5)
           ('Turkey', 1)
           ('Potato Face', 15);

-- Section 4.41-42 INSERT Exercise
CREATE TABLE people( 
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    age INT);

INSERT INTO people(first_name, last_name, age)
VALUES ('Tina', 'Belcher', 13);

SELECT * FROM people;

INSERT INTO people(first_name, last_name, age)
VALUES ('Bob', 'Belcher', 42);

INSERT INTO people(first_name, last_name, age)
    VALUES ('Linda', 'Belcher', 45),
           ('Phillip', 'Frond', 38),
           ('Calvin', 'Fischoeder', 70);

DROP TABLE people;

-- Section 4.43 Working with NOT NULL
DESC cats;

-- Null means value is not known 
-- Null Deos not Mean Zero
CREATE TABLE cats2(
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL
)

INSERT INTO cats2(name, age) VALUES('Bilbo',19);

-- Section 4.47
-- Define a table with a DEFAULT name specified:

CREATE TABLE cats3  (    
    name VARCHAR(20) DEFAULT 'no name provided',    
    age INT DEFAULT 99  
);
-- Notice the change when you describe the table:

DESC cats3;

-- Insert a cat without a name:

INSERT INTO cats3(age) VALUES(13);

-- Or a nameless, ageless cat:

INSERT INTO cats3() VALUES();

-- Combine NOT NULL and DEFAULT:

CREATE TABLE cats4  (    
    name VARCHAR(20) NOT NULL DEFAULT 'unnamed',    
    age INT NOT NULL DEFAULT 99 
);

-- Section 4.48
-- One way of specifying a PRIMARY KEY
CREATE TABLE unique_cats(
    cat_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100),
    age INT
);

DESC unique_cats;

-- Another option for this 
CREATE TABLE unique_cats2 (
	cat_id INT,
    name VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    PRIMARY KEY (cat_id)
);

DROP TABLE unique_cats;

CREATE TABLE unique_cats3(
    cat_id INT AUTO_INCREMENT,
    name VARCHAR(100),
    age INT, 
    PRIMARY KEY (cat_id)
);

-- Section 4.52
-- Defining employees table

CREATE TABLE employees (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed',
    PRIMARY KEY(id)
);
-- Another way of defining the primary key:
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    middle_name VARCHAR(255),
    age INT NOT NULL,
    current_status VARCHAR(255) NOT NULL DEFAULT 'employed'
);
-- A test INSERT:
INSERT INTO employees (first_name, last_name, age) VALUES ('thomas', 'chickenman', 87);

INSERT INTO employees(first_name, last_name, age) VALUES
('Dora', 'Smith', 58);