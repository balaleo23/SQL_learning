
-- using all keyword to check the subquery which has returned the list of items

use sql_invoicing;
SELECT * 
FROM invoices WHERE invoice_total > ALL(
SELECT invoice_total FROM invoices
WHERE client_id = 3
)
