SELECT * FROM users
WHERE id = 3
UNION
SELECT * FROM users
WHERE id = 1
ORDER BY id;

-- JOIN은 column 병합, 
-- UNION은 row 병합 -> 병합하려면 column의 개수가 같아야 한다.