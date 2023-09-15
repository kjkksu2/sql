CREATE INDEX salaryidx ON users (salary)
WHERE salary > 12000;

-- index table 사용
SELECT * FROM addresses
WHERE street = 'Teststreet';

SELECT * FROM addresses
WHERE street = 'Teststreet' AND city = 'Munich';

-- index table 사용 안함
SELECT * FROM addresses
WHERE city = 'Munich';