-- STORED PROCEDURE --

DELIMITER |

CREATE PROCEDURE showAuthors ()
BEGIN
	SELECT * FROM project.AUTHORS;
END|

CREATE PROCEDURE calculateTotal (
	IN input_order_id INT,
    OUT total INT
)
BEGIN
	SET total = (SELECT SUM(quantity_ordered * price_each) FROM orderdetails WHERE order_id = input_order_id);
END|

DELIMITER ;
