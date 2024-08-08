USE sql_store ;
SELECT o.customer_id, c.first_name ,SUM(oi.quantity* oi.unit_price) AS Total_payment , c.state   FROM orders o
JOIN order_items oi
USING (order_id)
JOIN customers c
using (customer_id)
WHERE c.state = 'VA' 
GROUP BY c.customer_id, c.state , c.first_name
HAVING Total_payment > 100
