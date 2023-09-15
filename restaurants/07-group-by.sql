SELECT bookings_date, SUM(num_guests)
FROM bookings
GROUP BY booking_date;

-- GROUP BY를 사용해서 중복되는 booking_date를 없애야 SUM(num_guests)을 넣을 수 있다.
-- 그럼 아래처럼 해도 될까?
-- SELECT DISTINCT bookings_date, SUM(num_guests)
-- FROM bookings;
-- DISTINCT는 aggregation 함수를 적용하지 않고, column의 값에서의 중복만 제거한다.
-- 따라서, 위와 같은 상황에서는 GROUP BY를 사용해야 한다.

SELECT p.name, SUM(b.num_guests)
FROM payment_methods AS p
INNER JOIN bookings AS b on p.id = b.payment_id
GROUP BY p.name;

SELECT p.name, b.booking_date, SUM(b.num_guests), ROUND(AVG(amount_tipped))
FROM payment_methods AS p
INNER JOIN bookings AS b on p.id = b.payment_id
GROUP BY p.name, b.booking_date;