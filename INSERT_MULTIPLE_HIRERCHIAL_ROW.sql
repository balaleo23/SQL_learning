USE sql_store;
INSERT INTO orders (customer_id,order_date,status)
VALUES (2,'2019-01-02',1);
INSERT INTO order_items 
VALUES (last_insert_id(),1, 1, 2.97),
		(last_insert_id(),9,9,13.98)