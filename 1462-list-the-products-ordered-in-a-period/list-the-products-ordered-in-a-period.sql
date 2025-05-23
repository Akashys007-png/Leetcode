# Write your MySQL query statement below
SELECT P.PRODUCT_NAME, SUM(O.UNIT) AS UNIT
FROM PRODUCTS P
JOIN ORDERS O
ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE YEAR(O.ORDER_DATE) = 2020 AND MONTH(O.ORDER_DATE) = 2
GROUP BY P.PRODUCT_NAME
HAVING SUM(O.UNIT) >= 100;

