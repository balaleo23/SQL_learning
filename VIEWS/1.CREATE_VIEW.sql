CREATE 
VIEW `sql_invoicing`.`client_balance` AS
    SELECT 
        `c`.`client_id` AS `client_id`,
        `c`.`name` AS `name`,
        SUM((`iv`.`invoice_total` - `iv`.`payment_total`)) AS `Balance`
    FROM
        (`sql_invoicing`.`clients` `c`
        JOIN `sql_invoicing`.`invoices` `iv` ON ((`c`.`client_id` = `iv`.`client_id`)))
    GROUP BY `c`.`client_id`