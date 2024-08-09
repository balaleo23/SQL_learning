use sql_store;
SELECT *,IFNULL(comments, "Not Typed") FROM orders;
SELECT *,COALESCE(comments, shipper_id , "Not Typed") FROM orders