SELECT * 
FROM users
LEFT JOIN addresses ON users.address_id = addresses.id
INNER JOIN cities ON  addresses.city_id = cities.id;


-- FROM의 table이 왼쪽, JOIN의 table이 오른쪽에 위치한다. -> addresses - users 순서
-- INNER JOIN: 왼쪽과 오른쪽 table의 공통된 column만 들어간다. -> users.address_id = addresses.id를 만족하는 요소들만 포함
-- lEFT JOIN: 왼쪽 table의 모든 column이 들어간다. -> users.address_id = addresses.id를 만족 + 만족 안하더라도 addresses의 column은 포함
-- RIGHT JOIN: 오른쪽 table의 모든 column이 들어간다. -> users.address_id = addresses.id를 만족 + 만족 안하더라도 users의 column은 포함