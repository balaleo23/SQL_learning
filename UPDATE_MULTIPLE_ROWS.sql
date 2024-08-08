-- query statement to update before 1990 give extra 50 points 
UPDATE customers 
SET points = points+50
WHERE birth_date < '1990-01-01'