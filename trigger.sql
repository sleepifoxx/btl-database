-- TRIGGER --
USE project;

-- This trigger ensures that the stock of a book does not become negative --
DELIMITER |
CREATE TRIGGER assert_books_insert
BEFORE INSERT ON BOOKS
FOR EACH ROW
BEGIN
	IF NEW.stock < 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot insert negative stock!';
	END IF;
END|
DELIMITER ;


-- This trigger ensures that any changes made to a book's stock don't make it negative --
DELIMITER |
CREATE TRIGGER assert_books_update
BEFORE UPDATE ON BOOKS
FOR EACH ROW
BEGIN
	IF NEW.stock < 0 THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'We ran out of books!';
	END IF;
END|
DELIMITER ;


-- This trigger ensures that the stock is updated correctly after each order -- 
DELIMITER |
CREATE TRIGGER order_book
BEFORE INSERT ON ORDERDETAILS
FOR EACH ROW
BEGIN
	-- If the order_id can't be found, raise an error --
	IF NOT EXISTS (SELECT order_id FROM ORDERS WHERE order_id = NEW.order_id) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error! Your order could not be found!';
	END IF;
    
    -- If the book_id can't be found, raise an error --
    IF NOT EXISTS (SELECT book_id FROM BOOKS WHERE book_id = NEW.book_id) THEN
		SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error! Your requested book is not found in the database!';
	END IF;
    
    -- Otherwise, update its stock --
	UPDATE BOOKS
    SET stock = stock - NEW.quantity_ordered
    WHERE book_id = NEW.book_id;
END|
DELIMITER ;


-- This trigger ensures that in case an user cancels an order, the stock is correctly updated --
DELIMITER |
CREATE TRIGGER cancel_order_book
BEFORE DELETE ON ORDERDETAILS
FOR EACH ROW
BEGIN
	-- Update these books' stock -- 
	UPDATE BOOKS
    SET stock = stock + OLD.quantity_ordered
    WHERE book_id = OLD.book_id;
END|
DELIMITER ;