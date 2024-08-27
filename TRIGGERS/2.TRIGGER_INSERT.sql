
DELIMITER $$
DROP TRIGGER IF EXISTS payments_after_insert; -- this get triggered after the payment table get inserted

CREATE TRIGGER payments_after_insert
	AFTER INSERT ON payments
    FOR EACH ROW
BEGIN
	UPDATE invoices 
    SET payment_total = payments_total + NEW.amount
    WHERE invoice_id = NEW.invoice_id;
    
    INSERT INTO payment_audit
    values(NEW.client_id, NEW.date, NEW.amount , 'Insert' , NOW());    

END $$

DELIMITER ;
