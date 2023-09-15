-- SELECT membership_start + 7, membership_start
-- FROM memberships;

-- SELECT DATE_ADD(membership_start, INTERVAL 3 MONTH), membership_start
-- FROM memberships;

SELECT (membership_start + INTERVAL '3 MONTHS')::TIMESTAMP::DATE, membership_start
FROM memberships;