# Write your MySQL query statement below
DELETE P FROM PERSON P
JOIN PERSON P2
ON P.EMAIL = P2.EMAIL WHERE P.ID > P2.ID;


-- DELETE FROM Person
-- WHERE id NOT IN (
--     SELECT MIN(id)
--     FROM Person
--     GROUP BY email
-- );