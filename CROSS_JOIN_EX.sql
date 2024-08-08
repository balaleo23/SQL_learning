-- Do a cross join between shippers and products
-- using the implicit Syntax
-- and then using the explicit syntax
USE sql_store;
SELECT * FROM products , shippers
ORDER BY shipper_id;

SELECT * 
FROM products p 
CROSS JOIN shippers sh
ORDER BY p.name