-- date payment method total payment for each date

SELECT 
	date,  
    pm.name, 
    sum(amount) AS total_payments 
from payments p
JOIN payment_methods pm
ON p.payment_method = pm.payment_method_id
group by date , payment_method 
ORDER BY date	