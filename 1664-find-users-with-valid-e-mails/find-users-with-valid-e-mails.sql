-- # Write your MySQL query statement below
-- SELECT USER_ID, NAME, MAIL
-- FROM USERS
-- WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9._-]*@leetcode.com';

SELECT USER_ID, NAME, MAIL
FROM USERS
WHERE mail RLIKE '^[A-Za-z][A-Za-z0-9._-]*@leetcode\\.com$';