DELIMITER $$
CREATE PROCEDURE invoice_balance()
BEGIN
SELECT * FROM
invoices
WHERE invoice_total -payment_total >0 ;

END $$
DELIMITER ;

