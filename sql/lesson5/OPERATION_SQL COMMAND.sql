--OPERATION
        -- GROUP BY, ORDER BY, EXISTS, BETWEEN, LIKE
--FUNCTION
        -- COUNT, MIN, MAX, SUM, AVG
--------------------------------------------------------------------------------------------------------------

--FUNCTION
SELECT MIN(PRICE) FROM ORDERS;
SELECT MAX(PRICE) FROM ORDERS;
SELECT SUM(PRICE) FROM ORDERS;
SELECT AVG(PRICE) FROM ORDERS;


SELECT COUNT(PRICE) FROM ORDERS;
SELECT COUNT(*) FROM ORDERS;

SELECT COUNT(*) FROM ORDERS
WHERE PRICE>220;


--GROUP BY
    --SELECT  - colum 1, colum 2 - FROM table_name
    --WHERE conditions
    --GROUP BY column_name

SELECT PRODUCT_NAME FROM ORDERS
GROUP BY PRODUCT_NAME;

SELECT PRODUCT_NAME,SUM(PRICE) FROM ORDERS
GROUP BY PRODUCT_NAME;

SELECT PRODUCT_NAME,AVG(PRICE) FROM ORDERS
GROUP BY PRODUCT_NAME;

SELECT PRODUCT_NAME,MIN(PRICE) FROM ORDERS;
SELECT PRODUCT_NAME,MAX(PRICE) FROM ORDERS;


--ORDER BY
SELECT PRODUCT_NAME,PRICE FROM ORDERS
ORDER BY PRODUCT_NAME ASC;

SELECT PRODUCT_NAME,PRICE FROM ORDERS
ORDER BY PRODUCT_NAME DESC;

SELECT * FROM ORDERS
ORDER BY PRICE DESC;


--EXIST
    --SELECT  - colum 1, colum 2 - FROM table_name
    --WHERE conditions AND EXISTS (SELECT -column1, column2 - FROM table_name
    --WHERE conditions)

SELECT * FROM ORDERS
WHERE EXISTS(SELECT * FROM PRODUCT WHERE NAME = ORDERS.PRODUCT_NAME);

SELECT * FROM ORDERS
WHERE EXISTS(SELECT * FROM PRODUCT WHERE COST_PRICE > ORDERS.PRICE);

SELECT * FROM ORDERS
WHERE EXISTS(SELECT * FROM PRODUCT WHERE NAME = ORDERS.PRODUCT_NAME AND COST_PRICE > ORDERS.PRICE);


--BETWEEN
SELECT * FROM ORDERS WHERE PRICE BETWEEN 40 AND 240;
SELECT * FROM ORDERS WHERE DATE_CONFIRMED BETWEEN DATE('2020-01-22') AND DATE('2021-12-31');


--LIKE
    --SELECT * FROM table_name WHERE conditions AND/OR column_name LIKE 'pattern';
SELECT * FROM ORDERS WHERE PRODUCT_NAME LIKE 'm%';
SELECT * FROM ORDERS WHERE PRODUCT_NAME LIKE '%n';
SELECT * FROM ORDERS WHERE PRODUCT_NAME LIKE '%bs%';