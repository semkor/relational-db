USE database_name;          -- в ORACLE не нужно указывать

--INSERT
INSERT INTO ORDERS
VALUES(1001,'tool222',140, ('2022-01-22T21:04:25'), ('2022-01-22 22:04:25'));   -- в ORACLE  TO_DATE('2022-01-22 21:04:25','yyyy/mm/dd hh24:mi:ss)

INSERT INTO ORDERS
VALUES(1002,'toy333',140, ('2022-01-22T21:04:25'), ('2022-01-22 22:04:25'));

INSERT INTO ORDERS
VALUES(1003,'smallcar000',140, ('2022-01-22T21:04:25'), ('2022-01-22 22:04:25'));

--SELECT
SELECT * FROM ORDERS
SELECT * FROM ORDERS WHERE  PRICE=140;
SELECT * FROM ORDERS WHERE  PRODUCT_NAME='toy333';
SELECT * FROM ORDERS WHERE  PRODUCT_NAME='toy333'  AND PRICE <200   AND PRICE>100;
SELECT * FROM ORDERS WHERE  PRODUCT_NAME='toy333'  OR PRICE <200;

--DELETE
DELETE FROM ORDERS;                 --- удаляет все данные из таблицы

DELETE FROM ORDERS
WHERE PRODUCT_NAME = 'toy333';      --- WHERE означает, что нужно удалить

DELETE FROM ORDERS
WHERE PRODUCT_NAME = 'oooooo';

--UPDATE
UPDATE ORDERS  SET PRICE = 230  WHERE ID = 1001;            --- SET - что поменять  WHERE - где поменять (ID - Primary key)
UPDATE ORDERS  SET PRICE = 250;                             --- поменяет  во всех строках
UPDATE ORDERS  SET PRODUCT_NAME = NULL  WHERE ID = 1001;