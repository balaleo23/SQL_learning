-- selecting the products which got ordered and classifying by no of times it got ordered
SELECT product_id, 
name,
count(*) AS orders,
IF(count(*) >1 , 'Many_times', 'once')
 AS FREQUENCY FROM products 
JOIN order_items
USING (product_id)
group by product_id, name