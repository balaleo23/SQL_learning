USE sql_store;
SELECT customer_id, first_name , points, 'GOLD' as type
FROM customers
WHERE points > 3000 
UNION
SELECT customer_id, first_name , points, 'BRONZE' as type
FROM customers
WHERE points < 2000
UNION
SELECT customer_id, first_name , points, 'SILVER' as type
FROM customers
WHERE points > 2000 and points < 3000 ORDER BY first_name;