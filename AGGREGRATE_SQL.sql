USE sql_invoicing;
SELECT 
'FIRST HALF ' as date_range,
SUM(invoice_total) as total_sales,
SUM(payment_total) as total_payments,
sum(invoice_total - payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' and '2019-06-30' 
UNION
SELECT 
'SECOND HALF ' as date_range,
SUM(invoice_total) as total_sales,
SUM(payment_total) as total_payments,
sum(invoice_total - payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' and '2019-12-31' 
UNION
SELECT 
'TOTAL ' as date_range,
SUM(invoice_total) as total_sales,
SUM(payment_total) as total_payments,
sum(invoice_total - payment_total) as what_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' and '2019-12-31' ;



