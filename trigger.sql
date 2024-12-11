-- TRIGGER --

DELIMITER |
CREATE TRIGGER assert_books_insert
BEFORE INSERT ON project.BOOKS
FOR EACH ROW
BEGIN
	IF NEW.stock < 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot insert negative stock!';
	END IF;
END|

CREATE TRIGGER assert_books_update
BEFORE UPDATE ON project.BOOKS
FOR EACH ROW
BEGIN
	IF NEW.stock < 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot update negative stock!';
	END IF;
END|

CREATE TRIGGER order_book
AFTER INSERT ON project.ORDERDETAILS
FOR EACH ROW
BEGIN
	UPDATE project.BOOKS
    SET stock = stock - NEW.quantity_ordered
    WHERE book_id = NEW.book_id;
    
    IF (SELECT stock FROM project.BOOKS WHERE book_id = NEW.book_id) < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'We ran out of books!';
    END IF;
END|

CREATE TRIGGER cancel_order_book
BEFORE DELETE ON project.ORDERDETAILS
FOR EACH ROW
BEGIN
	UPDATE project.BOOKS
    SET stock = stock + OLD.quantity_ordered
    WHERE book_id = OLD.book_id;
END|

DELIMITER ;