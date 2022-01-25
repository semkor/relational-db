USE database_name;

CREATE TABLE usersNew (
    id INT,
    CONSTRAINT usersId PRIMARY KEY (id),
    nick VARCHAR(16),
    passwords VARCHAR(128),
    email VARCHAR(128),
    dateUsers TIMESTAMP,
    karma FLOAT(9,2),
    ip VARCHAR(20)
);