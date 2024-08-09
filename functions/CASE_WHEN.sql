SELECT CONCAT(first_name, " ", last_name ) as Customer, points,
CASE 
	WHEN points > 3000 THEN 'GOLD'
    WHEN points >2000 and points < 3000 THEN 'SILVER'
    WHEN points < 2000 THEN 'BRONZE'
    END
    AS Category 
FROM 
customers ORDER BY points DESC