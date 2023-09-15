-- DROP TABLE IF EXISTS users;
-- DROP TABLE IF EXISTS addresses;
-- DROP TABLE IF EXISTS cities;

-- CREATE TABLE users (
--     id INT PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY = NOT NULL + UNIQUE
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     email VARCHAR(300) NOT NULL,
--     address_id INT NOT NULL
-- );

-- CREATE TABLE addresses (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     street VARCHAR(300) NOT NULL,
--     house_number VARCHAR(50) NOT NULL,
--     city_id INT NOT NULL
-- );

-- CREATE TABLE cities (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(300) NOT NULL
-- );

SELECT users.id, first_name, last_name, street, house_number, cities.name AS city_name
FROM users
INNER JOIN addresses ON users.address_id = addresses.id
INNER JOIN cities ON users.id = cities.id;

-- ALTER TABLE cities
-- MODIFY COLUMN name VARCHAR(300) UNIQUE;