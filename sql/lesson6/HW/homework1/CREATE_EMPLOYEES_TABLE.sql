USE database_name;

CREATE TABLE EMPLOYEES (
    ID INT,
    CONSTRAINT EMPLOYEES_ID PRIMARY KEY (ID),
    LAST_NAME VARCHAR(20) NOT NULL,
    FIRST_NAME VARCHAR(20) NOT NULL,
    TITLE VARCHAR(20),
    TITLE_OF_COURTESY VARCHAR(20),
    BIRTH_DATE DATE,
    HIRE_DATE  DATE,
    ADDRESS VARCHAR(20),
    CITY    VARCHAR(20),
    REGION  VARCHAR(50),
    POSTAL_CODE VARCHAR(20),
    COUNTRY VARCHAR(20),
    HOME_PHONE  VARCHAR(20),
    EXSTENTION  VARCHAR(20),
    PHOTO   BLOB,
    NOTES   LONGTEXT,
    REPORTS_TO  LONGTEXT
);