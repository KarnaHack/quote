USE quote_db;

CREATE TABLE users(
    id INT primary key Auto increment,
     name varchar(255),
    email varchar(255),
    password varchar(255),
    created_at TIMESTAMP
);