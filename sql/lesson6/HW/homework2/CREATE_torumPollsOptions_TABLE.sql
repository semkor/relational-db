USE database_name;

CREATE TABLE torumPollsOptions (
    id INT,
    CONSTRAINT torumPollsOptionsId PRIMARY KEY (id),
    idPosts INT,
        CONSTRAINT posts_FK FOREIGN KEY (idPosts) REFERENCES torumPosts(id),
    title VARCHAR(64),
    datePolls TIMESTAMP
);