USE sql_invoicing;
SELECT pm.name, sum(amount) as total FROM payments p
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id
group by pm.name WITH ROLLUP
