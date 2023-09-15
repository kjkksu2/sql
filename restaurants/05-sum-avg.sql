-- SELECT SUM(amount_billed) FROM bookings;
-- SELECT AVG(num_guests) FROM bookings; -- 3.8000
-- SELECT ROUND(AVG(num_guests)) FROM bookings; -- 4
-- SELECT ROUND(AVG(num_guests), 2) FROM bookings; -- 2번째 자리까지 반올림 -> 3.80

-- SELECT booking_date, COUNT(booking_date)
-- FROM bookings
-- WHERE amount_billed > 30
-- GROUP BY booking_date;


SELECT booking_date, COUNT(booking_date)
FROM bookings
GROUP BY booking_date
HAVING SUM(amount_billed) > 40;

 