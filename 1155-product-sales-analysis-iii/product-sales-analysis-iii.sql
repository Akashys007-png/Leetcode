WITH SALEPRODUCT AS (
    SELECT PRODUCT_ID,
    MIN(YEAR) AS FIRST_YEAR
    FROM SALES
    GROUP BY PRODUCT_ID
)
SELECT P.PRODUCT_ID, SP.FIRST_YEAR, S.QUANTITY, S.PRICE
FROM SALES S
JOIN PRODUCT P
ON S.PRODUCT_ID = P.PRODUCT_ID
JOIN SALEPRODUCT SP
ON SP.PRODUCT_ID = S.PRODUCT_ID AND S.YEAR = SP.FIRST_YEAR;