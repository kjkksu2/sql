-- CREATE DATABASE sales_examples;

-- DROP table sales;

-- CREATE TABLE sales (
--     id SERIAL PRIMARY KEY,
--     date_created DATE DEFAULT CURRENT_DATE,
--     date_fulfilled DATE,
--     customer_name VARCHAR(300) NOT NULL,
--     product_name VARCHAR(300) NOT NULL,
--     volume NUMERIC(10, 3) NOT NULL CHECK (volume >= 0),
--     is_recurring BOOLEAN DEFAULT FALSE,
--     is_disputed BOOLEAN DEFAULT FALSE
-- );

-- INSERT INTO sales (customer_name, product_name, volume, is_recurring)
-- VALUES 
--     ('Markus', 'Book', 12.99, TRUE),
--     ('Company A', 'A Nice Product', 489.99, FALSE);

-- UPDATE sales
-- SET
--     product_name = "House",
--     volume = volume * 1000
-- WHERE customer_name = "Markus";

-- DELETE FROM sales
-- WHERE id = 1;

-- SELECT * FROM sales;
-- SELECT customer_name, product_name FROM sales;
-- SELECT customer_name, product_name AS my_product_name FROM sales;
-- SELECT (volume / 1000) AS customized_volume FROM sales;
-- SELECT "Hello", 15000, customer_name, product_name FROM sales;

-- SELECT * FROM sales where customer_name = "Markus";
-- SELECT * FROM sales where volume IS NULL;

-- SELECT * FROM sales WHERE volume > 100;
-- SELECT * FROM sales WHERE is_recurring IS NOT FALSE;
-- SELECT * FROM sales WHERE is_recurring <> 0; -- is_recurring != 0; 와 같다.
-- SELECT * FROM sales WHERE is_recurring = 0;

-- SELECT * FROM sales
-- WHERE (is_disputed IS TRUE) AND (volume > 5000);
-- SELECT * FROM sales
-- WHERE (is_disputed IS TRUE) OR (volume > 5000);

-- SELECT * FROM sales
-- WHERE date_created >= '2023-08-18' AND date_created <= '2024-01-01';
-- SELECT * FROM sales
-- WHERE date_created BETWEEN '2023-08-18' AND '2024-01-01';

-- SELECT * FROM sales
-- WHERE date_fulfilled IS NOT NULL;

-- SELECT * FROM sales
-- WHERE date_fulfilled - date_created < 5;

-- SELECT * FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) < 5; -- TIMESTAMP로 저장된 경우

CREATE VIEW wanted_date AS
SELECT (date_fulfilled - date_created) AS result_date FROM sales;

SELECT result_date FROM wanted_date
WHERE EXTRACT(DAY FROM result_date) < 5;

-- SELECT * FROM sales
-- WHERE is_disputed IS NOT NULL
-- ORDER BY volume DESC -- default는 ASC
-- LIMIT 10;

-- SELECT * FROM sales
-- ORDER BY volume DESC
-- LIMIT 10 -- LIMIT은 나타나는 개수
-- OFFSET 3; -- 초반 skip할 개수

-- SELECT DISTINCT customer_name FROM sales -- 중복 제거

-- SELECT customer_name, product_name
-- FROM (SELECT * FROM sales WHERE volume > 1000) AS base_result;

CREATE VIEW base_result AS SELECT * FROM sales
WHERE volume > 1000;

SELECT customer_name, product_name FROM base_result;