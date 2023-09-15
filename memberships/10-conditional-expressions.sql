SELECT amount_billed,
    (
        CASE WHEN amount_billed > 30 THEN 'Good Day'
            WHEN amount_billed > 15 THEN 'Normal Day'
            ELSE 'Bad Day'
        END
    ) AS feelings
FROM orders;

-- SELECT weekday_num,
--     CASE WHEN weekday_num = 1 THEN 'Mon'
--         WHEN weekday_num = 2 THEN 'Tue'
--         WHEN weekday_num = 3 THEN 'Wed'
--         WHEN weekday_num = 4 THEN 'Thu'
--         WHEN weekday_num = 5 THEN 'Fri'
--         WHEN weekday_num = 6 THEN 'Sat'
--         ELSE 'Sun'
--     END
-- FROM (
--     SELECT WEEKDAY(last_checkin) + 1 AS weekday_num
--     FROM memberships
-- ) AS weekday_numbers;


