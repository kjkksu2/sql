SELECT SUM(price * billing_frequency) AS annual_revenue
FROM memberships;

SELECT CEIL(consumption)
FROM memberships;

SELECT TRUNCATE(consumption, 1)
FROM memberships;