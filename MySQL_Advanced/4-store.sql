-- script to create a trigger named 'decrease_item_quantity' that decreases the quantity of an item in the 'items' table after an order is inserted into the 'orders' table
DELIMITER $$

CREATE TRIGGER decrease_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
    UPDATE items
    SET quantity = quantity - NEW.quantity
    WHERE name = NEW.item_name;
END$$

DELIMITER ;