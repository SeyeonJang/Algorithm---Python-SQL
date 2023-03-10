-- 코드를 입력하세요
SELECT
    P.PRODUCT_ID,
    P.PRODUCT_NAME,
    (SUM(O.AMOUNT) * P.PRICE) AS 'TOTAL_SALES'
FROM FOOD_PRODUCT P
JOIN FOOD_ORDER O ON P.PRODUCT_ID = O.PRODUCT_ID
where O.PRODUCE_DATE like '2022-05-%'
group by P.PRODUCT_ID
order by (SUM(O.AMOUNT) * P.PRICE) desc, PRODUCT_ID asc;