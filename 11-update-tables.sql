-- ALTER TABLE employers
-- ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT; -- postgresql

ALTER TABLE employers
MODIFY COLUMN yearly_revenue FLOAT; -- mysql

-- ALTER TABLE users
-- MODIFY COLUMN full_name VARCHAR(300);