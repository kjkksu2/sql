-- DROP TABLE users;

-- CREATE TABLE users (
--     full_name VARCHAR(300) NOT NULL,
--     yearly_salary INT CHECK (yearly_salary > 0 AND yearly_salary < 100), -- column
--     max_salary INT,
--     CHECK (yearly_salary < max_salary) -- table
-- );

-- ALTER TABLE users
-- ADD CONSTRAINT between_yearly_salary CHECK (yearly_salary > 0 AND yearly_salary < 100),
-- ADD CONSTRAINT salary_rules CHECK(yearly_salary < max_salary);

-- ALTER TABLE users
-- ADD COLUMN max_salary INT;

-- ALTER TABLE users
-- DROP CONSTRAINT users_chk_1,
-- DROP CONSTRAINT users_chk_2;

-- ALTER TABLE users
-- DROP CONSTRAINT users_yearly_salary_check,
-- DROP CONSTRAINT users_check;


ALTER TABLE users
ADD COLUMN test VARCHAR(100) NOT NULL;