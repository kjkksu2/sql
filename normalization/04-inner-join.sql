-- SELECT * 
-- FROM users
-- INNER JOIN addresses ON users.address_id = addresses.id;

-- SELECT users.id, first_name, last_name, street, house_number, city_id
-- FROM users
-- INNER JOIN addresses ON users.address_id = addresses.id;

SELECT users.id, first_name, last_name, street, house_number, cities.name AS city_name
FROM users
INNER JOIN addresses ON users.address_id = addresses.id
INNER JOIN cities ON addresses.city_id = cities.id
WHERE addresses.id = 1 OR addresses.id = 2
ORDER BY users.id DESC;