-- "product_id name quantity" from order_items we included every product even that is not ordered
USE sql_store;
SELECT p.product_id , p.name , o.quantity 
FROM products p
LEFT JOIN order_items o
ON p.product_id = o.product_id	