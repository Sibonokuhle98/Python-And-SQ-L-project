--1.1
SELECT ci.client_id, ci.client_name, c.department
FROM Client_info ci
INNER JOIN Company c
ON ci.client_id = c.client_id;


--'1.2'
'A LEFT JOIN'
SELECT*
FROM Client_info ci
LEFT JOIN Company c
ON ci.client_id = c.client_id;


--'1.3.1'
SELECT e.employee_name, m.employee_name AS manager_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id;

/*1.3.2
'Pieter is the boss'
*/