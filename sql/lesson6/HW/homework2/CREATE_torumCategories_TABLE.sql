USE database_name;

CREATE TABLE torumCategories (
    id INT,
    CONSTRAINT torumCategoriesId PRIMARY KEY (id),
    title VARCHAR(64),
    descriptionCat TEXT,
    dateCat TIMESTAMP,
    ip VARCHAR(20)
);