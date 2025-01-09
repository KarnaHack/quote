CREATE TABLE reviews(
    review_id varchar(255) PRIMARY KEY,
    user_id int not null,
    book_id int not null,
    comment LONGTEXT,

    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
    
);

DELIMITER //

CREATE TRIGGER before_insert_reviews
BEFORE INSERT ON reviews
FOR EACH ROW
BEGIN
    SET NEW.review_id = CONCAT('rev', UUID());
END;

//

DELIMITER ;