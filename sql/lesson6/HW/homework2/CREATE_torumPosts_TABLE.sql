USE database_name;

CREATE TABLE torumPosts (
    id INT,
    CONSTRAINT torumPostsId PRIMARY KEY (id),
    idSubcategory INT,
        CONSTRAINT subcategory_FK FOREIGN KEY (idSubcategory) REFERENCES torumSubcategories(id),
    idUser INt,
        CONSTRAINT users_FK FOREIGN KEY (idUser) REFERENCES usersNew(id),
    parentPost INT,
        CONSTRAINT parentPost_FK FOREIGN KEY (parentPost) REFERENCES torumPosts(id),
    title VARCHAR(90),
    contentNew TEXT,
    isPoll BOOLEAN,
    datePosts TIMESTAMP,
    ip VARCHAR(20)
);
