SELECT *
FROM 
customers
WHERE (address like '%TRAIL%' or address like '%AVENUE%');

SELECT *
FROM 
customers 
WHERE phone like '%9' 
