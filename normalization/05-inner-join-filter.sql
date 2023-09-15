SELECT users.id, first_name, last_name, street, house_number, cities.name AS city_name
FROM users
INNER JOIN addresses ON users.address_id = addresses.id
INNER JOIN cities ON addresses.city_id = cities.id
WHERE cities.name = 'Berlin' OR cities.name = 'New York'
ORDER BY cities.name DESC;