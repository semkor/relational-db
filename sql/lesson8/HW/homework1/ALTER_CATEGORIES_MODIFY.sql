USE database_name;

--обновите длину поля Picture в таблице Categories до 100 символов
ALTER TABLE CATEGORIES
MODIFY PICTURE VARCHAR(100);