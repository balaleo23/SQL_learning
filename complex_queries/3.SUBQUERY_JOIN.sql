-- find the customers who orders lettuce 
-- SELECT customer _id , first_name, last_name

USE sql_store;
SELECT customer_id , first_name, last_name from customers WHERE customer_id in
(
SELECT customer_id FROM 
orders 
join 
order_items using (order_id)  
where product_id =3 )