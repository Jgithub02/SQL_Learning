CREATE TABLE users (
	id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL);
    CREATE TABLE address (
	id INT PRIMARY KEY,
    user_id INT ,
    city VARCHAR(100) NOT NULL);
    
INSERT INTO users VALUES
	(1, "Arav"),
    (2, "Ragav"),
    (3, "Naman"),
    (4, "Arshi"),
    (5, "Ravi");
    
INSERT INTO address VALUES
	(1, 1, "Mumbai"),
    (2, 2, "kochi"),
    (3, 4, "Jaipur"),
    (4, 7, "Dehli"),
    (5, 3, "Ranchi"); 
    
SELECT *  FROM users;
SELECT *  FROM address;

INSERT INTO address VALUES
    (7, 4, "Bangalore"),
    (6, 7, "Dehli NCR"),
    (9, 3, "Jammu");

-- SQL Joins -- 

SELECT users.name, address.city
FROM users 
INNER JOIN address ON users.id = address.id;

-- Only matching rows from both tables --

SELECT users.name, address.city
FROM users 
LEFT JOIN address ON users.id = address.id;

-- All rows from left table + matching from right--

SELECT users.name, address.city
FROM users 
RIGHT JOIN address ON users.id = address.id;

--  All rows from right table + matching from left --

-- SQL UNION and UNION ALL --

DROP TABLE users;
DROP TABLE address;

SELECT * FROM users;

CREATE TABLE admin_users (
 id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    gender ENUM('Male', 'Female', 'Others'),
    date_of_birth DATE,
    created_at timestamp default current_timestamp
 );
 
 INSERT INTO admin_users (id, name, email, gender, date_of_birth, created_at) VALUES
 (101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', DEFAULT),
 (102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', DEFAULT),
 (103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', DEFAULT),
 (104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', DEFAULT);

SELECT * FROM users;
SELECT * FROM admin_users;

SELECT * FROM users
UNION
SELECT * FROM admin_users; -- UNION combine the result sets of two or more SELECT statements. It removes duplicates by default.

SELECT name FROM users
UNION ALL
SELECT name FROM admin_users; -- UNION ALL keep duplicate rows \

SELECT name, created_at FROM users
UNION
SELECT name, created_at FROM admin_users;

 SELECT name, 'User' AS role FROM users
 UNION
 SELECT name, 'Admin' AS role FROM admin_users;
 
 SELECT name FROM users
 UNION
 SELECT name FROM admin_users
 ORDER BY name;
 
SELECT name, 'User' AS role FROM users
UNION
SELECT name, 'Admin' AS role FROM admin_users
ORDER BY name ;

-- Self JOIN in MySQL -- 

 ALTER TABLE users
 ADD COLUMN referred_by_id INT;

 SELECT * FROM users; 

UPDATE users SET referred_by_id = 1 WHERE id IN (2,4);
UPDATE users SET referred_by_id = 2 WHERE id = 3;

SELECT a.id, a.name as user_name, b.name as referred_by
FROM users a 
INNER JOIN users b 
ON b.id = a.referred_by_id;




