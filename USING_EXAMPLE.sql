-- payment date, client, amount , payment_method
SELECT 
p.date as Date, c.name , p.amount , pm.name
FROM payments p
JOIN clients c
USING (client_id)
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id