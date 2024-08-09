-- complex_queries
-- find the employess who more than average
USE sql_hr;
SELECT * FROM employees WHERE salary >
(SELECT avg(salary)  FROM employees)