DROP PROCEDURE IF EXISTS get_payments;
DELIMITER $$;
CREATE PROCEDURE get_payments (
	client_id INT,
    payment_method_id TINYINT
    )
    BEGIN
    SELECT * FROM payments pm
    WHERE pm.payment_method = IFNULL( payment_method_id,pm.payment_method)  AND 
		  pm.client_id =  IFNULL(client_id,pm.client_id  );
    END $$
    DELIMITER ;
	