USE database_name;

--добавляет в таблицу Customers колонки IS_ACTIVE, которая должна принимать одно из двух значений 0 или 1 и не быть пустой
ALTER TABLE CUSTOMERS
ADD IS_ACTIVE BOOLEAN NOT NULL;