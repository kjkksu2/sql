-- SELECT booking_date, amount_tipped
-- FROM bookings;

-- SELECT SUM(amount_tipped)
-- FROM bookings;

-- SELECT booking_date, amount_tipped, SUM(amount_tipped)
-- FROM bookings
-- GROUP BY booking_date, amount_tipped;

-- SELECT booking_date, amount_tipped, SUM(amount_tipped) 
-- OVER(PARTITION BY booking_date ORDER BY amount_tipped)
-- FROM bookings;

SELECT booking_date, amount_tipped, RANK()
OVER(PARTITION BY booking_date ORDER BY amount_tipped DESC)
FROM bookings;