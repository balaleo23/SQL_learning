-- sort order based on the total price with order id =2 catch is we have to find the totalprice with quantity and per unit price

SELECT * 
FROM order_items 
WHERE order_id = 2 
ORDER BY (quantity* unit_price) DESC;


SELECT * ,(quantity* unit_price) as 'TOTAL_PRICE'
FROM order_items 
WHERE order_id = 2 
ORDER BY TOTAL_PRICE  DESC;


