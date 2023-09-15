-- SELECT EXTRACT(MINUTE FROM last_checkin), last_checkin
-- FROM memberships;

-- -- postgresql
-- SELECT EXTRACT(ISODOW FROM last_checkin), last_checkin -- 요일
-- FROM memberships;

-- -- mysql
-- SELECT WEEKDAY(last_checkin) + 1, last_checkin
-- FROM memberships;

-- -- mysql
-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
-- FROM memberships;

-- -- postgresql
SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
FROM memberships;

