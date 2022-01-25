USE database_name;

-- cоздаем таблицы
CREATE TABLE SALESMAN (
    SALESMAN_ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    COMISSION DOUBLE(5,2) DEFAULT '0.1'
);

CREATE TABLE CUSTOMER (
    CUSTOMER_ID INT PRIMARY KEY,
    CUSTNAME VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    SALESMAN_ID INT,
        CONSTRAINT SALESMAN_FK FOREIGN KEY (SALESMAN_ID) REFERENCES SALESMAN(SALESMAN_ID)
);

--заполняем таблицы
INSERT INTO SALESMAN VALUES (5001, 'James Hoog', 'New York',0.15);
INSERT INTO SALESMAN VALUES (5002, 'Nail Knite', 'Paris',0.13);
INSERT INTO SALESMAN VALUES (5005, 'Pit Alex', 'London',0.11);
INSERT INTO SALESMAN VALUES (5006, 'Mc Lyon', 'Paris',0.14);
INSERT INTO SALESMAN VALUES (5003, 'Lauson Hen', 'London',0.12);
INSERT INTO SALESMAN VALUES (5007, 'Andrew Wise', 'Nikosia',0.29);
INSERT INTO SALESMAN VALUES (5008, 'Some Salesman', 'Kiev',0.09);
INSERT INTO SALESMAN VALUES (5009, 'Denis Kokorin', 'Moskow',0.1);


INSERT INTO CUSTOMER VALUES (3002, 'Nick Rimando', 'New York',5001);
INSERT INTO CUSTOMER VALUES (3005, 'Graham Zusi', 'California',5002);
INSERT INTO CUSTOMER VALUES (3001, 'Brad Guzan', 'London',5005);
INSERT INTO CUSTOMER VALUES (3004, 'Fabian Johns', 'Paris',5006);
INSERT INTO CUSTOMER VALUES (3009, 'Geoff Camero', 'Berlin',5003);
INSERT INTO CUSTOMER VALUES (3008, 'Julian Green', 'London',5002);
INSERT INTO CUSTOMER VALUES (3007, 'Brad Davis', 'New York',5001);
INSERT INTO CUSTOMER VALUES (3003, 'Jozy Altido', 'Moscow',5007);
INSERT INTO CUSTOMER VALUES (3010, 'Misha Test', 'Kiev',null);

--простой поиск
SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN,CUSTOMER
WHERE SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID;



--выборка JOIN (перевод "cоединение")
        --SELECT
        --FROM
        --JOIN TABLE_NAME ON JOIN_CONDITION

--a)INNER JOIN (только совпадения в первой и второй таблице (INNER можно не указывать)
SELECT SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
INNER JOIN CUSTOMER ON SALESMAN.SALESMAN_ID = CUSTOMER.SALESMAN_ID;

SELECT SALESMAN.CITY,SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;


--б)LEFT (0UTER) JOIN - выводит совпадение и данные из левой таблицы
SELECT SALESMAN.CITY,SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
LEFT JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;


--в)RIGHT (0UTER) JOIN - выводит совпадение и данные из правой таблицы
SELECT SALESMAN.CITY,SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
RIGHT JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;


--г)FULL 0UTER JOIN - выводит совпадение и данные из левой и правой таблицы (в MySQL нет)
SELECT SALESMAN.CITY, SALESMAN.NAME, CUSTOMER.CUSTNAME
FROM SALESMAN
FULL OUTER JOIN CUSTOMER ON SALESMAN.CITY = CUSTOMER.CITY;