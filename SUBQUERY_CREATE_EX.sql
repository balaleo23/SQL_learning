-- copy the invoice copy table instead of client id we need the name of the column and payment status is not null
USE sql_invoicing;
CREATE TABLE invoices_archived AS
SELECT  
i.invoice_id,
c.name,
i.number,
i.invoice_total,
i.due_date,
i.payment_date
FROM invoices i
JOIN clients c
USING (client_id) 
WHERE i.payment_date IS NOT NULL 
