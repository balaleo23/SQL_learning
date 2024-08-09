-- GET invoices that are larger than the 
-- clients' average income 
SELECT * FROM invoices i
WHERE invoice_total >
		(
        SELECT avg (invoice_total) FROM 
        invoices
        WHERE client_id =   i.client_id) 