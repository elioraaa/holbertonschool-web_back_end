-- script to create a trigger named 'reset_valid_email' that sets the 'valid_email' column to 0 when the 'email' column is updated
DELIMITER $$

CREATE TRIGGER reset_valid_email
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END$$

DELIMITER ;