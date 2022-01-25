USE database_name;

CREATE TABLE torumSubcategories (
    id INT,
    CONSTRAINT torumSubcategoriesId PRIMARY KEY (id),
    idCategory INT,
        CONSTRAINT categories_FK FOREIGN KEY (idCategory) REFERENCES torumCategories(id),
    title VARCHAR(45),
    descriptionNew TEXT,
    dateSubcat TIMESTAMP,
    ip VARCHAR(20)
);