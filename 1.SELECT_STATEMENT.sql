USE sql_store ;

-- order of the classes is matter we can use select 1, 2 which will return 1 2
SELECT * 
FROM customers
-- WHERE customer_id = 1
ORDER BY first_name