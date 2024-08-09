-- client_id , name , total_sales , average , difference
USE sql_invoicing;
SELECT * FROM (SELECT 
	client_id, name, 
	(SELECT SUM(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id  ) AS SUM_TOTAL
	, (SELECT avg(invoice_total) FROM invoices) AS AVG_TOTAL ,
    (SELECT (SUM_TOTAL - AVG_TOTAL)) AS DIFF
    FROM clients c
    ) AS summary WHERE sum_total is NOT null
    