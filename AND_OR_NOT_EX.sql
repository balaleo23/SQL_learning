
-- we can use arithmetic symbols in the where clause itself
SELECT order_id , product_id , quantity, unit_price
, (unit_price * quantity) as 'total_price' 
FROM 
order_items

WHERE order_id = '6' and unit_price*quantity > 30
 