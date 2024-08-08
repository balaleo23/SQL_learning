-- update the comment section of the order where customer has points more than 3000 
-- Self-Referencing Subquery: When you write an UPDATE statement that includes a subquery referencing the same table, MySQL cannot guarantee the correctness of the operation. For example, in your original query:
-- UPDATE orders 
-- SET comments = 'Gold Customer'
-- WHERE customer_id IN (
-- SELECT c.customer_id
-- FROM orders o
-- JOIN customers c
-- ON o.customer_id = c.customer_id
-- WHERE points > 3000)

UPDATE orders 
SET comments = 'Gold Customer'
WHERE customer_id IN (
SELECT * FROM customers
WHERE points > 3000)

