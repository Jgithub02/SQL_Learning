SELECT * FROM USERS;

RENAME TABLE USERS TO CUSTOMERS;
RENAME TABLE CUSTOMERS TO USERS;

ALTER TABLE USERS ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

ALTER TABLE USERS DROP COLUMN is_active;

ALTER TABLE USERS MODIFY COLUMN name VARCHAR(150);

ALTER TABLE USERS MODIFY COLUMN email VARCHAR(100) FIRST;

ALTER TABLE USERS MODIFY COLUMN email VARCHAR(100) AFTER NAME;

-- Inserting Data into tables 

INSERT INTO USERS VALUES
(1, "JACK", "jack011@gmail.com", "Male", "1998-12-11", DEFAULT);
SELECT * FROM USERS;
INSERT INTO users VALUES
(2, 'Alice', 'alice@example.com', 'Female', '1995-05-14', DEFAULT);
 INSERT INTO users (name, email, gender, date_of_birth) VALUES
 ('Charlie', 'charlie@example.com', 'Others', '1988-02-17');
 INSERT INTO users (name, email, gender, date_of_birth) VALUES
 ('Alisha Khan', 'alishakhan@example.com', 'Female', '1992-03-15');

-- Querying Data in MySQL using SELECT

SELECT NAME, EMAIL FROM USERS;

SELECT * FROM USERS;

SELECT * FROM USERS WHERE GENDER = 'MALE';

SELECT * FROM USERS WHERE GENDER != 'FEMALE';

SELECT * FROM USERS WHERE GENDER <> 'FEMALE';
-- LESS THAN AND GREATER THAN 
SELECT * FROM users WHERE date_of_birth < '1995-01-01';
SELECT * FROM users WHERE id > 10;
SELECT * FROM users WHERE id >= 5;
SELECT * FROM users WHERE id <= 20;

SELECT * FROM users WHERE date_of_birth IS NULL; -- NULL 
SELECT * FROM users WHERE date_of_birth IS NOT NULL; -- NOT NULL 

SELECT * FROM USERS WHERE date_of_birth BETWEEN '1990-12-31' AND '2000-12-31'; -- BETWEEN 

SELECT * FROM USERS WHERE GENDER IN ('MALE', 'OTHERS');

-- LIKE 
SELECT * FROM USERS WHERE NAME LIKE "A%";
SELECT * FROM USERS WHERE NAME LIKE "%a";
SELECT * FROM USERS WHERE NAME LIKE "%li%";

-- AND/OR 
SELECT * FROM users WHERE gender = 'Female' AND date_of_birth > '1990-01-01';
SELECT * FROM users WHERE gender = 'Male' OR gender = 'Others';

-- order by 
SELECT * FROM users ORDER BY date_of_birth ASC;
SELECT * FROM users ORDER BY name DESC;

-- limit 
SELECT * FROM users LIMIT 2; -- Top 2 rows
SELECT * FROM users LIMIT 1 OFFSET 2; -- Skip first 2 rows, then get next 1
SELECT * FROM users LIMIT 2, 4; -- Get 4 rows starting from the 3rd row (Same as above)
SELECT * FROM users ORDER BY created_at DESC LIMIT 10;

-- QUIZ
SELECT * FROM users WHERE salary > 60000 ORDER BY created_at DESC LIMIT 5;
SELECT * FROM users ORDER BY salary DESC;
SELECT * FROM users WHERE salary BETWEEN 50000 AND 70000;
-- The above query gives error as "Salary" column is not in the users table 

-- UPDATE - Modifying Existing Data
UPDATE users 
SET NAME = "Jack" 
WHERE ID = 1;
UPDATE users
SET name = 'Robert', email = 'robert@example.com'
WHERE id = 3;

-- DELETE - Removing Data from a Table

DELETE FROM USERS 
WHERE ID = 3;

-- DROP TABLE 
DROP TABLE USERS;
