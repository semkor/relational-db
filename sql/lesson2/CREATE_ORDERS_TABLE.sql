CREATE TABLE ORDERS(
--COLUMN NAME    COLUMN TYPE   OPTIONAL PARAMS
     ID INT,                                    -- в ORACLE вместо INT  - NUMBER
     CONSTRAINT ORDERS_ID PRIMARY KEY (ID),
     PRODUCT_NAME  VARCHAR(20),                 -- в ORACLE вместо VARCHAR  - NVARCHAR2
     PRICE INT,                                 -- в ORACLE вместо INT  - NUMBER
     DATE_ORDERED TIMESTAMP,
     DATE_CONFIRMED TIMESTAMP
);