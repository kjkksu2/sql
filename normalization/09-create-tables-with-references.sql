-- CREATE DATABASE relations;

-- DROP TABLE IF EXISTS cities;
-- DROP TABLE IF EXISTS addresses;
-- DROP TABLE IF EXISTS users;

-- CREATE TABLE cities (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(300) NOT NULL UNIQUE
-- );

-- CREATE TABLE addresses (
--     id SERIAL PRIMARY KEY,
--     street VARCHAR(300) NOT NULL,
--     house_number VARCHAR(50) NOT NULL,
--     city_id INT NOT NULL
-- );

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT, -- PRIMARY KEY = NOT NULL + UNIQUE
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    email VARCHAR(300) NOT NULL,
    address_id INT REFERENCES addresses (id) ON DELETE CASCADE
);

-- CREATE TABLE IF NOT EXISTS users (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     email VARCHAR(300) NOT NULL,
--     -- address_id INT REFERENCES addresses (id) ON DELETE CASCADE
-- );

-- CREATE TABLE IF NOT EXISTS users (
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(300) NOT NULL,
--     last_name VARCHAR(300) NOT NULL,
--     email VARCHAR(300) NOT NULL,
--     address_id INT
--     -- CONSTRAINT constraint_address_id_fk FOREIGN KEY (address_id) REFERENCES addresses (id) ON DELETE CASCADE
-- );

