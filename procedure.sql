-- STORED PROCEDURE --

USE project;

-- A demo procedure to show all the authors -- 
DELIMITER |
CREATE PROCEDURE showAuthors ()
BEGIN
	SELECT * FROM AUTHORS;
END|
DELIMITER ;


-- A procedure to calculate total value of an order based on the order_id --
DELIMITER |
CREATE PROCEDURE calculateTotal (
	IN input_order_id INT,
    OUT total INT
)
BEGIN
	SET total = 
    (SELECT SUM(quantity_ordered * price_each) 
    FROM ORDERDETAILS 
    WHERE order_id = input_order_id);
END|
DELIMITER ;
