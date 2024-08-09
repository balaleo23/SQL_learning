-- find the clients without invoices
USE sql_invoicing;
SELECT * FROM clients where client_id not in 
(SELECT DISTINCT client_id FROM invoices)