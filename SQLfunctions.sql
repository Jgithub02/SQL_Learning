-- Aggregate Functions -- 

SELECT COUNT(*) FROM users; 
SELECT COUNT(*) FROM users WHERE id >= 5;

ALTER TABLE users
ADD COLUMN salary INT ;

SELECT MIN(salary) AS min_salary, MAX(salary) AS max_salary FROM users;

SELECT SUM(salary) AS total_payroll FROM users;

SELECT AVG(salary) AS avg_salary FROM users;

ALTER TABLE users
ADD COLUMN Gender  ENUM ("FEMALE", "MALE", "OTHER");

SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;

SELECT * FROM users;

INSERT INTO users VALUES 
	(1, "Jack", '2002-11-02', 60000, "Male"),
    (2, "Ranchi", '2000-08-12', 45000, "Female"),
    (4, "Suchi", '2005-04-19', 67000, "Female"),
    (6, "Alia", '2007-11-30', 55000, "Female"),
    (7, "Karan", '2001-07-07', 34000, "Male"),
    (11, "Rishi", '2000-01-12', 28000, "Male"),
    (15, "Jasica", '2004-09-23', 74000, "Other"),
    (9, "Jaydeep", '2002-02-11', 78000, "Male");
    
UPDATE users 
SET Salary = 78000
WHERE id = 9;

SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender;

SELECT name, LENGTH(name) AS name_length FROM users;

SELECT name, UPPER(name) AS uppercase_name FROM users;
SELECT name, LOWER(name) AS lowercase_name FROM users;

SELECT * FROM users;

ALTER TABLE users
ADD COLUMN email VARCHAR(100) NOT NULL;

SELECT CONCAT(name,' ', email) AS user_contact FROM users;

SELECT * FROM users;

SELECT NOW();

SELECT name, YEAR(date_of_birth) AS birth_year FROM users;
SELECT name, MONTH(date_of_birth) AS birth_month FROM users;
SELECT name, MONTHNAME(date_of_birth) AS birth_month FROM users;
SELECT name, DAY(date_of_birth) AS birth_day FROM users;

SELECT name, DATEDIFF(CURDATE(), date_of_birth) AS days_lived  FROM users;

SELECT name, TIMESTAMPDIFF(YEAR, date_of_birth, CURDATE()) AS user_age  FROM users;

-- Mathematical Functions -- 

SELECT salary,
       ROUND(salary) AS rounded,
       FLOOR(salary) AS floored,
       CEIL(salary) AS ceiled
 FROM users;
 
 SELECT id, MOD(id, 2) AS remainder FROM users; 
 
SELECT name, 
       IF(gender ='Female','Yes','No') AS is_female
FROM users;




