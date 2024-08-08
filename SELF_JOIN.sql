USE sql_hr;

SELECT e.employee_id , e.first_name , e.last_name, e.job_title , m.last_name as "Manager" 
FROM sql_hr.employees e
JOIN employees m
on e.reports_to = m.employee_id