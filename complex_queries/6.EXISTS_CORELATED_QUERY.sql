-- find the products that never been ordered

USE sql_store;
SELECT * FROM products pi WHERE NOT EXISTS (
SELECT product_id FROM order_items WHERE product_id = pi.product_id)
