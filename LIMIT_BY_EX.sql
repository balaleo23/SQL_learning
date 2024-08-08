-- TOP THREE LOYAL CUSTOMERS LIMIT BY

SELECT * 
FROM 
customers
order by points DESC
limit 3