-- orderdate order id  first name  shipper  status 
-- we will including every table in the order even if the shipper doesnt exist


SELECT 
o.order_date , o.order_id , c.first_name , s.name, os.name
FROM orders o 
JOIN customers c
ON o.customer_id = c.customer_id
LEFT JOIN shippers s
ON o.shipper_id = s.shipper_id
JOIN order_statuses os
ON o.status = os.order_status_id
ORDER BY O.order_id