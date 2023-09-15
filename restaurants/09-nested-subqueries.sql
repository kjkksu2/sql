-- SELECT booking_date
-- FROM bookings
-- GROUP BY booking_date
-- HAVING SUM(amount_billed) = (
--     SELECT MIN(daily_sum)
--     FROM (
--         SELECT booking_date, SUM(amount_billed) AS daily_sum
--         FROM bookings
--         GROUP BY booking_date
--     ) AS daily_table
-- );


SELECT booking_date, amount_tipped, SUM(amount_tipped)
FROM bookings
GROUP BY booking_date, amount_tipped
ORDER BY booking_date;

SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER()
FROM bookings;

SELECT booking_date, amount_tipped, SUM(amount_tipped) OVER(PARTITION BY booking_date)
FROM bookings;