CREATE TABLE AUTHOR(
    ID INT,
    CONSTRAINT AUTHOR_PK PRIMARY KEY (ID),
    -- CONSTRAINT    CONS-NAME    CONSTRAINT TYPE    (COLUMN NAME)
    NAME VARCHAR(50) NOT NULL,
    LAST_NAME VARCHAR(50) UNIQUE,
    COUNTRY VARCHAR(50) DEFAULT 'ENGLAND',
    AGE INT DEFAULT 0,
    ARTICLES_COUNT INT CHECK(ARTICLES_COUNT > 10),
    CONSTRAINT CHECK_COUNTRY CHECK (COUNTRY != 'CHINA' AND LAST_NAME != 'TEST_LN')
    );
/*  a. сложные CONSTRAINT (ограничения)
            - PRIMARY KEY  -  должно быть уникальное значение данных
            - FOREIGN KEY
            - INDEX
    б. простые CONSTRAINT
            - NOT NULL      -  не может быть null
            - UNIQUE        -  уникальное значение
            - CHECK         -  вносит в таблицу, если выполняются заданные условия
            - DEFAULT       -  задает значение по умолчанию, если не указано
 */