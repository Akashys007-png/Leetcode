# Write your MySQL query statement below
SELECT ROUND(SUM(TIV_2016),2) AS TIV_2016
FROM INSURANCE
WHERE TIV_2015 IN (
    SELECT TIV_2015
    FROM INSURANCE
    GROUP BY TIV_2015
    HAVING COUNT(*) > 1
)
AND (LAT,LON) IN (
    SELECT LAT,LON
    FROM INSURANCE
    GROUP BY LAT,LON
    HAVING COUNT(*) = 1
)
-- SELECT ROUND(SUM(tiv_2016), 2) AS tiv_2016
-- FROM Insurance
-- WHERE tiv_2015 IN (
--     SELECT tiv_2015
--     FROM Insurance
--     GROUP BY tiv_2015
--     HAVING COUNT(*) > 1
-- )
-- AND (lat, lon) IN (
--     SELECT lat, lon
--     FROM Insurance
--     GROUP BY lat, lon
--     HAVING COUNT(*) = 1
-- )
