CREATE DATABASE StartSQL;
USE StartSQL;
CREATE TABLE Users (
	id INT auto_increment PRIMARY KEY, 
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM("Male", "Female", "Others"),
    date_of_birth DATE,
    created_at timestamp default current_timestamp);

SELECT * FROM USERS;