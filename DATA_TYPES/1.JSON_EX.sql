USE sql_store;
UPDATE products
SET properties = 
JSON_OBJECT(
'weight', 10,
'dimension', JSON_ARRAY(1,2,3),
'Manufacture', JSON_OBJECT('name',	'sony')

)
-- this is the same version without using json function
-- '
-- {
-- "dimension" : [1,2,4],
-- "weight": 10,
-- "Manufacture": { "name":"sony"} 
-- }
-- '
WHERE product_id = 2;